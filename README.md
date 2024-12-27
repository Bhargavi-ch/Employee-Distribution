#EMPLOYEE DISTRIBUTION REPORT

The Employee Distribution Dashboard is a powerful tool designed to analyze workforce distribution across various parameters, such as departments, roles, locations, and tenure. This project uses SQL for data extraction and transformation and Power BI for interactive data visualization.

By leveraging this dashboard, organizations can make data-driven decisions about workforce management, resource allocation, and diversity initiatives.

##Dashboard - https://drive.google.com/file/d/131--vKlDkcp1j-fjC7_MjkjI_q3Mrcc0/view?usp=sharing
![Dashboard][Employee distribution.pdf](https://github.com/user-attachments/files/18260586/Employee.distribution.pdf)


###Data Used Data - HR Data with over 22000 rows from the year 2000 to 2020. Data Cleaning & Analysis - MySQL Workbench Data Visualization - PowerBI

###Questions

What is the gender breakdown of employees in the company?
What is the race/ethnicity breakdown of employees in the company?
What is the age distribution of employees in the company?
How many employees work at headquarters versus remote locations?
What is the average length of employment for employees who have been terminated?
How does the gender distribution vary across departments and job titles?
What is the distribution of job titles across the company?
Which department has the highest turnover rate?
What is the distribution of employees across locations by state?
How has the company's employee count changed over time based on hire and term dates?
What is the tenure distribution for each department?.
###steps followed

Step 1: Load the Dataset into SQL Prepare your CSV files containing employee data. Set up a new SQL database and create tables based on the structure of the CSV files. Load the data from the CSV files into the corresponding SQL tables.

Step 2: Prepare the Database and Queries Design the database schema Write SQL queries to clean, aggregate, and transform the data. Create tables and load data using the appropriate SQL queries or by using data import wizard tool.

step 3: Data Cleaning.


Step 4: Write SQL Queries for Data Analysis Write SQL queries to analyze the data and answer key business questions: Employee distribution by department. Gender and role distribution. Employee tenure and experience levels across different departments. Export the results of your queries into CSV files for further analysis or use in Power BI.

Step 5: Use Power BI for Data Visualization Import the cleaned and transformed data (CSV files or direct SQL connection) into Power BI. Create data models and define relationships between tables. Build visualizations to represent key insights (e.g., bar charts, pie charts, maps).

Step 6: Prepare the Power BI Dashboard Combine multiple visualizations into an interactive dashboard. Add filters and slicers for users to explore the data by department, location, or role. Finalize the dashboard design and ensure it’s easy to navigate.
## Summary of Findings
 - There are more male employees
 - White race is the most dominant while Native Hawaiian and American Indian are the least dominant.
 - The youngest employee is 20 years old and the oldest is 57 years old
 - 5 age groups were created (18-24, 25-34, 35-44, 45-54, 55-64). A large number of employees were between 25-34 followed by 35-44 while the smallest group was 55-64.
 - A large number of employees work at the headquarters versus remotely.
 - The average length of employment for terminated employees is around 7 years.
 - The gender distribution across departments is fairly balanced but there are generally more male than female employees.
 - The Marketing department has the highest turnover rate followed by Training. The least turn over rate are in the Research and development, Support and Legal departments.
 - A large number of employees come from the state of Ohio.
 - The net change in employees has increased over the years.
- The average tenure for each department is about 8 years with Legal and Auditing having the highest and Services, Sales and Marketing having the lowest.
