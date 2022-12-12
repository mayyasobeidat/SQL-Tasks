/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [EmployeeID]
      ,[FirstName]
      ,[LastName]
      ,[Phone]
      ,[city]
      ,[email]
  FROM [TASK].[dbo].[Employees]