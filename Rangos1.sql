SELECT int4range(10,20) * int4range(15,25);

SELECT numrange(
	(SELECT MIN(tutor_id) FROM platzi.alumnos),
	(SELECT MAX(tutor_id) From platzi.alumnos)
)* numrange(
	(SELECT MIN(carrera_id) FROM platzi.alumnos),
	(SELECT MAX(carrera_id) From platzi.alumnos)
);