SELECT *
FROM platzi.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion))=2019;

SELECT *
FROM platzi.alumnos
WHERE (DATE_PART('YEAR',fecha_incorporacion))=2019;

SELECT *
FROM(
	SELECT *,
		DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion
	FROM platzi.alumnos
) AS alumnos_con_anio
WHERE anio_incorporacion = 2020;

SELECT *
FROM platzi.alumnos
WHERE (EXTRACT(YEAR FROM fecha_incorporacion))=2018 AND
		(EXTRACT(MONTH FROM fecha_incorporacion))= 05 ;

SELECT *
FROM platzi.alumnos
WHERE (DATE_PART('YEAR',fecha_incorporacion)=2018 AND DATE_PART('MONTH',fecha_incorporacion)=5) ;

SELECT *
FROM(
	SELECT *,
		DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion,
		DATE_PART('MONTH', fecha_incorporacion) AS mes_incorporacion
	FROM platzi.alumnos
) AS alumnos_con_anio
WHERE anio_incorporacion = 2018 AND mes_incorporacion = 05;
