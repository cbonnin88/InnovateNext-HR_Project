WITH
  RoleSalaryQuartiles AS (
    SELECT
      EmployeeID,
      Role,
      Salary,
      PerformanceRating,
      -- NTILE(4) divides all employees *within* the same Role into 4 'buckets'
      -- 1  = Bottom 25%, 4 = Top 25%
      NTILE(4) OVER (PARTITION BY Role ORDER BY Salary) AS SalaryQuartile
    FROM
      `sql-practice-460514.hr_data_mini.hr_master_data`
    WHERE
      Attrition = 0
  )
SELECT
  EmployeeID,
  Role,
  Salary,
  PerformanceRating,
  SalaryQuartile
FROM
  RoleSalaryQuartiles
WHERE
  PerformanceRating IN (4,5) -- High performers
  AND SalaryQuartile = 1 -- In the bottom 25% of salary for their role
ORDER BY
  Role,
  Salary;