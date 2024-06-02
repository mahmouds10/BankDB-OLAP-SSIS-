SELECT TOP (1000) [account_id] as Account_ID
      ,[product_id] as Product_ID
      ,[date_id2] as [Date]
      ,[Total_Fees]
  FROM [DW_Bank].[dbo].[FACT_Treasury_PRODUCT]


-- Total fees per Product Name
SELECT Product_Name, SUM([Total_Fees]) AS Total_Fees
FROM [DW_Bank].[dbo].[FACT_Treasury_PRODUCT]
GROUP BY Product_Name
ORDER BY Total_Fees DESC;