use novo_final;
drop procedure if exists posto_mais_barato;
DELIMITER //
create procedure posto_mais_barato(ID_Da_Cidade int)
begin
select cidade.nome,
bairro.nome,
bairro.id_cidade,
bairro.id_bairro,
posto.nome_fantasia,
posto.cnpj,
posto.telefone,
vende.valor_litro,
(vende.valor_litro * vende.qtd_litro) as Total_Vendido_Em_Reais,
combustivel.nome,combustivel.id_combustivel from
cidade 
join bairro 
join combustivel 
join posto 
join posto_combustivel 
join vende where (select MIN(vende.valor_litro) from vende) = vende.valor_litro and
cidade.id_cidade = ID_Da_Cidade;
end //
DELIMITER ;
call posto_mais_barato(1);