-- Exercise 1
select * from Employee order by lname, fname;

-- Exercise 2
select * from Employee where sex = 'F';

-- Exercise 3
select * from Employee where empID in (select mgrEmpID from Department);

-- Exercise 4
select e.* from Employee e 
    inner join Department dep on dep.deptNo = e.deptNo
    where dep.deptName = 'IT';

-- Exercise 5
select * from Employee 
    where DATEDIFF(year, DOB, CURRENT_TIMESTAMP) = 60 
    and empID in (select mgrEmpID from Department)
order by lname;

-- Exercise 6
select COUNT(*) cnt from Employee e 
    inner join Department dep on dep.deptNo = e.deptNo
    inner join Employee e2 on dep.mgrEmpID = e2.empID and e.empID <> e2.empID
    where e2.fname = 'James' and e2.lName='Adams';

-- Exercise 7
select e.empID, e.fname, e.lname, sum(w.hoursWorked) hoursWorked from Employee e
    left join WorksOn w on e.empID = w.empID
    Group by e.empID, e.fname, e.lname
    order by e.lname;

-- Exercise 8
select p.projNo, p.projName, count(w.empID) numOfEmployees from WorksOn w
    inner join project p on w.projNo = p.projNo
    group by p.projNo, p.projName having count(w.empID) > 2;

-- Exercise 9
select dep.deptName, count(emp.empID) numOfEmployees from Department dep
    inner join Employee emp on dep.deptNo = emp.deptNo
    group by dep.deptName having count(emp.empID) > 10;
