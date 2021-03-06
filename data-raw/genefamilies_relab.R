genefamilies_relab <- function(pheno_data, experiment_data, dataset_dir) {
    data_type <- "genefamilies_relab"
    pheno_order(pheno_data, dataset_dir, data_type) %>%
    assay_merge() %>%
    drop_rows() %>%
    fix_rownames() %>%
    fix_colnames(., data_type) %>%
    na_zero() %>%
    bodysite_eset(., pheno_data, experiment_data, dataset_dir, data_type)
}
