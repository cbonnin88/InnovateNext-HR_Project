SELECT
  EmployeeID,
  Department,
  Role,
  Salary,
  ROUND(AVG(Salary) OVER (PARTITION BY Department),2) AS AvgDeptSalary,
  ROUND((Salary - AVG(Salary) OVER (PARTITION BY Department)),2) AS Salary_vs_Dept_Avg
FROM 
  `sql-practice-460514.hr_data_mini.hr_master_data`
WHERE
  Attrition = 0
ORDER BY
  Salary_vs_Dept_Avg DESC;