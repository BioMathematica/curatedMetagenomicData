merged_eset <- function(assay_data, pheno_data, experiment_data) {
    data.matrix(assay_data) %>%
    ExpressionSet(., pheno_data, experimentData = experiment_data)
}
