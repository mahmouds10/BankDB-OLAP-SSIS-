SELECT TOP (1000) [payment_id]
      ,[branch_id]
      ,[date_id2]
      ,[amount]
  FROM [DW_Bank].[dbo].[Payment_fact]

SELECT [date_id2] as [Date], [branch_id] as Branch_ID, SUM([amount]) AS Total_Ammount
FROM [DW_Bank].[dbo].[Payment_fact]
GROUP BY [date_id2], [branch_id]
HAVING COUNT(*) > 0
ORDER BY Total_Ammount DESC;

