# Data Cleaning Log: Inpatient Psychiatric Facility Quality Measures

**Source:** CMS Quality_Measures_Facility.csv (1,411 facilities, 78 columns)

- Kept 25 of 78 columns: facility ID and location, follow-up care (7 and 30 days), 30-day readmission, alcohol/drug treatment at discharge (SUB-3), transition record (TR-1), medication continuation, and each one's footnote column
- Replaced the text "Not Available" with blank cells and converted measure columns to numbers (done with a script, with help from Claude)
- Stored Facility ID and ZIP Code as text so leading zeros are kept
- Checked for duplicate Facility IDs: none
- Footnote codes found: 1 (too few cases), 5 (results not available this period), 7 (no cases met criteria), and 29 (partial performance period data). Codes 1, 5, and 7 never have a value. Code 29 does, so those rows were kept and flagged
- Confirmed counts after cleaning: 795 facilities with 7-day follow-up values, 1,175 with readmission rates, 1,009 with SUB-3, 1,329 with TR-1, 626 with medication continuation; 30 Missouri facilities
- Original CSV kept untouched
