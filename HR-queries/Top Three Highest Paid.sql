WITH
  RankedSalaries AS (
    SELECT
      EmployeeID,
      Department,
      Role,
      Salary,
      RANK() OVER(PARTITION BY Department ORDER BY Salary DESC) AS DeptSalaryRank
    FROM
      `sql-practice-460514.hr_data_mini.hr_master_data`
  )
SELECT
  Department,
  Role,
  Salary,
  EmployeeID
FROM
  RankedSalaries
WHERE
  DeptSalaryRank <= 3
ORDER BY
  Department,
  DeptSalaryRank;