USE hr_attrition;

Select Count(*) As total_employees
from employee_attrition;

Select 
    Attrition,
	Count(*) as employee_count
from employee_attrition
Group by Attrition;

SELECT  
ROUND(
sum(case when Attrition='Yes' Then 1 else 0 end)
*100.0/COUNT(*),
2
) as attrition_rate
from employee_attrition;

Select 
Department,
COUNT(*) as employee_left
from employee_attrition
where Attrition='Yes'
group by department
order by employee_left DESC;


Select
overtime,
count(*)as employee_left
from employee_attrition
where attrition='Yes'
Group by overtime;


Select 
  attrition,
  round(avg(MonthlyIncome),2) as Avg_salry
from employee_attrition
group by attrition;


SELECT
    JobRole,
    COUNT(*) AS Employees_Left
FROM employee_attrition
WHERE Attrition='Yes'
GROUP BY JobRole
ORDER BY Employees_Left DESC;


SELECT
    OverTime,
    COUNT(*) AS Employees_Left
FROM employee_attrition
WHERE Attrition='Yes'
GROUP BY OverTime;


SELECT
    Attrition,
    ROUND(AVG(Age),2) AS Avg_Age
FROM employee_attrition
GROUP BY Attrition;


SELECT
    JobSatisfaction,
    COUNT(*) AS Employees_Left
FROM employee_attrition
WHERE Attrition='Yes'
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;