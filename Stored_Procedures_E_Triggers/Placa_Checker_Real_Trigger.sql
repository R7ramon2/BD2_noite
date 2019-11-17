DELIMITER //
create trigger Antes_De_Em_Veiculo
before insert on veiculo
for each row
begin
call Placa_Checker(NEW.placa);
end//
delimiter ;