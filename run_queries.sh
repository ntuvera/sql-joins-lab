#!/bin/sh

database="company"
# TODO: Write queries to display:
# Employees working at macys
psql -d $database -c " SELECT * FROM employees JOIN ON jobs.ssn=employees.ssn WHERE jobs.company LIKE 'Macy%'";
# Companies in k
psql -d $database -c "SELECT company FROM jobs JOIN ON jobs.ssn=employee.ssn WHERE employee.city='Boston';"
# Employee with the highest salary
psql -d $database -c "SELECT name FROM employees JOIN ON jobs.ssn=employee.ssn ORDER BY salary DESC LIMIT 1";
