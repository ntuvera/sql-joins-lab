#!/bin/sh

database="company"
# TODO: Write queries to display:
# Employees working at macys
psql -d $database -c " SELECT * FROM employees JOIN jobs ON jobs.ssn=employees.ssn WHERE jobs.company LIKE 'Macy%'";
# Companies in k
psql -d $database -c "SELECT company FROM jobs JOIN employees ON jobs.ssn=employees.ssn WHERE employees.city='Boston';"
# Employee with the highest salary
psql -d $database -c "SELECT first_name, last_name FROM employees JOIN jobs ON jobs.ssn=employees.ssn ORDER BY salary DESC LIMIT 1";
