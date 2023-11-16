/*Valor de venda por tipo de produto*/
/*Essa query deve retornar o valor bruto das vendas agrupadas por tipo de produto*/
SELECT 
ProdutoID,
SUM(Valor) AS Valor 
FROM FatoDetalhes
GROUP BY ProdutoID