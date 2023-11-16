/*Valor total das vendas e dos fretes por produto e ordem de venda*/
/*Essa query deve retornar o valor bruto total das vendas e dos fretes, agrupados por produto, considerando cada unidade de ordem de venda*/
SELECT 
SUM(fd.Valor) AS TotalVendas,
SUM(fc.ValorFrete) AS TotalFretes,
p.Produto AS Produto
FROM FatoDetalhes fd
LEFT JOIN FatoCabecalho fc ON fd.CupomID = fc.CupomID
LEFT JOIN Produtos p ON p.ProdutoID = fd.ProdutoID
GROUP BY p.Produto;