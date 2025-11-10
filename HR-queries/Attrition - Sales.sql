SELECT 
  EmployeeID,
  FirstName,
  LastName,
  Role,
  TerminationDate
FROM `sql-practice-460514.hr_data_mini.hr_master_data`
WHERE
  Department = 'Sales'
    AND Attrition = 1;