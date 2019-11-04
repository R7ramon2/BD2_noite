use novo_final;
drop procedure if exists Placa_Checker;
DELIMITER //
create procedure Placa_Checker(Usuario_Placa VARCHAR(15))
begin
declare variavel VARCHAR(15);
select COUNT(veiculo.placa) into variavel FROM veiculo where veiculo.placa = Usuario_Placa;
if variavel > 0 then
	signal sqlstate '50000'
    set message_text = 'Dois Carros Nao Podem Possuir A Mesma Placa ';
end if;
end //
DELIMITER ;
call Placa_Checker('GHK-1233');
    
