CREATE DEFINER=`root`@`localhost` PROCEDURE `reajuste_salarial`(porcentagem DECIMAL(5,2), categoria VARCHAR(20))
BEGIN
DECLARE done INT DEFAULT FALSE;
DECLARE id INT;
DECLARE c_funcionario CURSOR FOR SELECT id_funcionario FROM funcionario WHERE cargo_funcionario = categoria;

DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

OPEN c_funcionario;

ciclo_funcionario: LOOP
	FETCH c_funcionario INTO id;
	
	IF done THEN
		LEAVE ciclo_funcionario;
	END IF;
    
    UPDATE funcionario 
    SET salario_funcionario = salario_funcionario + (salario_funcionario * porcentagem / 100) 
    WHERE id_funcionario= id;
END LOOP;
CLOSE c_funcionario;
END