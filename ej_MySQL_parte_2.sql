--------------------------------------------------------------------------------
-- EJERCICIO Bases de Datos.
-- for The Bridge
-- by xavimat
-- 2022-05-12
--------------------------------------------------------------------------------

-- PARTE 2: Consultas que no modifican los datos.

-- 2. Ejecute las siguientes consultas SQL
-- 2.3 OBTENER DATOS
-- ⦁ Seleccione todos los empleados con un salario superior a 20.000
SELECT * FROM employees WHERE salary > 20000 ORDER BY salary DESC;

-- ⦁ Seleccione todos los empleados con un salario inferior a 10,000
SELECT * FROM employees WHERE salary < 10000 ORDER BY salary DESC;

-- ⦁ Seleccione todos los empleados que tengan un salario entre 14,00 y 50.000
SELECT * FROM employees WHERE salary BETWEEN 14000 AND 50000 ORDER BY salary DESC;

-- ⦁ Seleccione el número total de empleados
SELECT COUNT(*) AS total_employees FROM employees;

-- ⦁ Selecciona los títulos del año 2019
SELECT CONCAT(UCASE(last_name), ', ', first_name) AS full_name, title, title_date
    FROM employees WHERE title_date='2019';

-- ⦁ Seleccione solo el nombre de los empleados en mayúsculas
SELECT CONCAT(last_name, ', ', UCASE(first_name)) AS full_name
    FROM employees ORDER BY full_name ASC;

-- ⦁ Seleccionar el nombre de los empleados sin que se repita ninguno
-- Versión 1:
SELECT DISTINCT first_name
    FROM employees ORDER BY first_name;

-- Versión 2:
SELECT first_name, COUNT(first_name) AS num
    FROM employees GROUP BY first_name ORDER BY first_name;

