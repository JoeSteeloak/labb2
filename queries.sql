/* SQL frågor */
/* 

0) Lista ut all information om alla anställa 

*/
select * from employees;

-- 1) Lista ut alla som inte jobbar som manager
SELECT * 
FROM EMPLOYEES WHERE STOREROLE != ('MANAGER');

-- 2) Lista ut alla anställda som har ett "A" i namnet
SELECT *
FROM EMPLOYEES WHERE EMPLOYEENAME LIKE "%A%";

-- 3) Lista ut alla medlemmar som började sitt medlemskap 2017
SELECT *
FROM MEMBERS WHERE STARTDATE BETWEEN '2017-01-01' AND '2017-12-31';

-- 4) Lista medellönen, högsta lönen och lägsta lönen på alla anställda i varje butik
SELECT STORENAME,AVG(SALARY),MAX(SALARY),MIN(SALARY)
FROM EMPLOYEES,STORES WHERE STORES.STORENO=EMPLOYEES.STORENO GROUP BY STORENAME;

-- 5) Lista medellönen, högsta lönen och lägsta lönen på alla anställda i varje butik med medellön på mer än 1500.
SELECT STORENAME,AVG(SALARY),MAX(SALARY),MIN(SALARY)
FROM EMPLOYEES,STORES WHERE STORES.STORENO=EMPLOYEES.STORENO GROUP BY STORENAME HAVING AVG(SALARY) > 1500;

-- 6) Lista medlemmar i bokstavsordning på namn
SELECT MEMBERNAME
FROM MEMBERS ORDER BY MEMBERNAME; 

-- 7) Ta bort medlem 1111 Jacop från tabellen (Han lämnade tillbaka filmer försent för många gånger)
DELETE FROM MEMBERS WHERE MEMBERNO='1111';

-- 8) Lista ut namnen på alla medlemmar och vilken butik de tillhör
SELECT MEMBERNAME, STORENAME 
FROM STORES d 
LEFT OUTER JOIN MEMBERS e ON e.STORENO=d.STORENO;

-- 9) Lista ut vilka anställda som har högre lön än medellönen
SELECT * 
FROM EMPLOYEES
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);