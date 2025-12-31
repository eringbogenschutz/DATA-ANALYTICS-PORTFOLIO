**Employee Benefits & Rentention Analysis(SQL Project)**

**Overview**
This project analyes employee benefits across companies to explor how benefits such as healthcare, paid time off, and maternity leave influence employee retention and organizational outcomes. 

The dataset includes a mix of real companies and fictional companies to do broad analysis(data not pulled from real Fortune 500 data) 

All analysis was preformed using SQL queries, showchasing data axploration, aggergation, window functions, and conditional classification. 

**Busniess Problem**

Employee benefits are a major cost for organizations, but also a key factor in a companies retention. 

This analys aims to answer: 
  **Which benefits appear to improve retention, and which industrices are at a higher     rate of turnover?**

**Dataset**
<br>Column-Description</br>        
company_name - name of the company     

industry - Industry category 

revenue - Annual company revenue(in billions USD) 

employes - Number of employees 

healthcare_benefits - 1 = offers healthcare, 0 = no healthcare 

paid_time_off_days - Average annual paid time off days 

maternity_leave_weeks - Maternity leave offered(weeks) 

avg_employee_tenure - Average uears employee stays at company 

Full dateset and queries are in benefits-database.sql

**Key Findings**
<br>**Query 1:** Industries generating the most valye per employee</br>

Manufacturing and Finance lead in **revenue per employee**, which suggests operational effociency. 
Retail and Technology companies show high total revenue, but because of their large workforce size, revenue per employee is lower. 

<img width="486" height="302" alt="Screenshot 2025-12-31 at 10 17 59 AM" src="https://github.com/user-attachments/assets/e8f5982e-1f48-4ad1-b583-0a097e89de17" />


<br>**Insights**</br>
Industries such as Technology and Finance generate the highest revenue per employee, suggesting stronger profitability and operational efficiency compared to Retail and Telecommunications.

**Query 2:** Benefits improve employee retention
With healthcare benefits the average renure is 6.17 years, and without heathcare it is 5.65 years. 
<br>**Insights**</br>
Companies offering healthcare retain employees about 10% longer, supporting a positive link between benefits and retention

**Query 3:** Longer maternity leave correlates with higher tenure
<br>**Insights**</br>
Industries with longer maternity leave such as Technoloy and Manufacturing show some of the highest retention averages, hinting that leave policies help retain emnployees. 

**Query 4:** Highest revenue companies 
<br>**Insights**</br>
large technology and Retail companes domatie the top reveny ranking, but high revenue does not gaurantee high retention. 

**Query 5:** PTO is associated with retntion
Average PTO days with healthcare provided as well is 19.4 days and with no healthcare the average PTO days in 15.2 days. 

<img width="486" height="302" alt="Screenshot 2025-12-31 at 10 22 02 AM" src="https://github.com/user-attachments/assets/cb8148fc-6b4a-47a8-82ee-8615cc4cf48f" />

<br>**Insights**</br>
The data shows that companies providing healthcare benefits also tend to offer ~4 more PTO days per year (19.4 vs. 15.2), and these companies maintain higher employee tenure overall. This suggests PTO does not operate in isolation—employees respond to benefits as a package. When companies combine healthcare with generous PTO, employees are more likely to view the workplace as supportive of work-life balance, contributing to improved retention.

**Query 6:** Industries investing in the most in benefits 
A custom Benefit score was calculated to weight PTO and maternity leave. The PTO was weighted more importantly by a score of 1.5. 
The top 3 were as follows according to the calculated Benefit Score: 
| Industry | Benefit Score | Avg Tenure |
|----------|---------------|------------|
| Technology | 47.57 | 5.97 years |
| Manufacturing | 43.67 | 6.68 years |
| Finance | 43.67 | 6.90 years |

**Insignts**
Technology companies provide a generous benefit package even though they have a slightly lower retention than Manufacturing and Financials, suggesting factors beyond benefits influence tenure. 

**Query 7:** High revenue but weak retention
Companies with revenue > $300B and <6 years tenure were, Company B, Company R, Amazon, Apple, Company V, Company Y, and Company C. 
<br>**Insights**</br>
Even top revenue companies may face retention challenges, likely because of workload demands and competitive hiring markets and other factors. 

**Query 8:** Companies that invenst in employee well-being
Classifies companies into high, moderate, or low benefits based on three criteria: healthcare benefits, paid time off, and maternity leave duration.
<br>**Insights**</br>
Comanies categorized with high benefits consistently offred leave policies and healthcare coverage, which signaled a strong investment in the well-being of their workface. 

**Query 9:** High revenue but low retention

This query identifies companies with high financial performance(revenue > $300B) but below-average employee tenure(<6 years) 
<img width="486" height="302" alt="Screenshot 2025-12-31 at 10 43 32 AM" src="https://github.com/user-attachments/assets/f4f384bf-34ca-485b-ad5c-4ac2a6dc9951" />

<br>**Insignts**</br>
Several top-performing comanies financially still face retention challenges, including the technology companies. This suggests that revenue success alone doesn't guarantee employee loyalty. Factors such and internal workplace pressure, pace of work, or burnout may contribute to shorted tenure. High performance and low retention implies that there may be issues with turnover cost and talent sustainability issues. 

**Query 10:** Industries that may face future turnover
Calculating the average retention by industry and pointing out any insutry where average enure is below 6 years. Some of the industries at risk are: retail, finance, and telecommunications.
<br>**Insignts**</br>
These industries show lower tenure on average, meaning that they may continue to face higher turnover rates in the future. Retails lower retention may align with the patterns in the workforce such as seasonal employment and easier job switching. Finance and telecommunications may experience turnover dur to high competition, burnout, or limited benefits compared to other fields. 


**Summary**
Across all 10 queries, the analysis shows a consistent relationship between employee benefts and retention. Companies and industies that invest more heavily in healthcare, paid time off, and maternity leave tend to retain employees longer on averge. However, benedifts alone do not fully explain retention outcomes. High-reveny companies often still experienced high turnover suggesting that other factors such as workload intensity, career mobility, competitive hiring enviornments, or organizational culture may also play a major role.
Industries such as Retail, Telecommunications, and Finance show lower average tenure and could face future turnover challenges. While Manufacturing and Healthcare demonstrate stronger retention supported by more comprehensive benefit structures. 
Overall, this analysis highlights: 
- Benfits support retention but are not the only factor
- High revenue does not mean high retention
- Industries with weaker benefits and fast-pace environments face the greatest turnover risk
- Companies could improve retention by pairing strong benefits with workplace culture and workload improvements

Employee benefits meaningfully contribut to employee retention, but long-term workforce stability requires balancing compensation, benefits, and organizational well-being strategies. 














