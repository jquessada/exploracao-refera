/*Venda por produto*/
/*Essa query retorna uma visão geral das vendas por produto (Valor bruto, valor líquido, quantidade, Produto)*/
SELECT 
p.Produto,
SUM(fd.Valor) AS Valor,
SUM(fd.ValorLiquido) AS Valor Liquido,
SUM(fd.Quantidade) AS quantidade
FROM FatoDetalhes fd
LEFT JOIN Produtos p ON fd.ProdutoID = p.ProdutoID
GROUP BY p.Produto;
