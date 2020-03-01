# Pewlett-Hackard-Analysis
Using SQL to create an employee database

## Project overview
This report will present a summary information about Pewlett Hackard employess database, to investigate who and when will retire and what are the future open roles from this retirement proncess.

The report will present:
* Summary of the results 
* number of individuals retiring 
* number of roles to be available in the future
* number of individuals available for mentorship role 

## Resources

* Data Source: titles.csv, salaries.csv, employees.csv, dept_manager.csv, dept_emp.csv, departemts.csv
* Software: PostgreSQL and pgAdmin, 

## Summary

The analysis of the Pewlett Hackard employess database started with understanding the different datasets available for the analysis and which table could provide the information required. 

- ![alt text]( https://github.com/DaniGio/Pewlett-Hackard-Analysis/blob/master/Pic/EmployeeDB.png)

The full list of employees was considering the ones that was no longer working with Pewlett hackard, so this list went from more than 300.000 employees to approximately 240.000.

For the retiring list, it was considered that employees that was born between 1952 and 1955 would begin to retire, bringing a list of 41.380 employees.

- ![alt text]( https://github.com/DaniGio/Pewlett-Hackard-Analysis/blob/master/Pic/qtd%20retiring.png)

To understand the titles that will be available after retirement, another cleaning process was required since the initial list was bringing all the titles that each employee had during those years. It was removed all the duplicated info remaining only the most recent titles. Below, the list and the quantity of each role that will be required to hire in the future.

- ![alt text]( https://github.com/DaniGio/Pewlett-Hackard-Analysis/blob/master/Pic/qtd%20per%20title.png)

Additional to that, it will be considered a Mentor role for those who were born in the 1965. After this filter, the analyze showed that 1549 employees  could act as a Mentor.
- ![alt text](https://github.com/DaniGio/Pewlett-Hackard-Analysis/blob/master/Pic/Mentor_ready_count.png)

## Recommendation:
As next step it would be interesting to conduct further investigation on how much this retirement process would cost to the company, to simulate different retirement package proposal. 
