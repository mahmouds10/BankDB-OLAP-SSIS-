SELECT TOP (1000) [LOAN_SK]
      ,[loan_id]
      ,[branch_id]
      ,[date_id2]
      ,[loan_type]
      ,[loan_amount]
  FROM [DW_Bank].[dbo].[FACT_LOAN]


-- Total loan ammout per loan type
SELECT [loan_type], SUM([loan_amount]) AS Total_Loans_Ammount
FROM [DW_Bank].[dbo].[FACT_LOAN]
GROUP BY [loan_type]
ORDER BY Total_Loans_Ammount DESC;

-- Total loans per branch 
SELECT  [branch_id] as Branc_ID , COUNT(*) AS Total_Loans
FROM [DW_Bank].[dbo].[FACT_LOAN]
GROUP BY [branch_id]
ORDER BY total_loans DESC;