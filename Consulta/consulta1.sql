SELECT COUNT (*) as n, id_combustivel from Abastecido 
group by id_combustivel 
order by n DESC

SELECT C.nome, COUNT(C.name) AS qtd
FROM Combustivel AS C
INNER JOIN Posto_combustivel AS P ON P.id_combustivel = C.id_combustivel

SELECT sum(C.valor*V.litragem)
FROM Posto_combustivel AS P
INNER JOIN Posto_combustivel AS P on P.id_venda = V.id_venda
INNER JOIN Posto_combustivel AS P on P.id_posto = Posto.id_posto
WHERE Posto.bandeira = BR