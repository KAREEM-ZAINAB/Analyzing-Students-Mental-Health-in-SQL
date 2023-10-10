---Explore and understand the data alias result with count_inter_dom
SELECT COUNT(*) AS count_inter_dom
FROM students.csv;

---Group records to find out the number of international and domestic students alias result with total_records
SELECT inter_dom, COUNT(*) AS total_records
FROM students.csv
GROUP BY inter_dom;

---Filter by international students using the WHERE clause 
SELECT *
FROM students.csv
WHERE inter_dom = 'Inter';

---Filter by domestic students using WHERE clause 
SELECT *
FROM students.csv
WHERE inter_dom = 'Dom';

---Filter by the unknown status of students using the WHERE clause 
SELECT *
FROM  students.csv
WHERE inter_dom IS NULL;

---Query summary statistics for all students using the MIN, MAX and AVG functions
SELECT MIN(todep) AS min_phq,
	MAX(todep) AS max_phq,
		ROUND(AVG(todep), 2) AS avg_phq
FROM students.csv;

---Query summary statistics for international students score of acculturative stress
SELECT MIN(tosc) AS min_scs,
	MAX(tosc) AS max_scs,
		ROUND(AVG(tosc), 2) AS avg_scs
FROM students.csv;

---Query summary statistics for international students score of social connectedness
SELECT MIN(toas) AS min_as,
	MAX(toas) AS max_as,
	ROUND(AVG(toas), 2) AS avg_asiss
FROM students.csv;

---Query summary statistics for international students score of depression
SELECT MIN(todep) AS min_phq,
	MAX(todep) AS max_phq,
	ROUND(AVG(todep), 2) AS avg_phq,
	MIN(tosc) AS min_scs,
	MAX(tosc) AS max_scs,
	ROUND(AVG(tosc), 2) AS avg_scs,
	MIN(toas) AS min_as,
	MAX(toas) AS max_as,
	ROUND(AVG(todep), 2) AS avg_phq
FROM students.csv
WHERE inter_dom = 'Inter';

---Calculate the length of stay of international students and how it impacts their diagnostic tests
SELECT stay AS length_of_stay, 
ROUND(AVG(todep), 2) AS avg_phq,
ROUND(AVG(tosc), 2) AS avg_scs,
ROUND(AVG(todep), 2) AS avg_phq
FROM students.csv
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC;
