-- Create Update account Trigger
CREATE TRIGGER trg_Account_Update
ON BankDB.dbo.Account
AFTER UPDATE
AS
BEGIN
    UPDATE Account
    SET Last_Update = GETDATE()
    FROM Account
    INNER JOIN inserted ON Account.Account_ID = inserted.Account_ID
END;
GO
-- Create Insert Account triggrt
CREATE TRIGGER trg_Account_Insert
ON Account
AFTER INSERT
AS
BEGIN
    UPDATE Account
    SET Last_Update = GETDATE()
    FROM Account
    INNER JOIN inserted ON Account.Account_ID = inserted.Account_ID
END;
GO

-- Create Update Loan Trigger
CREATE TRIGGER trg_Loan_Update
ON Loan
AFTER UPDATE
AS
BEGIN
    UPDATE Loan
    SET Last_Update = GETDATE()
    FROM Loan
    INNER JOIN inserted ON Loan.Loan_ID = inserted.Loan_ID
END;
GO

-- Create Insert Loan Trigger
CREATE TRIGGER trg_Loan_Insert
ON Loan
AFTER INSERT
AS
BEGIN
    UPDATE Loan
    SET Last_Update = GETDATE()
    FROM Loan
    INNER JOIN inserted ON Loan.Loan_ID = inserted.Loan_ID
END;
GO


-- Create Update Branch Trigger
CREATE TRIGGER trg_Branch_Update
ON Branch
AFTER UPDATE
AS
BEGIN
    UPDATE Branch
    SET Last_Update = GETDATE()
    FROM Branch
    INNER JOIN inserted ON Branch.Branch_ID = inserted.Branch_ID
END;
GO

-- Create Insert Branch Trigger
CREATE TRIGGER trg_Branch_Insert
ON Branch
AFTER INSERT
AS
BEGIN
    UPDATE Branch
    SET Last_Update = GETDATE()
    FROM Branch
    INNER JOIN inserted ON Branch.Branch_ID = inserted.Branch_ID
END;
GO

-- Create Update Payment Trigger 
CREATE TRIGGER trg_Payment_Update
ON Payment
AFTER UPDATE
AS
BEGIN
    UPDATE Payment
    SET Last_Update = GETDATE()
    FROM Payment
    INNER JOIN inserted ON Payment.Payment_ID = inserted.Payment_ID
END;
GO

-- Create Insert Payment 
CREATE TRIGGER trg_Payment_Insert
ON Payment
AFTER INSERT
AS
BEGIN
    UPDATE Payment
    SET Last_Update = GETDATE()
    FROM Payment
    INNER JOIN inserted ON Payment.Payment_ID = inserted.Payment_ID
END;
GO

-- Create Update Product Trigger
CREATE TRIGGER trg_Treasury_Products_Insert
ON Treasury_Products
AFTER INSERT
AS
BEGIN
    UPDATE Treasury_Products
    SET Last_Update = GETDATE()
    FROM Treasury_Products
    INNER JOIN inserted ON Treasury_Products.Product_ID = inserted.Product_ID
END;
GO

-- Create Insert Product Trigger
CREATE TRIGGER trg_Treasury_Products_Update
ON Treasury_Products
AFTER UPDATE
AS
BEGIN
    UPDATE Treasury_Products
    SET Last_Update = GETDATE()
    FROM Treasury_Products
    INNER JOIN inserted ON Treasury_Products.Product_ID = inserted.Product_ID
END;
GO