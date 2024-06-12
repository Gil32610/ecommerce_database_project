CREATE DEFINER=`root`@`localhost` PROCEDURE `less_sold_product_amount`()
BEGIN
DECLARE id_produto_menos_vendido INT;
DECLARE nome_produto_menos_vendido VARCHAR(30);
DECLARE valor_total_produto_menos_vendido DECIMAL(10,2);

SELECT venda.id_produto INTO id_produto_menos_vendido 
FROM venda 
GROUP BY venda.id_produto 
ORDER BY COUNT(venda.id_produto) 
LIMIT 1;

SELECT SUM(produto.valor_produto) into valor_total_produto_menos_vendido FROM produto 
join venda on venda.id_produto = produto.id_produto
WHERE venda.id_produto = id_produto_menos_vendido;

SELECT produto.nome_produto INTO nome_produto_menos_vendido FROM produto
WHERE produto.id_produto= id_produto_menos_vendido; 

SELECT id_produto_menos_vendido as "ID " , nome_produto_menos_vendido as "NOME" ,  valor_total_produto_menos_vendido AS "VALOR";
END