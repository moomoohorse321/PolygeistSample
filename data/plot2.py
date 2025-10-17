import pandas as pd
import matplotlib.pyplot as plt
import os

def get_tolerant_pareto(df: pd.DataFrame, performance_col: str = 'perf', accuracy_col: str = 'accuracy', tolerance: float = 0.00) -> pd.DataFrame:
    """
    Calculates the tolerant Pareto set based on the user's corrected dominance definition.

    A point 'i' is dominated if there exists any other point 'j' such that:
    1. The accuracy of 'j' is strictly greater than the accuracy of 'i'.
    2. The performance of 'j' is significantly better than 'i' (perf_j + tolerance_value < perf_i).

    The returned set contains all points that are not dominated by any other point.

    Args:
        df (pd.DataFrame): The input data with performance and accuracy columns.
        performance_col (str): The name of the performance column (lower is better).
        accuracy_col (str): The name of the accuracy column (higher is better).
        tolerance (float): The performance tolerance factor (e.g., 0.30 for 30%).

    Returns:
        pd.DataFrame: A dataframe containing the non-dominated points.
    """
    # Drop duplicates to prevent a point from being compared with itself in a different row
    df_unique = df.drop_duplicates(subset=[performance_col, accuracy_col]).reset_index(drop=True)
    # Calculate the absolute performance tolerance value based on the mean of the entire dataset
    mean_performance = df_unique[performance_col].mean()
    perf_tolerance_value = tolerance * mean_performance

    non_dominated_indices = []
    
    # For each point, check if it is dominated by any other point
    for i in range(len(df_unique)):
        point_i = df_unique.iloc[i]
        is_dominated = False
        
        for j in range(len(df_unique)):
            if i == j:
                continue
            
            point_j = df_unique.iloc[j]
            
            # Check if point_j dominates point_i using the tolerant condition
            if (point_j[accuracy_col] >= point_i[accuracy_col]) and \
               (point_j[performance_col] + perf_tolerance_value < point_i[performance_col]):
                is_dominated = True
                break  # Found a dominator, no need to check further
        
        if not is_dominated:
            non_dominated_indices.append(i)
            
    return df_unique.iloc[non_dominated_indices]

def main():
    """
    Main function to load data for multiple benchmarks, compute tolerant Pareto sets,
    and generate a grid of plots suitable for publication.
    """
    benchmarks = ["lavaMD", "kb", "bm25", "pagerank", "kmeans"]
    
    # --- Plotting Setup ---
    plt.style.use('seaborn-v0_8-whitegrid')
    # Create a 2x3 grid of subplots
    fig, axes = plt.subplots(2, 3, figsize=(18, 10))
    axes_flat = axes.flatten() # Flatten the 2D array of axes for easy iteration

    for i, benchmark_name in enumerate(benchmarks):
        ax = axes_flat[i]
        sota_path = os.path.join('sota', f'{benchmark_name}.csv')
        baseline_path = os.path.join('baseline', f'{benchmark_name}.csv')

        try:
            df_ours = pd.read_csv(sota_path)
            df_baseline = pd.read_csv(baseline_path)
            # 1. Round the accuracy for the baseline dataset to 2 decimal places
            df_baseline['accuracy'] = df_baseline['accuracy'].round(2)
        except FileNotFoundError as e:
            print(f"Warning: Could not find data for benchmark '{benchmark_name}'. Skipping. Details: {e}")
            ax.text(0.5, 0.5, f"Data not found for\n{benchmark_name}", ha='center', va='center', style='italic')
            continue

        # Calculate the tolerant Pareto set for each dataset
        tolerant_pareto_ours = get_tolerant_pareto(df_ours)
        tolerant_pareto_baseline = get_tolerant_pareto(df_baseline)

        # Identify the dominated (non-Pareto) points
        ours_merged = df_ours.merge(tolerant_pareto_ours, how='left', indicator=True)
        dominated_ours = ours_merged[ours_merged['_merge'] == 'left_only']
        
        baseline_merged = df_baseline.merge(tolerant_pareto_baseline, how='left', indicator=True)
        dominated_baseline = baseline_merged[baseline_merged['_merge'] == 'left_only']

        # Plot the dominated points first with high transparency
        ax.scatter(dominated_ours['accuracy'], dominated_ours['perf'], c='blue', s=50, alpha=0.15, zorder=1)
        ax.scatter(dominated_baseline['accuracy'], dominated_baseline['perf'], c='red', marker='X', s=50, alpha=0.15, zorder=1)

        # Plot the Pareto sets with connecting lines
        if not tolerant_pareto_ours.empty:
            pareto_ours_sorted = tolerant_pareto_ours.sort_values(by='accuracy')
            ax.plot(pareto_ours_sorted['accuracy'], pareto_ours_sorted['perf'],
                    color='blue', marker='o', markersize=8, linestyle='-',
                    label='approxMLIR', zorder=2, # Set zorder to 2
                    markeredgecolor='k', markeredgewidth=0.7)

        if not tolerant_pareto_baseline.empty:
            pareto_baseline_sorted = tolerant_pareto_baseline.sort_values(by='accuracy')
            ax.plot(pareto_baseline_sorted['accuracy'], pareto_baseline_sorted['perf'],
                    color='red', marker='X', markersize=8, linestyle='-',
                    label='Baseline', zorder=3, # Set zorder to 3 to be on top
                    markeredgecolor='k', markeredgewidth=0.7)

        ax.set_title(benchmark_name, fontsize=14)

    # --- Final Figure Formatting ---
    # Hide the last, unused subplot
    axes_flat[-1].axis('off')

    # Create a single, shared legend in the space of the unused subplot
    handles, labels = axes_flat[0].get_legend_handles_labels() # Get handles from a populated plot
    if handles:
        axes_flat[-1].legend(handles, labels, loc='center', fontsize=14, title="Configuration Set", title_fontsize='16')

    # Add shared axis labels for the entire figure
    fig.supxlabel('Accuracy (Higher is Better)', fontsize=16, y=0.04)
    fig.supylabel('Performance (Lower is Better)', fontsize=16, x=0.07)
    
    fig.tight_layout(rect=[0.08, 0.05, 1, 0.95]) # Adjust layout to make space for sup-labels

    # Save the plot to a file
    output_filename = 'rq2_multibenchmark_plot.png'
    plt.savefig(output_filename, dpi=300)
    print(f"Plot successfully saved as '{output_filename}'")


if __name__ == '__main__':
    main()

