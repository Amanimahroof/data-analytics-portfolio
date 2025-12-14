# HR Attrition Analysis – Business Analytics Project

## Business Context
Employee attrition has a direct impact on organizational costs, productivity, and workforce stability. High turnover leads to increased hiring expenses, loss of experienced talent, and operational disruption.  
This project applies a **business analytics approach** to understand employee attrition patterns and support **HR and management decision-making** through data-driven insights and visual reporting.



## Business Objectives
- Quantify the overall employee attrition rate
- Identify departments and employee segments with higher attrition risk
- Assess how compensation, workload, tenure, and employee experience influence attrition
- Deliver an interactive dashboard to support HR policy and retention decisions



## Key Business Questions
- What percentage of employees are leaving the organization?
- Which departments experience the highest attrition?
- Does working overtime increase the likelihood of attrition?
- How does income level influence employee retention?
- Are early-tenure employees more likely to leave?
- How do job satisfaction and work-life balance relate to attrition?



## Dataset
- Source: IBM HR Analytics Employee Attrition Dataset
- Total Employees: 1,470
- Original Variables: 35
- Final Variables Used: 11 (selected based on business relevance)

### Key Business Variables
- Department
- Job Role
- Monthly Income
- Years at Company
- Overtime
- Job Satisfaction
- Work-Life Balance
- Gender
- Education Field
- Age
- Attrition (Employee Left / Stayed)



## Tools Used
- Python – Data preparation and exploratory business analysis
- Power BI – KPI development and interactive dashboard creation
- Pandas – Data manipulation and aggregation
- GitHub – Project documentation and portfolio presentation



## Data Preparation & Feature Selection
- Reduced the dataset to **key HR variables** aligned with business objectives
- Encoded attrition as a binary outcome (Stayed vs Left)
- Validated data quality (no missing or duplicate records)
- Created **business-friendly groupings**:
  - Income Bands (Low, Medium, High)
  - Tenure Groups (0–2, 3–5, 6–10, 10+ years)

These groupings improve interpretability for non-technical stakeholders.



## Analytical Approach
The analysis focused on descriptive and diagnostic analytics:
- Measurement of overall attrition rate (KPI)
- Comparison of attrition rates across employee segments
- Identification of high-risk groups based on workload, compensation, and experience
- Visualization of insights for managerial decision support



## Power BI Dashboard
The Power BI dashboard provides a **one-page executive view** with:

### Key KPIs
- Total Employees
- Employees Left
- Attrition Rate (%)

### Analytical Visuals
- Attrition Rate by Department
- Attrition Rate by Income Band
- Attrition Rate by Tenure Group
- Attrition Rate by Overtime Status
- Attrition Rate by Job Satisfaction
- Attrition Rate by Work-Life Balance

### Interactive Filters
- Department
- Gender
- Job Role

These filters allow stakeholders to explore attrition patterns across different employee segments.



## Key Business Insights
- Employees working overtime exhibit significantly higher attrition rates
- Lower income groups are more prone to employee turnover
- Attrition is highest among employees with 0–2 years of tenure
- Lower job satisfaction and poor work-life balance strongly correlate with higher attrition
- Attrition trends vary across departments, indicating localized retention challenges



## Business Recommendations
- Strengthen onboarding and early engagement programs for new employees
- Review compensation structures for high-attrition roles and departments
- Introduce workload management and flexible work policies to reduce overtime impact
- Regularly monitor job satisfaction and work-life balance metrics
- Apply department-specific retention strategies rather than a one-size-fits-all approach



## Conclusion
This project demonstrates how **business analytics can be used to diagnose employee attrition issues** and support strategic HR decisions. By translating employee data into actionable insights and visual KPIs, the analysis helps organizations proactively manage attrition risks and improve workforce retention.
