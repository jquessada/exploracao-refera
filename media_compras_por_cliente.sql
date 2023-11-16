/*Média de compras que um cliente faz*/
/*Essa query deve retornar a média da quantidade total de produtos por cliente*/
/*Como uma ordem de compra pode possuir mais de um produto, acredito que seja relevante considerar a quantidade de produtos que cada cliente pede por ordem*/
SELECT 
c.Cliente AS Cliente,
AVG(fd.Quantidade) AS Quantidade
FROM FatoDetalhes fd
LEFT JOIN FatoCabecalho fc ON fd.CupomID = fc.CupomID
LEFT JOIN Clientes c ON c.ClienteID = fc.ClienteID
GROUP BY c.Cliente;