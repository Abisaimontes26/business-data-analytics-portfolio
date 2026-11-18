# Data Dictionary: Telco Customer Churn

**Source:** Kaggle "Telco Customer Churn" (blastchar), originally IBM sample data
**Size:** 7,043 rows, 21 columns
**Grain:** One row = one customer

| Column | Description | Values |
|---|---|---|
| customerID | Unique customer code | Text |
| gender | Customer's gender | Male, Female |
| SeniorCitizen | Whether the customer is a senior citizen | 1 = yes, 0 = no |
| Partner | Has a partner | Yes, No |
| Dependents | Has dependents | Yes, No |
| tenure | Months the customer has been with the company | Number |
| PhoneService | Has phone service | Yes, No |
| MultipleLines | Has multiple phone lines | Yes, No, No phone service |
| InternetService | Type of internet service | DSL, Fiber optic, No |
| OnlineSecurity | Has online security add-on | Yes, No, No internet service |
| OnlineBackup | Has online backup add-on | Yes, No, No internet service |
| DeviceProtection | Has device protection add-on | Yes, No, No internet service |
| TechSupport | Has tech support add-on | Yes, No, No internet service |
| StreamingTV | Streams TV through the company | Yes, No, No internet service |
| StreamingMovies | Streams movies through the company | Yes, No, No internet service |
| Contract | Contract type | Month-to-month, One year, Two year |
| PaperlessBilling | Uses paperless billing | Yes, No |
| PaymentMethod | How the customer pays | Electronic check, Mailed check, Bank transfer (automatic), Credit card (automatic) |
| MonthlyCharges | Current monthly bill in dollars | Number |
| TotalCharges | Total billed to date in dollars | Number |
| Churn | Whether the customer left within the last month | Yes, No |
