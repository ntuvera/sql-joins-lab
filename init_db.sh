#!/bin/sh

# TODO: Create database and initialize database table structure
database="company"

psql -c 'CREATE DATABASE company'
# CREATE DATABASE company;

# psql DROP DATABASE $company;

psql -d $database -c "CREATE TABLE employees (
	ssn PRIMARY KEY NOT NULL,
	first_name varchar(50),
	last_name varchar(50),
	year_of_birth int,
	city varchar(50)
)";

psql -d $database -c "CREATE TABLE jobs (
  FOREIGN KEY (snn) REFERENCES epmloyees(ssn),
	company varchar(50),
	salary int,
	experience int
)";

# TODO: Insert data into tables

psql -d $database -c "COPY employees(ssn,first_name,last_name,year_of_birth,city) FROM '`pwd`/employees.csv' DELIMITER ',' CSV HEADER";
psql -d $database -c "COPY jobs(ssn, company, salary, experience) FROM '`pwd`/jobs.csv' DELIMITER ',' CSV HEADER";
