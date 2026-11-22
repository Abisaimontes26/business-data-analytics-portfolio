# Data Dictionary: Inpatient Psychiatric Facility Quality Measures

**Source:** CMS Provider Data Catalog, "Inpatient Psychiatric Facility Quality Measure Data - by Facility" (file: Quality_Measures_Facility.csv)
**Size:** 1,411 facilities, 78 columns
**Grain:** One row = one facility

| Column(s) | Description |
|---|---|
| Facility ID, Facility Name, Address, City/Town, State, ZIP Code, County/Parish | Facility identity and location |
| HBIPS-2 (rate per 1000, num, den) | Hours of physical restraint use |
| HBIPS-3 (rate per 1000, num, den) | Hours of seclusion use |
| SMD (%, denominator) | Screening for metabolic disorders |
| SUB-2, SUB-2a (%, denominator) | Alcohol use brief intervention provided or offered / provided |
| SUB-3, SUB-3a (%, denominator) | Alcohol and other drug use disorder treatment provided or offered / provided at discharge |
| TOB-3, TOB-3a (%, denominator) | Tobacco use treatment provided or offered / provided at discharge |
| TR-1 (%, denominator) | Transition record with specified elements received by discharged patients |
| FAPH-7, FAPH-30 (%, denominator) | Follow-up care within 7 or 30 days after psychiatric hospitalization |
| MedCont (%, denominator) | Medication continuation following inpatient psychiatric discharge |
| READM-30-IPF (category, denominator, rate, lower/higher estimate) | Readmission to any hospital within 30 days of discharge, with CMS comparison to the national rate |
| IMM-2 (%, denominator) | Influenza immunization |
| Each "Footnote" column | CMS footnote code. In this file: 1 = number of cases too few to report; 5 = results not available for this reporting period; 7 = no cases met the criteria for the measure; 29 = measure calculated using partial performance period data (copy the full wording from Footnote_Crosswalk.csv). Codes 1, 5, and 7 always have no value ("Not Available"); code 29 has a value. |
| Start/End Date columns | Reporting period for each group of measures |

**Notes**
- Rate and percentage columns contain the text "Not Available" for some facilities, so they load as text until cleaned.
- Reporting periods differ by measure (most are calendar year 2024; follow-up care is July 2023 to June 2024; readmission and medication continuation start July 2022).
- Facility results are not patient-level data, and small facilities may have suppressed values.
