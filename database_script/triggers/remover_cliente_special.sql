DELIMITER //

CREATE TRIGGER RemoveClientFromSpecial AFTER UPDATE ON cliente_especial
FOR EACH ROW
BEGIN
    IF NEW.cashback_cliente_especial = 0 THEN
        DELETE FROM cliente_especial WHERE id_cliente_especial = NEW.id_cliente_especial;
    END IF;
END//

DELIMITER ;
