/*Quantidade e valor das vendas por dia, mês, ano*/
/*Essa query deve retornar o valor bruto total das vendas e as quantidades, agrupados por dia, mês e ano (data)*/
SELECT 
SUM(fd.Valor) AS Valor,
SUM(fd.Quantidade) as Quantidade,
fc.Data
FROM FatoDetalhes fd 
LEFT JOIN FatoCabecalho fc ON fd.CupomID = fc.CupomID
GROUP BY fc.Data;