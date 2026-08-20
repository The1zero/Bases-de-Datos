SELECT *
FROM platzi.alumnos
WHERE id not in(
	SELECT id
	From platzi.alumnos
	WHERE tutor_id=30
);

SELECT EXTRACT(YEAR FROM fecha_incorporacion) AS anio_incorporacion
From platzi.alumnos;


SELECT DATE_PART('YEAR', fecha_incorporacion) as anio_incorporacion
FROm platzi.alumnos;

SELECT DATE_PART('YEAR', fecha_incorporacion) AS anio_incorporacion,
		DATE_PART('MONTH', fecha_incorporacion) AS mes_incorporacion,
		DATE_PART('DAY', fecha_incorporacion) AS dia_incorporacion
FROM platzi.alumnos;

SELECT EXTRACT(hour FROM fecha_incorporacion) AS hora_incorporacion,
		EXTRACT(minute From fecha_incorporacion) AS minuto_incorporacion,
		EXTRACT(second FROM fecha_incorporacion) AS segundo_incorporacion
From platzi.alumnos;

SELECT DATE_PART('HOUR', fecha_incorporacion) AS hora_incorporacion,
		DATE_PART('MINUTE', fecha_incorporacion) AS minuto_incorporacion,
		DATE_PART('SECOND', fecha_incorporacion) AS segundo_incorporacion
FROM platzi.alumnos;