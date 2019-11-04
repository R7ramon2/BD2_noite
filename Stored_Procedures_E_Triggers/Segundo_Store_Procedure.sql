use novo_final;
drop procedure if exists gasto_total_do_posto;
DELIMITER //
create procedure gasto_total_do_posto(CNPJ_DO_POSTO VARCHAR(40))
begin
select posto.cnpj,posto.nome_fantasia,bairro.nome,cidade.nome,cidade.estado,(vende.qtd_litro) as Total_De_Litros,(vende.qtd_litro * vende.valor_litro) as Total_Em_Dinheiro from
posto join bairro join cidade join posto_combustivel join vende where posto.cnpj = CNPJ_DO_POSTO 
and posto_combustivel.cnpj = posto.cnpj 
and vende.id_posto_combustivel = posto_combustivel.id_posto_combustivel;
end //
DELIMITER //
call gasto_total_do_posto('04.231.589/0001-30')
