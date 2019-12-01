use novo_final;
drop function if exists Funcao_Contadora;
DELIMITER //
create function Funcao_Contadora(Placa_Do_Carro VARCHAR(45))
returns INT
begin
	declare variavel INT;
	select count(posto_combustivel.placa) into variavel from posto_combustivel where Placa_Do_Carro = posto_combustivel.placa;
    return variavel;
end //
DELIMITER ;
select Funcao_Contadora('AUM-5569');
