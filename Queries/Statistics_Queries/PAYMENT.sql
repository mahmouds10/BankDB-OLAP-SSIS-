SELECT TOP (1000) [payment_id]
      ,[branch_id]
      ,[date_id2]
      ,[amount]
  FROM [DW_Bank].[dbo].[Payment_fact]


-- Total payment amount per year  
SELECT YEAR([date_id2]) as [Year], SUM([amount]) AS Total_Amount
FROM  [DW_Bank].[dbo].[Payment_fact]
GROUP BY YEAR([date_id2]), [branch_id]
HAVING COUNT(*) > 0
ORDER BY Total_Amount DESC


-- Total payment amount per branch
SELECT [branch_id] as Branch_ID, SUM([amount]) AS Total_Payment_Ammount
FROM [DW_Bank].[dbo].[Payment_fact]
GROUP BY [date_id2], [branch_id]
HAVING COUNT(*) > 0
ORDER BY Total_Payment_Ammount DESC;