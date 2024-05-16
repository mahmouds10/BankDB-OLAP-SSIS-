use STG_Bank
select * from STG_Account
select * from STG_Customers
select * from STG_Loan
select * from STG_Branch
select * from STG_Payment


use DW_Bank
select * from DIM_Account
select * from DIM_Customers
select * from DIM_Loan
select * from DIM_Branch
select * from FACT_LOAN
select * from FACT_Treasury_PRODUCT


SELECT schema_name(schema_id) AS SchemaName, name AS TableName
FROM sys.tables 

use STG_Bank
select * from STG_Treasury_Products

use BankDB
select * from Treasury_Products

use BankDB
select * from Account
select * from Customers
select * from Loan
select * from Branch
select * from Payment




use DW_Bank
select * from FACT_LOAN order by branch_id asc
select * from FACT_Treasury_PRODUCT ORDER BY product_id ASC
select * from Payment_fact ORDER BY branch_id asc




