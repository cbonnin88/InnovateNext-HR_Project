# 🚀 End-to-End HR Attrition Analysis & Prediction
This is a comprehensive portfolio project simulating the work of an HR Data Analyst at a tech company ("InnovateNext"). The project follows a full data lifecycle: starting from raw, messy CSVs, it moves through data cleaning, exploratory data analysis (EDA), advanced SQL querying, predictive machine learning, and concludes with an interactive executive dashboard.

The primary business goal is to identify the key drivers of employee attrition and build a model to predict which current employees are at high risk of leaving

## Dashboard Preview
A live, interactive version of this dashboard can be viewed here: [InnovateNext: People Analytics Dashboard](https://lookerstudio.google.com/s/ozdAyc36JoE)

# 🛠️ Tech Stack
This project leverages a modern, scalable data stack based on Google Cloud Platform and Python.
- Data Cleaning & Transformation: Python (Polars)

- Data Visualization: Python (Plotly Express)

- Data Warehouse & SQL: Google BigQuery

- Machine Learning (Cloud): BigQuery ML (BQML)

- Machine Learning (Local): Python (Scikit-learn)

- BI Dashboarding: Looker Studio

- Environment: Google Colab (for Python notebooks)

# 📁 Project Phases
This project is broken down into 5 distinct phases, mirroring a real-world analytics workflow.

## 1. Data Generation & Cleaning (Python: Polars)
- Four "messy" CSVs (employees, salaries, performance, engagement) were generated.
- Polars was used to:

  - Handle duplicates, null values, and outliers.

  - Standardize categorical data (e.g., " sales" -> "Sales").

  - Correct data types (e.g., "$150,000" -> 150000).

  - Engineer key features like TenureInDays and the target variable Attrition.
## 2. Exploratory Data Analysis (EDA) (Python: Polars + Plotly)
- Aggregations with Polars to find initial insights (e.g., attrition by department).
- Interactive visualizations with Plotly to identify trends in:
  - Salary vs. Attrition (Box Plots)
    
  - Performance vs. Salary (Scatter Plots)
    
  - Tenure vs. Attrition (Violin Plots)
## 3. Advanced SQL Analysis (Google BigQuery)
- The clean data was uploaded to Google BigQuery for scalable analysis.
- 10 advanced SQL queries were written to answer complex business questions, demonstrating:
  - JOINs

  - GROUP BY & HAVING

  - CASE Statements

  - Common Table Expressions (CTEs)

  - Window Functions (RANK(), PARTITION BY, LEAD())
## 4. Predictive Modeling (BQML & Scikit-learn)
- Two models were built to predict the Attrition label (a binary classification problem).
- Model A: BigQuery ML (BQML):

  - A LOGISTIC_REG model was trained directly in BigQuery using SQL.

  - ML.EVALUATE and ML.FEATURE_IMPORTANCE were used to assess the model.

  - ML.PREDICT was used to generate a risk score for all current employees.

- Model B: Scikit-learn (Python)

  - A LogisticRegression model was built using a Pipeline.

  - The pipeline included SimpleImputer, StandardScaler (for numeric features), and OneHotEncoder (for categorical features).

  - Model performance was evaluated using Plotly-based confusion matrices and classification reports.
## Dashboarding (Looker Studio)
- An executive dashboard was built in Looker Studio connected directly to BigQuery.
- The dashboard features:

  - KPI scorecards (Overall Attrition Rate, Headcount, Avg. Salary).

  - Interactive filters for Department and Role.

  - Charts showing attrition drivers.

  - A "Top At-Risk Employees" table, populated by the live BQML prediction query.
