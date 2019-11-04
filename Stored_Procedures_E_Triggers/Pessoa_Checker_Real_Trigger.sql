DELIMITER //
create trigger Antes_De_Inserir_Pessoa
before insert on pessoa
for each row
begin
call Pessoa_Checker(NEW.id_bairro);
end//
delimiter ;