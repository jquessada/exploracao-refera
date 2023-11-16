/*Lucro dos meses*/
/*Essa query deve retornar o lucro das vendas (valor líquido) agrupado por mês*/
SELECT 
SUM(fd.ValorLiquido) AS Lucro,
fc.Data
FROM FatoDetalhes fd 
LEFT JOIN FatoCabecalho fc ON fd.CupomID = fc.CupomID
GROUP BY MONTH(fc.Data);