use novo_final;
drop procedure if exists Pessoa_Checker;
DELIMITER //
create procedure Pessoa_Checker(ID_Bairro int)
begin
declare variavel INT;
select COUNT(pessoa.id_bairro) into variavel FROM pessoa join bairro where ID_Bairro = bairro.id_bairro;
if variavel = 0 then
	signal sqlstate '50000'
    set message_text = 'Bairro Nao Existente Ou Nao Inserido No Banco ';
end if;
end //
DELIMITER ;
call Pessoa_Checker(300);
    
