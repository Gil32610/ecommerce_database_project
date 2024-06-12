CREATE DEFINER=`root`@`localhost` TRIGGER `venda_AFTER_INSERT` AFTER INSERT ON `venda` FOR EACH ROW BEGIN

    DECLARE TotalVendas DECIMAL(10,2);
    DECLARE Bonus DECIMAL(10,2);
	DECLARE Mensagem VARCHAR(50);
    
    SELECT SUM(ValorTotal)
    INTO TotalVendas
    FROM Venda
    WHERE id_vendedor = NEW.id_vendedor;
        IF TotalVendas > 1000.00 THEN
        SET Bonus = TotalVendas * 0.05;
        INSERT INTO FuncionarioEspecial (id_funcionario_especial, aumento)
        VALUES (NEW.id_vendedor, Bonus)
        ON DUPLICATE KEY UPDATE aumento = aumento + Bonus;
        SET Mensagem = CONCAT('Total de bônus necessário: ', Bonus);
        INSERT INTO LogMensagens (mensagem) VALUES (Mensagem);
	
    END IF;

END