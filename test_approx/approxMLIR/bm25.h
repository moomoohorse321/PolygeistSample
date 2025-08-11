#ifndef BM25_H
#define BM25_H
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>
#include <ctype.h> // For tolower


// --- BM25 Parameters ---
const double K1 = 1.5; // Typically between 1.2 and 2.0
const double B = 0.75; // Typically around 0.75

// --- Helper Struct for Ranking ---
typedef struct {
    int doc_index;
    double score;
} DocumentScore;

#endif