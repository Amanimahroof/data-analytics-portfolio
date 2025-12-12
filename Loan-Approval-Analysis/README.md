## Loan Approval Data Analysis – Final Project ##

This repository contains the data analysis work performed on a loan approval dataset using R and R Markdown.
The objective of this project was to clean the dataset, explore patterns, and conduct statistical tests to understand which factors may influence loan-related outcomes.

This project does not include machine learning model building.
It focuses strictly on data preprocessing, exploratory analysis, and statistical testing.

##  Repository Contents
1.File	Description
2.final project codes.Rmd	Main R Markdown file containing all analysis
3.loan_train.csv	Dataset used for analysis
4.README.md	Project documentation

##  Work Completed

This project includes the following completed tasks:

### 1. Data Cleaning

I performed thorough preprocessing steps, including:

1.Importing and inspecting the dataset
2.Renaming inconsistent column names
3.Removing missing values
4.Removing duplicate records
5.Converting variables to appropriate factor/numeric types
6.Detecting and removing outliers using a custom function
7.Viewing dataset structure and summaries

These steps ensured that the data was clean, consistent, and ready for statistical analysis.

### 2. Exploratory Data Analysis (EDA)

The following exploratory steps were performed:
1.Printing summaries of key variables
2.Checking variable distributions
3.Understanding the structure of categorical and numeric fields
4.Inspecting cleaned data

This provided an initial understanding of how variables behave and relate to loan characteristics.

##  Statistical Tests Conducted and Interpretations

You carried out three major types of statistical tests to understand relationships in the dataset.
Below is a clear explanation of each test and what your outputs indicated.

### 1. Correlation Analysis

I used the cor() function to examine relationships between numeric variables such as:

Income
Loan Amount
Loan Term

Interpretation

Variables with high positive correlation indicate that as one increases, the other also increases.
Variables with low or near-zero correlation do not show a strong linear relationship.
Results helped identify which numeric fields move together and which do not, guiding further analysis.

### 2. Linear Model (lm)

A simple linear regression model (lm()) was applied to understand how selected numeric predictors influence a numeric outcome (such as loan amount).

Interpretation

From the model summary:
Some predictors showed statistically significant p-values, meaning they have meaningful influence on the outcome.
The sign of coefficients indicated whether the relationship was positive or negative.
The R-squared value showed how much variation in the outcome is explained by the predictors.
This revealed which numeric factors acted as strong contributors in the dataset.

### 3. ANOVA (Analysis of Variance)

You conducted several ANOVA tests to compare whether numeric variables differ across groups (e.g., loan approval categories).

Interpretation

Variables with p < 0.05 showed significant differences between groups.
This means the group variable influences the numeric variable.
Variables with p > 0.05 did not differ significantly.
This allowed you to identify which numeric features vary between approval categories and which do not.

### 4. Chi-Square Test

A Chi-Square test (chisq.test) was performed to examine relationships between categorical variables, such as:

Loan Status
Gender
Marital Status
Education
Credit History
Employment Type

Interpretation

Significant p-values (p < 0.05) indicated strong associations.
Example: Credit history may be related to loan approval.

Non-significant p-values (p > 0.05) indicated no meaningful association.
Example: Gender may not influence loan approval.

This helped identify which categorical attributes contribute to loan outcomes.

## ✔ Summary of Completed Work
Step	Completed:
Data Cleaning -	Fully completed
Basic EDA	-	Structure, summary, distributions
Correlation Test	-	Relationships among numeric variables
Linear Regression	-	Identified significant predictors
ANOVA	-	Tested mean differences across groups
Chi-Square Test	-	Tested associations between categorical variables

##  Author
Author: Fathima Amani Mahroof
BSc. Data Science (2nd Year)
Loan Approval Prediction Project – 2024
