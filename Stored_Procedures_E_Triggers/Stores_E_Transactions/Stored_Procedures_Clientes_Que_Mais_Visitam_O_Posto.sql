use novo_final;
drop procedure if exists clientes_mais_visitados_posto;
DELIMITER //
create procedure clientes_mais_visitados_posto(CNPJ_DO_POSTO VARCHAR(45))
begin
select pessoa.nome,pessoa.id_pessoa,posto.razao_social,posto.cnpj,posto_combustivel.id_posto_combustivel,veiculo.placa,Funcao_Contadora(veiculo.placa) as Vezes_No_Posto from pessoa join posto join posto_combustivel join veiculo where CNPJ_DO_POSTO = posto_combustivel.cnpj and
posto_combustivel.cnpj = posto.cnpj and veiculo.id_pessoa = pessoa.id_pessoa group by (veiculo.placa) order by (Vezes_No_Posto) desc;
end //
DELIMITER ;
call clientes_mais_visitados_posto('04.231.589/0001-30');