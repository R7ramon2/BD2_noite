-- 3- Qual o tipo de combustível mais vendido em um posto X.
SELECT p.nome_fantasia, pc.id_combustivel, c.nome FROM Posto as p
INNER JOIN Posto_combustivel as pc 
ON pc.cnpj = p.cnpj
INNER JOIN Combustivel as c
ON c.id_combustivel = pc.id_combustivel
GROUP BY pc.id_combustivel