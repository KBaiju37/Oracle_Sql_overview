CREATE TABLE employ (
    emp_id NUMBER,
    department VARCHAR(50),
    salary NUMBER
);

INSERT INTO employ VALUES 
(1, 'Sales', 5000),
(2, 'Sales', 6000),
(3, 'Sales', 5000),
(4, 'IT', 7000),
(5, 'IT', 9000);

SELECT emp_id, department, salary,
       SUM(salary) OVER() AS total_company_salary
FROM employ;

SELECT emp_id, department, salary,
       AVG(salary) OVER(PARTITION BY department) AS avg_dept_salary
FROM employ;

SELECT emp_id, department, salary,
       RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS dept_salary_rank
FROM employ;



