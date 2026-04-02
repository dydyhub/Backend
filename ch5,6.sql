SELECT COUNT(*) FROM sample51;

SELECT COUNT(*) FROM sample51 WHERE name = 'A';

SELECT COUNT(ALL name), COUNT(DISTINCT name) FROM sample51;

SELECT AVG(
        CASE
            WHEN quantity IS NULL THEN 0
            ELSE quantity
        END
    ) AS avgnull0
FROM sample51;

SELECT MIN(quantity), MAX(quantity), MIN(name), MAX(name)
FROM sample51;

SELECT name, COUNT(name)
FROM sample51
GROUP BY
    name
HAVING
    COUNT(name) = 1;

SELECT MIN(no), name, SUM(quantity) FROM sample51 GROUP BY name;

SELECT no, quantity FROM sample51 GROUP BY no, quantity;

SELECT name, COUNT(name), SUM(quantity)
FROM sample51
GROUP BY
    name
ORDER BY SUM(quantity) DESC;

DELETE FROM sample54 WHERE a = ( SELECT MIN(a) FROM sample54 );

SELECT * FROM sample54;

SELECT (
        SELECT COUNT(*)
        FROM sample51
    ) AS sq1, (
        SELECT COUNT(*)
        FROM sample54
    ) AS sq2;

SELECT *
FROM (
        SELECT *
        FROM sample54
        ORDER BY a DESC
    ) sq
WHERE
    ROWNUM <= 2;

INSERT INTO
    sample541
VALUES (
        (
            SELECT COUNT(*)
            FROM sample51
        ),
        (
            SELECT COUNT(*)
            FROM sample54
        )
    );

SELECT * FROM sample541;

INSERT INTO sample541 SELECT 1, 2;

SELECT * FROM sample541;

INSERT INTO sample542 SELECT * FROM sample543;

UPDATE sample551
SET
    a = '있음'
WHERE
    EXISTS (
        SELECT *
        FROM sample 552
        WHERE
            no2 = no
    );

SELECT * FROM sample551;

UPDATE sample551
SET
    a = '없음'
WHERE
    NO EXISTS (
        SELECT *
        FROM sample 552
        WHERE
            no2 = no
    );

SELECT * FROM sample551;

SELECT * FROM sample551 WHERE no IN (3, 5);

SELECT * FROM sample551 WHERE no IN ( SELECT no2 FROM sample 552 );

CREATE TABLE sample62 (
    no INTEGER NOT NULL,
    a VARCHAR(30),
    b DATE
);

DESC sample62;

ALTER TABLE sample62 CHANGE newcol c VARCHAR(20);

DESC sample62;

ALTER TABLE sample62 MODIFY newcol VARCHAR(20);

DESC sample62;

ALTER TABLE sample62 ADD newcol INTEGER;

DESC sample62;

ALTER TABLE sample62 DROP c;

DESC sample62;

CREATE TABLE sample631 (
    a INTEGER NOT NULL,
    b INTEGER NOT NULL UNIQUE,
    c VARCHAR(30)
);

CREATE TABLE sample632 (
    no INTEGER NOT NULL,
    sub_no INTEGER NOT NULL,
    name VARCHAR(30),
    PRIMARY KEY (no, sub_no)
);

CREATE TABLE sample632 (
    no INTEGER NOT NULL,
    sub_no INTEGER NOT NULL,
    name VARCHAR(30),
    CONSTRAINT pkey_sample PRIMARY KEY (no, sub_no)
);

CREATE INDEX isample65 ON sample62 (no);

DROP INDEX isample65 ON sample62;

EPLAIN SELECT * FROM sample62 WHERE a = 'a';

EPLAIN SELECT * FROM sample62 WHERE no > 10;

CREATE VIEW sample_view_672 (n, v, v2) AS
SELECT no, a, a * 2
FROM sample54;

SELECT * FROM sample_view_672 WHERE n = 1;

DROP VIEW sample_view_67;