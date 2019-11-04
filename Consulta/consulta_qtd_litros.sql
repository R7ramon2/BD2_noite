-- 2- Quantidade de litros vendidos em um posto X, em um determinado tempo.
SELECT p.nome_fantasia, SUM(v.qtd_litro) FROM Posto as p
INNER JOIN Posto_combustivel as pc 
ON pc.cnpj = p.cnpj
INNER JOIN Vende as v
ON v.id_posto_combustivel = pc.id_posto_combustivel
where p.nome_fantasia = "Posto BR Casa Forte"
GROUP BY nome_fantasia