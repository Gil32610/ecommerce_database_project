CREATE DEFINER=`root`@`localhost` PROCEDURE `month_min_sales_less_sold_product`()
BEGIN
DECLARE id_produto_menos_vendido INT;
DECLARE quantidade_produto_menos_vendido INT;
DECLARE mes_menor_venda int;
DECLARE nome_produto_menos_vendido VARCHAR(30);

SELECT venda.id_produto INTO id_produto_menos_vendido 
FROM venda 
GROUP BY venda.id_produto 
ORDER BY COUNT(venda.id_produto) 
LIMIT 1;

SELECT month(venda.data_venda) into mes_menor_venda FROM venda
WHERE venda.id_produto = id_produto_menos_vendido
GROUP BY MONTH(VENDA.DATA_VENDA)
ORDER BY COUNT(*) ASC
LIMIT 1;

SELECT produto.nome_produto into nome_produto_menos_vendido FROM produto
WHERE produto.id_produto = id_produto_menos_vendido;

SELECT COUNT(id_produto) into quantidade_produto_menos_vendido FROM venda
WHERE venda.id_produto = id_produto_menos_vendido
AND month(venda.data_venda) = mes_menor_venda;

SELECT id_produto_menos_vendido, quantidade_produto_menos_vendido, mes_menor_venda, nome_produto_menos_vendido;
END