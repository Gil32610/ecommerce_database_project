CREATE DEFINER=`root`@`localhost` PROCEDURE `vendedor_associado_ao_produto_mais_vendido`()
BEGIN
SELECT 
    funcionario.id_funcionario,
    funcionario.nome_funcionario,
    produto.nome_produto,
    COUNT(*) AS quantidade_vendida
FROM venda 
JOIN funcionario  ON venda.id_vendedor = funcionario.id_funcionario
JOIN produto  ON venda.id_produto = produto.id_produto
WHERE venda.id_produto = (
SELECT id_produto
FROM (SELECT id_produto, COUNT(*) AS quantidade_vendas
FROM venda GROUP BY id_produto
ORDER BY quantidade_vendas DESC
LIMIT 1
) AS sub_q
)
GROUP BY funcionario.id_funcionario,
funcionario.nome_funcionario,
produto.nome_produto;
END