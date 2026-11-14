# Data Dictionary: Superstore Sales Dataset

**Source:** Kaggle, "Superstore Dataset" by Vivek Chowdhury
**Size:** 9,994 rows, 21 columns
**Grain:** One row = one product line within an order (an order can have several rows)

| Column | Description | Type |
|---|---|---|
| Row ID | Row counter, not meaningful for analysis | Number |
| Order ID | Order number (repeats across rows) | Text |
| Order Date | Date the order was placed | Date |
| Ship Date | Date the order shipped | Date |
| Ship Mode | Shipping speed (Standard, Second Class, etc.) | Text |
| Customer ID | Unique customer code | Text |
| Customer Name | Customer's name | Text |
| Segment | Consumer, Corporate, or Home Office | Text |
| Country | Country of delivery | Text |
| City | City of delivery | Text |
| State | State of delivery | Text |
| Postal Code | ZIP code (store as text to keep leading zeros) | Text |
| Region | Sales region (East, West, Central, South) | Text |
| Product ID | Unique product code | Text |
| Category | Furniture, Office Supplies, or Technology | Text |
| Sub-Category | More specific product type (Chairs, Phones, etc.) | Text |
| Product Name | Name of the product | Text |
| Sales | Dollar amount of the line | Number |
| Quantity | Units sold | Number |
| Discount | Discount applied (0.2 = 20%) | Number |
| Profit | Profit on the line (negative = a loss) | Number |
