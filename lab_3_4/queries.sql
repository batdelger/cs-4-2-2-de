-- Exercise 1
SELECT * FROM Employee
    ORDER BY lname, fname;

-- Exercise 2
SELECT * FROM Employee
    WHERE sex = 'F';

-- Exercise 3
SELECT * FROM Employee
    WHERE empID IN (SELECT mgrEmpID FROM Department);

-- Exercise 4
SELECT e.* FROM Employee e 
    INNER JOIN Department dep ON dep.deptNo = e.deptNo
    WHERE dep.deptName = 'IT';

-- Exercise 5
SELECT * FROM Employee 
    WHERE DATEDIFF(year, DOB, CURRENT_TIMESTAMP) = 65 
    AND empID IN (SELECT mgrEmpID FROM Department)
ORDER BY lname;

-- Exercise 6
SELECT COUNT(*) numberOfEmployees
    FROM Employee emp 
    INNER JOIN Department dep ON dep.deptNo = emp.deptNo
    INNER JOIN Employee emp2 ON dep.mgrEmpID = emp2.empID AND emp.empID <> emp2.empID
    WHERE emp2.fname = 'James' AND emp2.lName='Adams';

-- Exercise 7
SELECT e.empID, e.fname, e.lname, sum(w.hoursWorked) hoursWorked
    FROM Employee emp
    LEFT JOIN WorksOn w ON emp.empID = w.empID
    GROUP BY emp.empID, emp.fname, emp.lname
    ORDER BY emp.lname;

-- Exercise 8
SELECT p.projNo, p.projName, count(w.empID) numberOfEmployees
    FROM WorksOn w
    INNER JOIN project p ON w.projNo = p.projNo
    GROUP BY p.projNo, p.projName HAVING count(w.empID) > 2;

-- Exercise 9
SELECT dep.deptName, count(emp.empID) numberOfEmployees 
    FROM Department dep
    INNER JOIN Employee emp ON dep.deptNo = emp.deptNo
    GROUP BY dep.deptName HAVING count(emp.empID) > 10;
