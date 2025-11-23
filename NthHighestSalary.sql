CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
    SELECT salary
    FROM (
      SELECT salary,
             DENSE_RANK() OVER (ORDER BY salary DESC) AS rk
      FROM Employee
    ) AS t
    WHERE rk = N
    LIMIT 1
  );
END
