-- 1- Quantidade de vendas, dos postos cadastrados, realizadas em um determinado tempo.
-- caso: do mês Junho p/ cima
SELECT p.nome_fantasia, COUNT(pr.momento) from Posto as p
INNER JOIN Posto_combustivel as pc
ON pc.cnpj = p.cnpj
INNER JOIN Preco as pr
ON pr.id_preco = pc.id_preco
where pr.momento >= "2019-06-01 00:00:00"
GROUP BY p.nome_fantasia