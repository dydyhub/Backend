SELECT * FORM sample21 WHERE no = 2;

SELECT * FORM sample21 WHERE no <> 2;

SELECT * FORM sample21 WHERE no = '박준용';

SELECT * FORM sample21 WHERE birthday IS NULL;

SELECT * FORM sample21 WHERE no >= 2;

SELECT * FORM sample21 WHERE no < 2;

SELECT * FORM sample21 WHERE a <> 0 AND b <> 0;

SELECT * FORM sample21 WHERE a <> 0 OR b <> 0;

SELECT * FORM sample21 WHERE no = 1 OR no = 2;

SELECT * FORM sample21 WHERE a = 1 OR a = 2 AND b = 1 OR b = 2;

SELECT * FORM sample21 WHERE NOT( a <> 0 OR b <> 0 );

WHERE text LIKE 'SQL%';

WHERE text LIKE '%SQL%';

WHERE text LIKE '%SQL';

WHERE text LIKE '%\%%';