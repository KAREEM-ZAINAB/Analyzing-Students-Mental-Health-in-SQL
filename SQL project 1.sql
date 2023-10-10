-- Start coding here...
SELECT COUNT(*) AS count_inter_dom
FROM students.csv;

SELECT inter_dom, COUNT(*) AS total_records
FROM students.csv
GROUP BY inter_dom;

SELECT *
FROM students.csv
WHERE inter_dom = 'Inter';

SELECT *
FROM students.csv
WHERE inter_dom = 'Dom';

SELECT *
FROM  students.csv
WHERE inter_dom IS NULL;

SELECT MIN(todep) AS min_phq,
	MAX(todep) AS max_phq,
		ROUND(AVG(todep), 2) AS avg_phq
FROM students.csv;

SELECT MIN(tosc) AS min_scs,
	MAX(tosc) AS max_scs,
		ROUND(AVG(tosc), 2) AS avg_scs
FROM students.csv;

SELECT MIN(toas) AS min_as,
	MAX(toas) AS max_as,
	ROUND(AVG(toas), 2) AS avg_asiss
FROM students.csv;

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

SELECT stay AS length_of_stay, 
ROUND(AVG(todep), 2) AS avg_phq,
ROUND(AVG(tosc), 2) AS avg_scs,
ROUND(AVG(todep), 2) AS avg_phq
FROM students.csv
WHERE inter_dom = 'Inter'
GROUP BY stay
ORDER BY stay DESC;