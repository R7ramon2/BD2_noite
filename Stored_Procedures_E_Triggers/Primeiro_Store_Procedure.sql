use novo_final;
drop procedure if exists mais_visitado_posto_cliente;
DELIMITER //
create procedure mais_visitado_posto_cliente(Nome_Cliente VARCHAR(45))
begin
select nome,pessoa.id_pessoa,veiculo.placa,id_posto_combustivel,id_combustivel, COUNT(id_posto_combustivel) as Numero_De_Vezes, posto.razao_social
from pessoa join veiculo join posto_combustivel join posto 
where Nome_Cliente = pessoa.nome 
and pessoa.id_pessoa = veiculo.id_pessoa 
and veiculo.placa = posto_combustivel.placa;
end //
DELIMITER ;
CALL mais_visitado_posto_cliente('Joana Camelo');
