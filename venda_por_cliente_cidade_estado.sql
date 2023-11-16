/*Venda por cliente, cidade do cliente e estado*/
/*Essa query deve retornar uma visão geral das vendas por cliente, cidade e país (aqui considerer país porque a informação estado não consta na base)*/
SELECT 
c.Cliente AS Cliente,
c.Cidade AS Cidade,
c.Pais AS Pais,
SUM(fd.Valor) AS Valor,
SUM(fd.ValorLiquido) AS Valor Liquido,
SUM(fd.Quantidade) AS quantidade
FROM FatoDetalhes fd
LEFT JOIN FatoCabecalho fc ON fd.CupomID = fc.CupomID
LEFT JOIN Clientes c ON fc.ClienteID = c.ClienteID
GROUP BY c.cliente, c.cidade, c.Pais;