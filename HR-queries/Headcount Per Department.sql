SELECT
  Department,
  COUNT(EmployeeID) AS EmployeeCount  
FROM 
  `sql-practice-460514.hr_data_mini.hr_master_data`
GROUP BY
  Department
ORDER BY
  EmployeeCount DESC;