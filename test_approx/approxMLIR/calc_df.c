#include "bm25.h"

int calculate_df(const char *term, const char **corpus, int num_docs) {
    if (term == NULL || corpus == NULL) return 0;

    int count = 0;
    char *lower_term = strdup(term); // Work with lowercase term
    if (!lower_term) return 0; // Allocation failed
    for (char *lt = lower_term; *lt; ++lt) *lt = tolower((unsigned char)*lt);

    for (int i = 0; i < num_docs; ++i) {
        char *doc_copy = strdup(corpus[i]); // Create a modifiable copy
        if (!doc_copy) continue; // Allocation failed, skip doc

        // Convert doc copy to lowercase
        for (char *p = doc_copy; *p; ++p) *p = tolower((unsigned char)*p);

        const char *p = doc_copy;
        size_t term_len = strlen(lower_term);
        int found_in_doc = 0;

         while ((p = strstr(p, lower_term)) != NULL) {
             int is_start = (p == doc_copy || !isalnum((unsigned char)*(p - 1)));
             int is_end = (*(p + term_len) == '\0' || !isalnum((unsigned char)*(p + term_len)));

             if (is_start && is_end) {
                 found_in_doc = 1;
                 break; // Found it once, no need to search more in this doc
             }
             p += term_len;
         }

        if (found_in_doc) {
            count++;
        }
        free(doc_copy);
    }
    free(lower_term);
    return count;
}