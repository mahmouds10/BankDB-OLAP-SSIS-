--Selecting SRC
use BankDB
select * from Account
select * from Loan
select * from Branch
select * from Payment

-- Selecting From STG
use STG_Bank
select * from STG_Account
select * from STG_Loan
select * from STG_Branch
select * from STG_Payment
select * from STG_Treasury_Products

--Selecting Dimensions
use DW_Bank
select * from DIM_Account
select * from DIM_Loan
select * from DIM_Branch
select * from DIM_Payment
select * from DIM_Treasury_Products

-- Selecting Facts
use DW_Bank
select * from FACT_LOAN
select * from FACT_Treasury_PRODUCT
select * from Payment_fact 