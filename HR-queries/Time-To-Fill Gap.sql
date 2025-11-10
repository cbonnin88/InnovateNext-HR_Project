WITH
  RoleHireDates AS (
    -- Get a clean list of hires per role, ordered by date
    SELECT
      Role,
      HireDate,
      EmployeeID,
      Attrition,
      TerminationDate
    FROM
      `sql-practice-460514.hr_data_mini.hr_master_data`
    ORDER BY
      Role,
      HireDate
  ),
  NextHire AS (
    -- For each employee, look 'forward' to find the next person. hired in that same role
    SELECT
      *,
      LEAD(HireDate) OVER(PARTITION BY Role ORDER BY HireDate) AS NextHireDate
    FROM
      RoleHireDates
  )
-- Now, Filter for just the employees who left
SELECT
  Role,
  EmployeeID AS Leaver_EmployeeID,
  TerminationDate,
  NextHireDate,
  DATE_DIFF(NextHireDate,TerminationDate, DAY) AS TimetoFill_Days
FROM
  NextHire
WHERE
  Attrition = 1 -- Only employees who left
  AND NextHireDate IS NOT NULL
ORDER BY
  TimeToFill_Days DESC; -- See the biggest gaps