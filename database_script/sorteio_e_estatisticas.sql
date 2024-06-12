DELIMITER //

CREATE PROCEDURE SorteioCliente()
BEGIN
    DECLARE ClienteID INT;
    DECLARE ClienteEspecial INT;
    DECLARE Voucher DECIMAL(10,2);
    
    SET ClienteEspecial = (SELECT id_cliente_especial FROM ClienteEspecial ORDER BY RAND() LIMIT 1);
    
    IF ClienteEspecial IS NOT NULL THEN
        SET Voucher = 200.00;
        SELECT id_cliente_especial, nome_cliente_especial, 'Voucher' AS TipoVoucher, Voucher AS Valor
        FROM ClienteEspecial
        WHERE id_cliente_especial = ClienteEspecial;
    ELSE
        SET ClienteID = (SELECT id_cliente FROM Cliente ORDER BY RAND() LIMIT 1);
        SET Voucher = 100.00;
        SELECT id_cliente, nome_cliente, 'Voucher' AS TipoVoucher, Voucher AS Valor
        FROM Cliente
        WHERE id_cliente = ClienteID;
    END IF;
END;

//

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


