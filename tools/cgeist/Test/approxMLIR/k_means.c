// RUN: cgeist %s --function=kmeans_kernel -S > %s.mlir 

#include <math.h>
#include <stdlib.h>
#include <float.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <string.h>

// Euclidean distance between two points
double distance(double *point1, double *point2, int dim) {
    double sum = 0.0;
    for (int i = 0; i < dim; i++) {
        double diff = point1[i] - point2[i];
        sum += diff * diff;
    }
    return sqrt(sum);
}

// K-means clustering kernel
// points: array of data points [num_points x dim]
// centroids: array of centroids [k x dim]
// assignments: output array of cluster assignments [num_points]
// num_points: number of data points
// dim: dimensionality of the data
// k: number of clusters
// max_iters: maximum number of iterations
void kmeans_kernel(double **points, double **centroids, int *assignments, 
                  int num_points, int dim, int k, int max_iters) {
    int i, j, c, iter;
    int *cluster_sizes = (int *)malloc(k * sizeof(int));
    double **new_centroids = (double **)malloc(k * sizeof(double *));
    
    for (c = 0; c < k; c++) {
        new_centroids[c] = (double *)malloc(dim * sizeof(double));
    }
    
    // Main k-means loop
    #pragma scop
    for (iter = 0; iter < max_iters; iter++) {
        // Reset new centroids and cluster sizes
        for (c = 0; c < k; c++) {
            cluster_sizes[c] = 0;
            for (j = 0; j < dim; j++) {
                new_centroids[c][j] = 0.0;
            }
        }
        
        // Assign points to nearest centroid
        for (i = 0; i < num_points; i++) {
            double min_dist = DBL_MAX;
            int best_cluster = 0;
            
            for (c = 0; c < k; c++) {
                double dist = 0.0;
                for (j = 0; j < dim; j++) {
                    double diff = points[i][j] - centroids[c][j];
                    dist += diff * diff;
                }
                
                if (dist < min_dist) {
                    min_dist = dist;
                    best_cluster = c;
                }
            }
            
            // Assign point to cluster
            assignments[i] = best_cluster;
            cluster_sizes[best_cluster]++;
            
            // Update sum for centroid calculation
            for (j = 0; j < dim; j++) {
                new_centroids[best_cluster][j] += points[i][j];
            }
        }
        
        // Calculate new centroids
        for (c = 0; c < k; c++) {
            if (cluster_sizes[c] > 0) {
                for (j = 0; j < dim; j++) {
                    centroids[c][j] = new_centroids[c][j] / cluster_sizes[c];
                }
            }
        }
    }
    #pragma endscop
    
    // Free memory
    for (c = 0; c < k; c++) {
        free(new_centroids[c]);
    }
    free(new_centroids);
    free(cluster_sizes);
}

// Alternative implementation focusing on parallel opportunities
void kmeans_parallel(double **points, double **centroids, int *assignments, 
                   int num_points, int dim, int k, int max_iters) {
    int i, j, c, iter;
    
    // Main k-means loop
    #pragma scop
    for (iter = 0; iter < max_iters; iter++) {
        // Assignment phase
        for (i = 0; i < num_points; i++) {
            double min_dist = DBL_MAX;
            int best_cluster = 0;
            
            for (c = 0; c < k; c++) {
                double dist = 0.0;
                for (j = 0; j < dim; j++) {
                    double diff = points[i][j] - centroids[c][j];
                    dist += diff * diff;
                }
                
                if (dist < min_dist) {
                    min_dist = dist;
                    best_cluster = c;
                }
            }
            
            assignments[i] = best_cluster;
        }
        
        // Update phase - reset centroids
        for (c = 0; c < k; c++) {
            for (j = 0; j < dim; j++) {
                centroids[c][j] = 0.0;
            }
        }
        
        // Count points in each cluster
        int cluster_sizes[k];
        for (c = 0; c < k; c++) {
            cluster_sizes[c] = 0;
        }
        
        for (i = 0; i < num_points; i++) {
            int cluster = assignments[i];
            cluster_sizes[cluster]++;
            
            for (j = 0; j < dim; j++) {
                centroids[cluster][j] += points[i][j];
            }
        }
        
        // Normalize centroids
        for (c = 0; c < k; c++) {
            if (cluster_sizes[c] > 0) {
                for (j = 0; j < dim; j++) {
                    centroids[c][j] /= cluster_sizes[c];
                }
            }
        }
    }
    #pragma endscop
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
    int use_parallel = 0;
    
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
        } else if (strcmp(argv[i], "-p") == 0) {
            use_parallel = 1;
        } else if (strcmp(argv[i], "-h") == 0) {
            printf("Usage: %s [-n num_points] [-d dimensions] [-k clusters] [-i max_iterations] [-p]\n", argv[0]);
            printf("  -n num_points    : Number of data points (default: 1000)\n");
            printf("  -d dimensions    : Dimensionality of data (default: 2)\n");
            printf("  -k clusters      : Number of clusters (default: 5)\n");
            printf("  -i max_iterations: Maximum number of iterations (default: 20)\n");
            printf("  -p               : Use parallel version of k-means\n");
            printf("  -h               : Show this help message\n");
            return 0;
        }
    }
    
    printf("Running K-means with:\n");
    printf("  Points: %d\n", num_points);
    printf("  Dimensions: %d\n", dim);
    printf("  Clusters: %d\n", k);
    printf("  Max iterations: %d\n", max_iters);
    printf("  Version: %s\n", use_parallel ? "parallel" : "standard");
    
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
    
    if (use_parallel) {
        kmeans_parallel(points, centroids, assignments, num_points, dim, k, max_iters);
    } else {
        kmeans_kernel(points, centroids, assignments, num_points, dim, k, max_iters);
    }
    
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