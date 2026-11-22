-- Project 3: Inpatient Psychiatric Facility Quality Measures (CMS)
-- Tool: DB Browser for SQLite | Table: facility (1,411 rows)

-- 1. Sanity check: row count (expect 1411)
SELECT COUNT(*) FROM facility;

-- 2. List Missouri facilities (expect 30)
SELECT "Facility Name", "City/Town" FROM facility WHERE State = 'MO' ORDER BY "Facility Name";

-- 3. States with the most facilities
SELECT State, COUNT(*) AS facilities FROM facility GROUP BY State ORDER BY facilities DESC LIMIT 5;

-- 4. Missouri average 7-day follow-up (expect 29.9)
-- Blank cells can import as empty text, which SQL counts as 0, so they are filtered out with <> ''
SELECT ROUND(AVG("FAPH-7 %"), 1) FROM facility WHERE State = 'MO' AND "FAPH-7 %" <> '';

-- 5. Top 3 Missouri facilities for 7-day follow-up
SELECT "Facility Name", "City/Town", "FAPH-7 %" FROM facility WHERE State = 'MO' AND "FAPH-7 %" <> '' ORDER BY "FAPH-7 %" DESC LIMIT 3;
