use novo_final;
drop procedure if exists Usuario_Checker;
DELIMITER //
create procedure Usuario_Checker(Usuario_Login VARCHAR(30))
begin
declare variavel VARCHAR(30);
select COUNT(usuario.login) into variavel FROM usuario where usuario.login = Usuario_Login;
if variavel > 0 then
	signal sqlstate '50000'
    set message_text = 'Usuario Ja Existente, Digitar Outro Nome Para Cadastro ';
end if;
end //
DELIMITER ;
call Usuario_Checker('sophlav');
    
