SELECT
  ROUND((SUM(Attrition) / count(EmployeeID)) * 100,1) AS Overall_Attrition_Rate_Percent,
  ROUND(AVG(Salary),2) AS AvgSalary,
  ROUND(AVG(TenureInDays),0) AS AvgTenure_Days
FROM 
  `sql-practice-460514.hr_data_mini.hr_master_data`