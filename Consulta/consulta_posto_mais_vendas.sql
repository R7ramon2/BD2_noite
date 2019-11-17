-- 4-  Qual o posto que mais vendeu em um determinado tempo.
SELECT p.nome_fantasia as NomeDoPosto, COUNT(p.nome_fantasia) as Vezes from Posto as p
INNER JOIN Posto_combustivel as pc
ON pc.cnpj = p.cnpj
INNER JOIN Preco as pr
ON pr.id_preco = pc.id_preco
where pr.momento >= "2019-06-01 00:00:00"
GROUP BY p.nome_fantasia
ORDER BY Vezes DESC 

