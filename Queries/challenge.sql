--Challenge
--part 1
-- Create a new table using an INNER JOIN that contains the following information:
--Employee number, First and last name, Title, from_date, Salary
--Export the data as a CSV.
SELECT t1.emp_no,
t1.first_name,
t1.last_name,
t2.tittle,
t2.from_date,
t3.salary	
INTO emp_retiring_challenge
FROM retirement_info as t1
INNER JOIN titles AS t2
ON (t1.emp_no = t2.emp_no)
INNER JOIN salaries AS t3
ON (t1.emp_no = t3.emp_no);


--Only the Most Recent Titles
DELETE FROM emp_retiring_challenge
USING 
  (SELECT emp_no, MAX(from_date) maxDate
   FROM emp_retiring_challenge
   GROUP BY emp_no
  ) AS Keep 
WHERE Keep.maxDate <> emp_retiring_challenge.from_date
AND Keep.emp_no = emp_retiring_challenge.emp_no;

SELECT *	
FROM emp_retiring_challenge
ORDER BY from_date DESC;

--list the frequency count of employee title (i.e., how many employees share the same title?). Export
SELECT 
tittle, 
count (emp_no)
INTO most_recent_titles_challenge
FROM emp_retiring_challenge
group by tittle;


--Who’s Ready for a Mentor?
--Create a new table that contains the following information:Employee number,
--First and last name, Title, from_date and to_date
--Note: The birth date needs to be between January 1, 1965 and December 31, 1965. 
--Also, make sure only current employees are included in this list.Export
SELECT to_date FROM titles
order by to_date desc;

SELECT t1.emp_no,
	t1.first_name,
	t1.last_name,
	t3.tittle,
	t2.salary,
	t2.from_date,
	t3.to_date
INTO current_emp_info_challenge
FROM employees as t1
INNER JOIN salaries as t2
ON (t1.emp_no = t2.emp_no)
INNER JOIN titles as t3
ON (t1.emp_no = t3.emp_no)
WHERE (t1.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
	 AND (t3.to_date = '9999-01-01');