SELECT
  Department,
  ROUND(AVG(ManagerRating),1) AS AvgManagerRating
FROM
  `sql-practice-460514.hr_data_mini.hr_master_data`
WHERE
  Attrition = 0
GROUP BY 
  Department
HAVING
  AvgManagerRating < 6.5
ORDER BY
  AvgManagerRating DESC;