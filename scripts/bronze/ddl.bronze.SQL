create database DataWarehouse; 
use Datawarehouse; 
create schema bronze; 
create schema silver; 
create schema gold; 

-- DDL for Tables --
DROP TABLE IF EXISTS bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info(
	cst_id INT,
	cst_key NVARCHAR (50),
	cst_firstname NVARCHAR (50) ,
	cst_lastname NVARCHAR (50) ,
	cst_material_status NVARCHAR (50) ,
	cst_gndr NVARCHAR (50) ,
	cst_create_date DATE);

DROP TABLE IF EXISTS bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
	pra_id INT,
	prd_key NVARCHAR ( 50) ,
	prd_nm NVARCHAR (50) ,
	prd_cost INT,
	prd_line NVARCHAR (50) ,
	prd_start_dt DATETIME,
	prd_end_dt DATETIME
) ;

DROP TABLE IF EXISTS bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
	s1s_ord_num NVARCHAR (50) ,
	s1s_pra_key NVARCHAR (50) ,
	s1s_cust_id INT,
	s1s_order_dt INT,
	s1s_ship_dt INT,
	s1s_due_dt INT,
	s1s_sales INT,
	sls_quantity INT,
	sls_price INT
);

DROP TABLE IF EXISTS bronze.erp_loc_a101;
CREATE TABLE bronze. erp_loc_a101 (
	cid NVARCHAR (50),
	cntry NVARCHAR (50)
);

DROP TABLE IF EXISTS bronze.erp_cust_az12;
CREATE TABLE bronze. erp_cust_az12 (
	cid NVARCHAR (50) ,
	bdate DATE,
	gen NVARCHAR (50)
);

DROP TABLE IF EXISTS bronze.erp_px_cat_g1v2;
CREATE TABLE bronze. erp_px_cat_g1v2 (
	id NVARCHAR ( 50),
	cat NVARCHAR ( 50) ,
	subcat NVARCHAR ( 50) ,
	maintenance NVARCHAR (50)
);


-- Data Load Scripts --
	
	TRUNCATE TABLE bronze.crm_cust_info; 

	LOAD DATA LOCAL INFILE '/Users/haojeremy/Desktop/DesktopOrganizer/Career/DATA/SQL/Baraa_warehouse/sql-data-warehouse-project/datasets/source_crm/cust_info.csv'
	INTO TABLE bronze.crm_cust_info
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;


	TRUNCATE TABLE bronze.crm_prd_info; 

	LOAD DATA LOCAL INFILE '/Users/haojeremy/Desktop/DesktopOrganizer/Career/DATA/SQL/Baraa_warehouse/sql-data-warehouse-project/datasets/source_crm/prd_info.csv'
	INTO TABLE bronze.crm_prd_info
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;


	TRUNCATE TABLE bronze.crm_sales_details; 

	LOAD DATA LOCAL INFILE '/Users/haojeremy/Desktop/DesktopOrganizer/Career/DATA/SQL/Baraa_warehouse/sql-data-warehouse-project/datasets/source_crm/sales_details.csv'
	INTO TABLE bronze.crm_sales_details
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;


	TRUNCATE TABLE bronze.erp_cust_az12; 

	LOAD DATA LOCAL INFILE '/Users/haojeremy/Desktop/DesktopOrganizer/Career/DATA/SQL/Baraa_warehouse/sql-data-warehouse-project/datasets/source_erp/CUST_AZ12.csv'
	INTO TABLE bronze.erp_cust_az12
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;


	TRUNCATE TABLE bronze.erp_loc_a101; 

	LOAD DATA LOCAL INFILE '/Users/haojeremy/Desktop/DesktopOrganizer/Career/DATA/SQL/Baraa_warehouse/sql-data-warehouse-project/datasets/source_erp/LOC_A101.csv'
	INTO TABLE bronze.erp_loc_a101
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;


	TRUNCATE TABLE bronze.erp_px_cat_g1v2; 

	LOAD DATA LOCAL INFILE '/Users/haojeremy/Desktop/DesktopOrganizer/Career/DATA/SQL/Baraa_warehouse/sql-data-warehouse-project/datasets/source_erp/PX_CAT_G1V2.csv'
	INTO TABLE bronze.erp_px_cat_g1v2
	FIELDS TERMINATED BY ','
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 LINES;

