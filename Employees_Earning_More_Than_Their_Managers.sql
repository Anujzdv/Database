/* You are given an Employee table that contains each employee’s id, name, salary, and the managerId of their manager.
You must find the names of employees whose salary is strictly higher than their own manager’s salary. */

SELECT e.name
FROM Employee AS e
JOIN Employee AS m
ON e.managerId = m.id
WHERE e.salary > m.salary;
