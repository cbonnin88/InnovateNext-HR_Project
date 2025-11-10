SELECT
  CASE
    WHEN TenureInDays <= 365 THEN '0-1 Year'
    WHEN TenureInDays > 365
    AND TenureInDays <= 1095 THEN '1-3 Years'
    WHEN TenureInDays > 1095
    AND TenureInDays <= 1825 THEN '3-5 Years'
    ELSE '5+ Years'
  END AS TenureBucket,
  COUNT(EmployeeID) AS TotalEmployees,
  ROUND(AVG(Attrition) * 100,1) AS AttritionRate_Percent  
FROM 
  `sql-practice-460514.hr_data_mini.hr_master_data`
GROUP BY
  TenureBucket
ORDER BY
  TenureBucket