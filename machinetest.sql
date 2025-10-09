1)
SELECT * FROM employee
WHERE leave>5 AND department = 'sales';

2)
SELECT COUNT(*) FROM employee
WHERE department = 'operations';

3)
SELECT department, COUNT(*) FROM employee
GROUP BY department;

4)
SELECT department, SUM(leave) FROM employee
GROUP BY department
HAVING SUM(leave)>10;

5)
SELECT employee.name ,exam.exam_status
FROM employee
JOIN exam ON employee.id = exam.employee_id
WHERE exam_status='pass';

6)
SELECT employee.name
FROM employee
LEFT JOIN exam ON employee.id = exam.employee_id
WHERE exam.employee_id IS NULL;