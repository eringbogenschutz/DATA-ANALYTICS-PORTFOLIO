**Employee Benefits & Rentention Analysis(SQL Project)**

**Overview**
This project analyes employee benefits across companies to explor how benefits such as healthcare, paid time off, and maternity leave influence employee retention and organizational outcomes. 

The dataset includes a mix of real companies and fictional companies to do broad analysis(data not pulled from real Fortune 500 data) 

All analysis was preformed using SQL queries, showchasing data axploration, aggergation, window functions, and conditional classification. 

**Busniess Problem**
Employee benefits are a major cost for organizations, but also a key factor in a companies retention. 
This analys aims to answer: 
  **Which benefits appear to improve retention, and which industrices are at a higher     rate of turnover**

**Dataset**
**Column-Description**           
company_name-name of the company                                                       industry-Industry category 
revenue-Annual company revenue(in billions USD) 
employes-Number of employees 
healthcare_benefits- 1 = offers healthcare, 0 = no healthcare 
paid_time_off_days-Average annual paid time off days 
maternity_leave_weeks-Maternity leave offered(weeks) 
avg_employee_tenure-Average uears employee stays at company 

Full dateset and queries are in benefits-database.sql

**Key Findings**
Query 1: Industries generating the most valye per employee 
Manufacturing and Finance lead in **revenue per employee**, which suggests operational effociency. 
Retail and Technology companies show high total revenu, but because of their large workforce size, revenue per employee is lower. 
**Insignts**
Industries with lower revenue per employee may invest more in automation or workplace specialization. 

Query 2: Benefits improve employee retention
With healthcare benefits the average renure is 6.17 years, and without heathcare it is 5.65 years. 
**Insights** 
Companies offering healthcare retain employees about 10% longer, supporting a positive link between benefits and retention

Query 3: Longer maternity leave correlates with higher tenure
**Insights**
Industries with longer maternity leave such as Technoloy and Manufacturing show some of the highest retention avrages, hinting that leave policies help retain emnployees. 

Query 4: Highest revenue companies 
**Insights**
large technology and Retail companes domatie the top reveny ranking, but high revenue does not gaurantee high retention. 

Query 5: PTO is associated with retntion
Average PTO days with healthcare provided as well is 19.4 days and with no healthcare the average PTO days in 15.2 days. 
**Insights**
Companies offering more robust benefit bundles appear to support longer employee stays. 

Query 6: Industries investing in the most 
















      











