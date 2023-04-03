SET SCHEMA 'diabetes';

SELECT COUNT (DISTINCT(id)) FROM patient p ; -- 768 ids, 768 long

SELECT COUNT (DISTINCT(patientid)) AS n_p_id, 
COUNT (DISTINCT(id)) AS n_id,
COUNT (*) AS n
FROM blood_metrics; -- 1003	patients, 1771 ids,	1771 ROWS

SELECT COUNT (DISTINCT(patientid)) AS n_p_id, 
COUNT (DISTINCT(id)) AS n_id,
COUNT (*) AS n
FROM pedigree_outcome po; -- every row and id unique -- 768 each

SELECT COUNT (DISTINCT(patientid)) AS n_p_id, 
COUNT (DISTINCT(id)) AS n_sk_id,
COUNT (*) AS n
FROM skin; -- every row and id unique -- 768 EACH

-- First join the three with 768 rows, then full join on blood_metrics

-- blood_metrics bm 
SELECT COUNT (DISTINCT(patientid)) AS n_p_id, 
COUNT (DISTINCT(id)) AS n_id,
COUNT (*) AS n
FROM blood_metrics
WHERE measurement_date = '2022-12-13'; -- ONLY 1003 ROWS

SELECT p.id AS patient_id, p."Age", p.pregnancies, p.bmi,
pdg.diabetespedigreefunction AS pdg_function, pdg.outcome AS outcome,
sk.skinthickness AS skinthickness,
bm.insulin AS insulin,
bm.glucose AS glucose,
bm.bloodpressure AS bpres
FROM patient AS p
INNER JOIN pedigree_outcome AS pdg
ON p.id = pdg.patientid
INNER JOIN skin AS sk
ON p.id = sk.patientid
INNER JOIN blood_metrics AS bm 
ON p.id = bm.patientid
WHERE bm.measurement_date = '2022-12-13'; -- 768 lang 

