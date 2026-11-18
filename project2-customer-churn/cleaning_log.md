# Data Cleaning Log: Telco Customer Churn

- Checked for duplicate customers: none (every customerID appears once)
- Checked TotalCharges: stored as numbers; 11 blank values, all new customers with tenure 0 (not yet billed), left blank
- Added ChurnFlag column (1 = churned, 0 = stayed) to calculate churn rates
- Noted that SeniorCitizen uses 0/1 while other yes/no columns use Yes/No
- Noted that add-on service columns include "No internet service" / "No phone service", which means "No"
- Kept the original CSV untouched and worked in a copy
