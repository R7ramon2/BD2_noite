-- 1- Quantidade de vendas, de um posto X, realizadas em um determinado tempo.
-- caso: do mês Junho p/ cima
SELECT COUNT(pr.momento) from Preco as pr
where pr.momento >= "2019-06-01 00:00:00"
