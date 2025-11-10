SELECT
  EmployeeID,
  Department,
  Role,
  Salary
FROM `sql-practice-460514.hr_data_mini.hr_master_data`
WHERE
  Salary > (
    SELECT
      ROUND(AVG(Salary),2)
    FROM
      `sql-practice-460514.hr_data_mini.hr_master_data`
  )
ORDER BY
  Salary DESC;