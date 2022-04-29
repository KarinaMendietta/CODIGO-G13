DELIMITER $$

CREATE PROCEDURE listar_alumnos()
BEGIN
    select * from tbl_alumno;
END
$$

DELIMITER ;

CALL listar_alumnos();

-- PROCEDIMIENTO PARA MATRICULAR A UN ALUMNO
-- REGISTRAR LA TABLA TBL_MATRICULA
-- REGISTRAR LA TABLA TBL_MATRICULA_CURSO CON TODOS LOS CURSOS

DELIMITER $$

CREATE PROCEDURE sp_matricular_alumno(IN alumno_id INT)
BEGIN
    --variables
    DECLARE mat_id INT;    
    --registrar matricula
    insert into tbl_matricula(alumno_id,nivel_id,modulo_id)
    values (alu_id,niv_id,mod_id);
    select MAX(matricula_id) into mat_id from tbl_matricula;

    --registrar las matriculas cursos
    SET contador = 1;
    bucle: LOOP
        IF contador > tope THEN

    FOR select curso_id from tbl_curso DO
        insert into tbl_matricula_curso()
        values(mat_id,cur_id);
    END FOR;   


END
$$    
