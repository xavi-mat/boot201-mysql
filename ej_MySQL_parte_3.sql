--------------------------------------------------------------------------------
-- EJERCICIO Bases de Datos.
-- for The Bridge
-- by xavimat
-- 2022-05-12
--------------------------------------------------------------------------------

-- PARTE 3: Eliminar datos

-- 2.4 BORRAR DATOS
-- ⦁ Elimina el empleado con id = 5
        -- *Si lo hacemos desde la terminal seguid el enunciado tal cual, si lo estáis
        -- haciendo con workbench actualizadlo por (primary_key)es decir el valor único
        -- y en este caso será el id.
DELETE FROM employees WHERE id=5;

-- ⦁ Eliminar a todos los empleados con un salario superior a 20.000
DELETE FROM employees WHERE salary > 20000;