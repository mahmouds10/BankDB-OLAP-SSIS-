alter table DW_Bank.dbo.DIM_Loan add Account_Balance float , Account_Type varchar (100) , Branch_Name varchar(50)
alter table STG_Bank.dbo.STG_Loan add Account_Balance float , Account_Type varchar (100) , Branch_Name varchar(50)


alter table STG_Bank.dbo.STG_Account add Branch_Name varchar(50), Customer_Name varchar (100) , Phone varchar(50) , [Address] varchar(100) , Gender varchar(50)
alter table DW_Bank.dbo.DIM_Account add Branch_Name varchar(50), Customer_Name varchar (100) , Phone varchar(50) , [Address] varchar(100) , Gender varchar(50)


alter table DW_Bank.dbo.DIM_Treasury_Products add Account_Balance float , Account_Type varchar (100) 
alter table STG_Bank.dbo.STG_Treasury_Products add Account_Balance float , Account_Type varchar (100) 

select * from DIM_Payment
alter table DW_Bank.dbo.DIM_Payment add Account_Balance float , Account_Type varchar (100) , Branch_Name varchar(50)
alter table STG_Bank.dbo.STG_Payment add Account_Balance float , Account_Type varchar (100) , Branch_Name varchar(50)