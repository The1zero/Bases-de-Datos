SELECT  * FROM platzi.alumnos
Limit 1;

SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
;


SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
WHERE row_id=1 ;


SELECT *
FROM (
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumnos_with_row_num
LIMIT 5;

SELECT * FROM platzi.alumnos
FETCH FIRST 5 ROWS ONLY;

SELECT  * FROM platzi.alumnos
Limit 5;

SELECT * 
FROM(
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumno_with_row_num
WHERE row_id < 6;

SELECT * 
FROM(
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumno_with_row_num
WHERE row_id <= 5;

SELECT * 
FROM(
	SELECT ROW_NUMBER() OVER() AS row_id, *
	FROM platzi.alumnos
) AS alumno_with_row_num
WHERE row_id Between 1 and 5;