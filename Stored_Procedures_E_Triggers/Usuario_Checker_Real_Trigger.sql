DELIMITER //
create trigger Antes_De_Inserir_Usuario
before insert on usuario
for each row
begin
call Usuario_Checker(NEW.login);
end//
delimiter ;