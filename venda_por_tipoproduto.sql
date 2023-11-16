/*Valor de venda por tipo de produto*/
/*Essa query deve retornar o valor bruto das vendas agrupadas por tipo de produto (categoria)*/
SELECT 
categoria,
SUM(fd.Valor) AS Valor 
FROM FatoDetalhes fd
LEFT JOIN Produtos p ON fd.ProdutoID = p.ProdutoID
LEFT JOIN Categoria c ON p.CategoriaID = c.CategoriaID
GROUP BY CategoriaID;