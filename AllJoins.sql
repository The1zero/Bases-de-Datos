SELECT a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM platzi.alumnos as a
	FULL OUTER JOIN platzi.carreras as c
	ON a.carrera_id = c.id
ORDER BY a.carrera_id;



SELECT a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM platzi.alumnos as a
	LEFT JOIN platzi.carreras as c
	ON a.carrera_id = c.id
WHERE c.id IS NULL;



SELECT a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM platzi.alumnos as a
	LEFT JOIN platzi.carreras as c
	ON a.carrera_id = c.id
ORDER BY c.id DESC;

SELECT a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM platzi.alumnos as a
	RIGHT JOIN platzi.carreras as c
	ON a.carrera_id = c.id
ORDER BY c.id DESC;

SELECT a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM platzi.alumnos as a
	RIGHT JOIN platzi.carreras as c
	ON a.carrera_id = c.id
WHERE a.id IS NULL
ORDER BY c.id DESC;

SELECT a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM platzi.alumnos as a
	INNER JOIN platzi.carreras as c
	ON a.carrera_id = c.id
ORDER BY c.id DESC;


SELECT a.nombre,
		a.apellido,
		a.carrera_id,
		c.id,
		c.carrera
FROM platzi.alumnos as a
	FULL OUTER JOIN platzi.carreras as c
	ON a.carrera_id = c.id
WHERE a.id IS NULL
	OR c.id IS NULL
ORDER BY a.carrera_id DESC, c.id DESC;

