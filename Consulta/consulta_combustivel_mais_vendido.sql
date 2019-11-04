-- 3- Qual o tipo de combustível mais vendido em um posto X.
-- SELECT p.nome_fantasia, MAX(pc.id_combustivel) FROM Posto as p
-- INNER JOIN Posto_combustivel as pc
-- ON pc.cnpj = p.cnpj
-- GROUP BY p.nome_fantasia

-- SELECT cnpj, id_combustivel, MAX(conta) FROM (SELECT pc.cnpj, pc.id_combustivel, count(pc.id_combustivel) as conta FROM Posto_combustivel as pc
-- GROUP BY pc.cnpj, pc.id_combustivel) temp
-- GROUP BY cnpj, id_combustivel
-- TALVEZ USANDO HAVING
