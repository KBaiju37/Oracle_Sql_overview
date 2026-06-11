create TABLE employees
{
    empid number,
    empname varchar(30)
};

desc employees;

insert into employees values
(1,'dhruv'),
(2,'baiju');

select * from employees;

drop table employees;


SELECT DEPARTMENT_ID, COUNT(*), SUM(SALARY), AVG(SALARY) 
FROM HR.EMPLOYEES 
GROUP BY DEPARTMENT_ID 
ORDER BY DEPARTMENT_ID DESC;

SELECT * FROM HR.EMPLOYEES;

