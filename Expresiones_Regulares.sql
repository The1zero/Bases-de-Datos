SELECT lpad('*', CAST(ordinality as int), '*')
FROM generate_series(10,2,-2) WITH ordinality;

SELECT *
FROM generate_series(10,2,-2) WITH ordinality;

SELECT email
FROM platzi.alumnos
WHERE email ~*'[A-Z0-9._%+-]+@google[A-Z0-9.-]+\.[A-Z]{2,4}';

 