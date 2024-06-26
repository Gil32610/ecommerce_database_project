DELIMITER //

CREATE PROCEDURE SorteioCliente()
BEGIN
    DECLARE id_do_cliente INT;
    DECLARE Voucher DECIMAL(10,2);
    DECLARE cliente_especial_count INT;
    DECLARE cliente_nome VARCHAR(100); -- Variável para armazenar o nome do cliente
    
    -- Seleciona aleatoriamente um id de cliente
    SET id_do_cliente = (SELECT id_cliente FROM cliente ORDER BY RAND() LIMIT 1);
    
    -- Verifica se o cliente selecionado é um cliente especial
    SET cliente_especial_count = (SELECT COUNT(*) FROM cliente_especial WHERE id_cliente = id_do_cliente);
    
    IF cliente_especial_count > 0 THEN
        -- Cliente especial
        SET Voucher = 200.00;
        SELECT nome_cliente_especial INTO cliente_nome FROM cliente_especial WHERE id_cliente = id_do_cliente;
    ELSE
        -- Cliente normal
        SET Voucher = 100.00;
        SELECT nome_cliente INTO cliente_nome FROM cliente WHERE id_cliente = id_do_cliente;
    END IF;
    
    -- Retorna o nome do cliente sorteado e o valor do voucher
    SELECT cliente_nome AS NomeCliente, Voucher AS ValorVoucher;
    
END //

DELIMITER ;


DELIMITER //

CREATE PROCEDURE EstatisticasVendas()
BEGIN
    DECLARE ProdutoMaisVendido INT;
    DECLARE ProdutoMenosVendido INT;

    -- Produto mais vendido
    SELECT id_produto, SUM(Quantidade) AS TotalVendido
    INTO ProdutoMaisVendido
    FROM Venda
    GROUP BY id_produto
    ORDER BY TotalVendido DESC
    LIMIT 1;

    -- Produto menos vendido
    SELECT id_produto, SUM(Quantidade) AS TotalVendido
    INTO ProdutoMenosVendido
    FROM Venda
    GROUP BY id_produto
    ORDER BY TotalVendido ASC
    LIMIT 1;

    -- Produto mais vendido
    SELECT p.nome_produto, SUM(v.Quantidade) AS TotalVendido, f.nome_funcionario AS Vendedor
    FROM Venda v
    JOIN Produto p ON v.id_produto = p.id_produto
    JOIN Funcionario f ON v.id_vendedor = f.id_funcionario
    WHERE v.id_produto = ProdutoMaisVendido
    GROUP BY p.nome_produto, f.nome_funcionario;

    -- Produto menos vendido
    SELECT p.nome_produto, SUM(v.Quantidade) AS TotalVendido, f.nome_funcionario AS Vendedor
    FROM Venda v
    JOIN Produto p ON v.id_produto = p.id_produto
    JOIN Funcionario f ON v.id_vendedor = f.id_funcionario
    WHERE v.id_produto = ProdutoMenosVendido
    GROUP BY p.nome_produto, f.nome_funcionario;

    -- Valor ganho com o produto mais vendido
    SELECT p.nome_produto, SUM(v.ValorTotal) AS ValorGanho
    FROM Venda v
    JOIN Produto p ON v.id_produto = p.id_produto
    WHERE v.id_produto = ProdutoMaisVendido
    GROUP BY p.nome_produto;

    -- Valor ganho com o produto menos vendido
    SELECT p.nome_produto, SUM(v.ValorTotal) AS ValorGanho
    FROM Venda v
    JOIN Produto p ON v.id_produto = p.id_produto
    WHERE v.id_produto = ProdutoMenosVendido
    GROUP BY p.nome_produto;

    -- Mês de maior venda do produto mais vendido
    SELECT MONTH(v.data_venda) AS Mes, SUM(v.Quantidade) AS TotalVendido
    FROM Venda v
    WHERE v.id_produto = ProdutoMaisVendido
    GROUP BY MONTH(v.data_venda)
    ORDER BY TotalVendido DESC
    LIMIT 1;

    -- Mês de menor venda do produto mais vendido
    SELECT MONTH(v.data_venda) AS Mes, SUM(v.Quantidade) AS TotalVendido
    FROM Venda v
    WHERE v.id_produto = ProdutoMaisVendido
    GROUP BY MONTH(v.data_venda)
    ORDER BY TotalVendido ASC
    LIMIT 1;

    -- Mês de maior venda do produto menos vendido
    SELECT MONTH(v.data_venda) AS Mes, SUM(v.Quantidade) AS TotalVendido
    FROM Venda v
    WHERE v.id_produto = ProdutoMenosVendido
    GROUP BY MONTH(v.data_venda)
    ORDER BY TotalVendido DESC
    LIMIT 1;

    -- Mês de menor venda do produto menos vendido
    SELECT MONTH(v.data_venda) AS Mes, SUM(v.Quantidade) AS TotalVendido
    FROM Venda v
    WHERE v.id_produto = ProdutoMenosVendido
    GROUP BY MONTH(v.data_venda)
    ORDER BY TotalVendido ASC
    LIMIT 1;
END;

//

DELIMITER ;


