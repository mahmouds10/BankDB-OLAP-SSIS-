use BankDB
create table Config_Table(
	table_name varchar (30),
	last_extract_date datetime
)

insert into Config_Table values ('Loan' , '1950-01-01')
insert into Config_Table values ('Account' , '1950-01-01')
insert into Config_Table values ('Customers' , '1950-01-01')
insert into Config_Table values ('Branch' , '1950-01-01')
insert into Config_Table values ('Payment' , '1950-01-01')
insert into Config_Table values ('Products' , '1950-01-01')

select * from BankDB.dbo.Config_Table
Delete from Config_Table

update BankDB.dbo.Config_Table set last_extract_date = '1950-01-01'


-- Update Loan dimension
alter table BankDB.dbo.Loan add Last_Update datetime
UPDATE BankDB.dbo.Loan SET Last_Update = '1951-12-12';
alter table STG_Bank.dbo.STG_Loan add src_update_date datetime
alter table DW_Bank.dbo.DIM_Loan add src_update_date datetime


-- Update Account dimension
alter table BankDB.dbo.Account add Last_Update datetime
UPDATE BankDB.dbo.Account SET Last_Update = '1951-12-12';
alter table STG_Bank.dbo.STG_Account add src_update_date datetime
alter table DW_Bank.dbo.DIM_Account add src_update_date datetime

-- Update Branch dimension
alter table BankDB.dbo.Branch add Last_Update datetime
UPDATE BankDB.dbo.Branch SET Last_Update = '1951-12-12';
alter table STG_Bank.dbo.STG_Branch add src_update_date datetime
alter table DW_Bank.dbo.DIM_Branch add src_update_date datetime

-- Update Customer dimension
alter table BankDB.dbo.Customers add Last_Update datetime
UPDATE BankDB.dbo.Customers SET Last_Update = '1951-12-12';
alter table STG_Bank.dbo.STG_Customers add src_update_date datetime
alter table DW_Bank.dbo.DIM_Customers add src_update_date datetime

-- Update Payment dimension
alter table BankDB.dbo.Payment add Last_Update datetime
UPDATE BankDB.dbo.Payment SET Last_Update = '1951-12-12';
alter table STG_Bank.dbo.STG_Payment add src_update_date datetime
alter table DW_Bank.dbo.DIM_Payment add src_update_date datetime


-- Update Products dimension
alter table BankDB.dbo.Treasury_Products add Last_Update datetime
UPDATE BankDB.dbo.Treasury_Products SET Last_Update = '1951-12-12';
alter table STG_Bank.dbo.STG_Treasury_Products add src_update_date datetime
alter table DW_Bank.dbo.DIM_Treasury_Products add src_update_date datetime