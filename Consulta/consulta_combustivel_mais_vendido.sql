-- 3- Qual o tipo de combustível mais vendido em um determinado tempo
SELECT c.nome as NomeCombustivel, COUNT(c.nome) as Vezes from Combustivel as c
INNER JOIN Posto_combustivel as pc
ON pc.id_combustivel = c.id_combustivel
INNER JOIN Preco as pr
ON pr.id_preco = pc.id_preco
where pr.momento >= "2019-06-01 00:00:00"
GROUP BY c.nome
ORDER BY Vezes DESC
