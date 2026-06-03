-- =============================================================================
-- BRONZE LAYER: Raw Data Loading Pipeline
-- =============================================================================

-- CRM: Customer Info
TRUNCATE TABLE bronze.crm_cust_info;
\copy bronze.crm_cust_info FROM 'datasets/source_crm/cust_info.csv' WITH (FORMAT csv, HEADER true);

-- CRM: Product Info
TRUNCATE TABLE bronze.crm_prd_info;
\copy bronze.crm_prd_info FROM 'datasets/source_crm/prd_info.csv' WITH (FORMAT csv, HEADER true);

-- CRM: Sales Details
TRUNCATE TABLE bronze.crm_sales_details;
\copy bronze.crm_sales_details FROM 'datasets/source_crm/sales_details.csv' WITH (FORMAT csv, HEADER true);

-- ERP: Customer Data (CUST_AZ12)
TRUNCATE TABLE bronze.erp_cust_az12;
\copy bronze.erp_cust_az12 FROM 'datasets/source_erp/CUST_AZ12.csv' WITH (FORMAT csv, HEADER true);

-- ERP: Location Info (LOC_A101)
TRUNCATE TABLE bronze.erp_loc_a101;
\copy bronze.erp_loc_a101 FROM 'datasets/source_erp/LOC_A101.csv' WITH (FORMAT csv, HEADER true);

-- ERP: Product Category (PX_CAT_G1V2)
TRUNCATE TABLE bronze.erp_px_cat_g1v2;
\copy bronze.erp_px_cat_g1v2 FROM 'datasets/source_erp/PX_CAT_G1V2.csv' WITH (FORMAT csv, HEADER true);
