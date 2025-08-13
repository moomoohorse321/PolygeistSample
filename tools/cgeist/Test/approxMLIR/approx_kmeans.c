// RUN: cgeist -O0 %stdinclude %s -S > %s.mlir 
// RUN: cgeist -O0 %stdinclude %s -o %s.exec 

#include <math.h>
#include <stdlib.h>
#include <float.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

// Error knob 1: Distance calculation inner loop (loop perforation on dimensions)
double compute_squared_distance(double *point1, double *point2, int dim) {
    double sum = 0.0;
    for (int i = 0; i < dim; i++) {
        double diff = point1[i] - point2[i];
        sum += diff * diff;
    }
    return sum;
}

// Euclidean distance between two points
double distance(double *point1, double *point2, int dim) {
    return sqrt(compute_squared_distance(point1, point2, dim));
}

// Error knob 2: Find nearest centroid (loop perforation on centroids)
int find_nearest_centroid(double *point, double **centroids, int dim, int k) {
    double min_dist = DBL_MAX;
    int best_cluster = 0;
    
    for (int c = 0; c < k; c++) {
        double dist = compute_squared_distance(point, centroids[c], dim);
        
        if (dist < min_dist) {
            min_dist = dist;
            best_cluster = c;
        }
    }
    
    return best_cluster;
}

// Error knob 3: Accumulate point to centroid sum (loop perforation on dimensions)
void accumulate_point_to_centroid(double *point, double *centroid_sum, int dim) {
    for (int j = 0; j < dim; j++) {
        centroid_sum[j] += point[j];
    }
}

// Error knob 4: Assign all points to clusters (loop perforation on points)
void assign_points_to_clusters(double **points, double **centroids, int *assignments,
                               int *cluster_sizes, double **new_centroids,
                               int num_points, int dim, int k) {
    for (int i = 0; i < num_points; i++) {
        int best_cluster = find_nearest_centroid(points[i], centroids, dim, k);
        
        // Assign point to cluster
        assignments[i] = best_cluster;
        cluster_sizes[best_cluster]++;
        
        // Update sum for centroid calculation
        accumulate_point_to_centroid(points[i], new_centroids[best_cluster], dim);
    }
}

// Error knob 5: Update single centroid (loop perforation on dimensions)
void update_single_centroid(double *centroid, double *new_centroid, int cluster_size, int dim) {
    for (int j = 0; j < dim; j++) {
        centroid[j] = new_centroid[j] / cluster_size;
    }
}

// Error knob 6: Update all centroids (loop perforation on centroids)
void update_centroids(double **centroids, double **new_centroids, 
                     int *cluster_sizes, int k, int dim) {
    for (int c = 0; c < k; c++) {
        if (cluster_sizes[c] > 0) {
            update_single_centroid(centroids[c], new_centroids[c], cluster_sizes[c], dim);
        }
    }
}

// Error knob 7: Reset centroid sums for single centroid (loop perforation on dimensions)
void reset_single_centroid(double *new_centroid, int dim) {
    for (int j = 0; j < dim; j++) {
        new_centroid[j] = 0.0;
    }
}

// Error knob 8: Reset all centroid sums (loop perforation on centroids)
void reset_centroid_sums(double **new_centroids, int *cluster_sizes, int k, int dim) {
    for (int c = 0; c < k; c++) {
        cluster_sizes[c] = 0;
        reset_single_centroid(new_centroids[c], dim);
    }
}

// Error knob 9: Single k-means iteration (function substitution)
void kmeans_iteration(double **points, double **centroids, int *assignments,
                     int *cluster_sizes, double **new_centroids,
                     int num_points, int dim, int k) {
    // Reset new centroids and cluster sizes
    reset_centroid_sums(new_centroids, cluster_sizes, k, dim);
    
    // Assign points to nearest centroid
    assign_points_to_clusters(points, centroids, assignments, cluster_sizes, 
                             new_centroids, num_points, dim, k);
    
    // Calculate new centroids
    update_centroids(centroids, new_centroids, cluster_sizes, k, dim);
}

// Approximate version of kmeans_iteration (skips reset on even iterations)
void approx_kmeans_iteration(double **points, double **centroids, int *assignments,
                            int *cluster_sizes, double **new_centroids,
                            int num_points, int dim, int k) {
    static int iter_count = 0;
    
    // Only reset on odd iterations (skip half the resets)
    if (iter_count % 2 == 1) {
        reset_centroid_sums(new_centroids, cluster_sizes, k, dim);
    }
    iter_count++;
    
    // Assign points to nearest centroid
    assign_points_to_clusters(points, centroids, assignments, cluster_sizes, 
                             new_centroids, num_points, dim, k);
    
    // Calculate new centroids
    update_centroids(centroids, new_centroids, cluster_sizes, k, dim);
}

// Error knob 10: Main iteration loop (loop perforation to skip iterations)
void kmeans_main_loop(double **points, double **centroids, int *assignments,
                     int *cluster_sizes, double **new_centroids,
                     int num_points, int dim, int k, int max_iters) {
    for (int iter = 0; iter < max_iters; iter++) {
        kmeans_iteration(points, centroids, assignments, cluster_sizes, 
                        new_centroids, num_points, dim, k);
    }
}

// K-means clustering kernel
void kmeans_kernel(double **points, double **centroids, int *assignments, 
                  int num_points, int dim, int k, int max_iters) {
    int *cluster_sizes = (int *)malloc(k * sizeof(int));
    double **new_centroids = (double **)malloc(k * sizeof(double *));
    
    for (int c = 0; c < k; c++) {
        new_centroids[c] = (double *)malloc(dim * sizeof(double));
    }
    
    // Main k-means loop
    kmeans_main_loop(points, centroids, assignments, cluster_sizes, 
                    new_centroids, num_points, dim, k, max_iters);
    
    // Free memory
    for (int c = 0; c < k; c++) {
        free(new_centroids[c]);
    }
    free(new_centroids);
    free(cluster_sizes);
}

// Helper function to generate random data
void generate_random_data(double **points, double **centroids, int num_points, int dim, int k) {
    // Initialize random seed
    srand(time(NULL));
    
    // Generate random points
    for (int i = 0; i < num_points; i++) {
        for (int j = 0; j < dim; j++) {
            points[i][j] = (double)rand() / RAND_MAX * 100.0; // Random values between 0 and 100
        }
    }
    
    // Initialize centroids (randomly select k points)
    for (int i = 0; i < k; i++) {
        int idx = rand() % num_points;
        for (int j = 0; j < dim; j++) {
            centroids[i][j] = points[idx][j];
        }
    }
}

// Helper function to print results
void print_results(double **points, double **centroids, int *assignments, int num_points, int dim, int k) {
    printf("Final centroids:\n");
    for (int i = 0; i < k; i++) {
        printf("Centroid %d: (", i);
        for (int j = 0; j < dim; j++) {
            printf("%.2f", centroids[i][j]);
            if (j < dim - 1) printf(", ");
        }
        printf(")\n");
    }
    
    // Count points in each cluster
    int cluster_sizes[k];
    for (int i = 0; i < k; i++) {
        cluster_sizes[i] = 0;
    }
    
    for (int i = 0; i < num_points; i++) {
        cluster_sizes[assignments[i]]++;
    }
    
    printf("\nCluster sizes:\n");
    for (int i = 0; i < k; i++) {
        printf("Cluster %d: %d points\n", i, cluster_sizes[i]);
    }
    
    // Print first few points of each cluster
    printf("\nSample points from each cluster:\n");
    for (int c = 0; c < k; c++) {
        printf("Cluster %d samples:\n", c);
        int count = 0;
        for (int i = 0; i < num_points && count < 3; i++) {
            if (assignments[i] == c) {
                printf("  Point %d: (", i);
                for (int j = 0; j < dim; j++) {
                    printf("%.2f", points[i][j]);
                    if (j < dim - 1) printf(", ");
                }
                printf(")\n");
                count++;
            }
        }
    }
}

int main(int argc, char **argv) {
    // Default parameters
    int num_points = 1000;
    int dim = 2;
    int k = 5;
    int max_iters = 20;
    
    // Parse command-line arguments
    for (int i = 1; i < argc; i++) {
        if (strcmp(argv[i], "-n") == 0 && i+1 < argc) {
            num_points = atoi(argv[i+1]);
            i++;
        } else if (strcmp(argv[i], "-d") == 0 && i+1 < argc) {
            dim = atoi(argv[i+1]);
            i++;
        } else if (strcmp(argv[i], "-k") == 0 && i+1 < argc) {
            k = atoi(argv[i+1]);
            i++;
        } else if (strcmp(argv[i], "-i") == 0 && i+1 < argc) {
            max_iters = atoi(argv[i+1]);
            i++;
        } else if (strcmp(argv[i], "-h") == 0) {
            printf("Usage: %s [-n num_points] [-d dimensions] [-k clusters] [-i max_iterations]\n", argv[0]);
            printf("  -n num_points    : Number of data points (default: 1000)\n");
            printf("  -d dimensions    : Dimensionality of data (default: 2)\n");
            printf("  -k clusters      : Number of clusters (default: 5)\n");
            printf("  -i max_iterations: Maximum number of iterations (default: 20)\n");
            printf("  -h               : Show this help message\n");
            return 0;
        }
    }
    
    printf("Running K-means with:\n");
    printf("  Points: %d\n", num_points);
    printf("  Dimensions: %d\n", dim);
    printf("  Clusters: %d\n", k);
    printf("  Max iterations: %d\n", max_iters);
    
    // Allocate memory
    double **points = (double **)malloc(num_points * sizeof(double *));
    for (int i = 0; i < num_points; i++) {
        points[i] = (double *)malloc(dim * sizeof(double));
    }
    
    double **centroids = (double **)malloc(k * sizeof(double *));
    for (int i = 0; i < k; i++) {
        centroids[i] = (double *)malloc(dim * sizeof(double));
    }
    
    int *assignments = (int *)malloc(num_points * sizeof(int));
    
    // Generate random data
    generate_random_data(points, centroids, num_points, dim, k);
    
    // Run K-means algorithm
    clock_t start = clock();
    
    kmeans_kernel(points, centroids, assignments, num_points, dim, k, max_iters);
    
    clock_t end = clock();
    double time_spent = (double)(end - start) / CLOCKS_PER_SEC;
    
    printf("\nK-means completed in %.3f seconds\n", time_spent);
    
    // Print results
    print_results(points, centroids, assignments, num_points, dim, k);
    
    // Free memory
    for (int i = 0; i < num_points; i++) {
        free(points[i]);
    }
    free(points);
    
    for (int i = 0; i < k; i++) {
        free(centroids[i]);
    }
    free(centroids);
    free(assignments);
    
    return 0;
}