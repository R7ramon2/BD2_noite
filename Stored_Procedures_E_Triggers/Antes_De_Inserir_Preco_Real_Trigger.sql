use novo_final;
drop trigger if exists Antes_De_Inserir_Preco;
DELIMITER //
create trigger Antes_De_Inserir_Preco
after insert on vende
for each row
begin
call Altera_Valor_Total(NEW.id_preco);
end//
delimiter ;