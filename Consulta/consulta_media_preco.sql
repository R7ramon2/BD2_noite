-- 5- Qual a média de preço de combustivel em um determinado tempo.
SELECT AVG(v.valor_litro) as Media FROM Vende as v
INNER JOIN Posto_combustivel as pc
ON pc.id_posto_combustivel = v.id_posto_combustivel
INNER JOIN Preco as pr
ON pr.id_preco = pc.id_preco
WHERE pr.momento >= "2019-06-01 00:00:00"
