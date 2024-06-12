CREATE DEFINER=`root`@`localhost` PROCEDURE `Realizar_Venda`(
    IN p_id_vendedor INT,
    IN p_id_cliente INT,
    IN p_id_produto INT
)
BEGIN
    DECLARE v_id_venda INT;
    
    -- Decrementar a quantidade do produto em 1
    UPDATE produto
    SET quantidade_produto = quantidade_produto - 1
    WHERE id_produto = p_id_produto;

    -- Inserir os detalhes da venda na tabela de vendas
    INSERT INTO venda (data_venda, id_vendedor, id_cliente, id_produto)
    VALUES (NOW(), p_id_vendedor, p_id_cliente, p_id_produto);

    -- Obter o ID da venda inserida
    SET v_id_venda = LAST_INSERT_ID();

    -- Retornar o ID da venda
    SELECT v_id_venda AS id_venda;
END