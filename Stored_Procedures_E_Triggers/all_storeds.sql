
drop procedure if exists Altera_Valor_Total;
DELIMITER //
create procedure Altera_Valor_Total(ID_Preco int)
begin
declare Quantidade_Litro INT;
declare Quantidade_Valor INT;
select SUM(Vende.qtd_litro),SUM(Vende.valor_litro) INTO Quantidade_Litro,Quantidade_Valor from Preco join Vende where ID_Preco = Preco.id_preco and Preco.id_preco = Vende.id_preco;
update Preco set Preco.valor_total = (Quantidade_Litro * Quantidade_Valor) WHERE Preco.id_preco = ID_Preco;
end //
DELIMITER ;
call Altera_Valor_Total(3);


drop trigger if exists Antes_De_Inserir_Preco;
DELIMITER //
create trigger Antes_De_Inserir_Preco
after insert on Vende
for each row
begin
call Altera_Valor_Total(NEW.id_preco);
end//
delimiter ;

DELIMITER //
create trigger Antes_De_Inserir_Pessoa
before insert on Pessoa
for each row
begin
call Pessoa_Checker(NEW.id_bairro);
end//
delimiter ;


drop procedure if exists Pessoa_Checker;
DELIMITER //
create procedure Pessoa_Checker(ID_Bairro int)
begin
declare variavel INT;
select COUNT(Pessoa.id_bairro) into variavel FROM Pessoa join Bairro where ID_Bairro = Bairro.id_bairro;
if variavel = 0 then
	signal sqlstate '50000'
    set message_text = 'Bairro Nao Existente Ou Nao Inserido No Banco ';
end if;
end //
DELIMITER ;
call Pessoa_Checker(300);
    
DELIMITER //
create trigger Antes_De_Em_Veiculo
before insert on Veiculo
for each row
begin
call Placa_Checker(NEW.placa);
end//
delimiter ;



drop procedure if exists Placa_Checker;
DELIMITER //
create procedure Placa_Checker(Usuario_Placa VARCHAR(15))
begin
declare variavel VARCHAR(15);
select COUNT(Veiculo.placa) into variavel FROM Veiculo where Veiculo.placa = Usuario_Placa;
if variavel > 0 then
	signal sqlstate '50000'
    set message_text = 'Dois Carros Nao Podem Possuir A Mesma Placa ';
end if;
end //
DELIMITER ;
call Placa_Checker('GHK-1233');
    
--teste
drop procedure if exists mais_visitado_Posto_cliente;
DELIMITER //
create procedure mais_visitado_Posto_cliente(Nome_Cliente VARCHAR(45))
begin
select nome,Pessoa.id_pessoa,Veiculo.placa,id_Posto_combustivel,id_combustivel, COUNT(id_Posto_combustivel) as Numero_De_Vezes, Posto.razao_social
from Pessoa join Veiculo join Posto_combustivel join Posto 
where Nome_Cliente = Pessoa.nome 
and Pessoa.id_pessoa = Veiculo.id_pessoa 
and Veiculo.placa = Posto_combustivel.placa;
end //
DELIMITER ;
CALL mais_visitado_Posto_cliente('Joana Camelo');



drop procedure if exists gasto_total_do_Posto;
DELIMITER //
create procedure gasto_total_do_Posto(CNPJ_DO_Posto VARCHAR(40))
begin
select Posto.cnpj,Posto.nome_fantasia,bairro.nome,cidade.nome,cidade.estado,(Vende.qtd_litro) as Total_De_Litros,(Vende.qtd_litro * Vende.valor_litro) as Total_Em_Dinheiro from
Posto join bairro join cidade join Posto_combustivel join Vende where Posto.cnpj = CNPJ_DO_Posto 
and Posto_combustivel.cnpj = Posto.cnpj 
and Vende.id_Posto_combustivel = Posto_combustivel.id_Posto_combustivel;
end //
DELIMITER //
call gasto_total_do_Posto('04.231.589/0001-30')


drop procedure if exists Posto_mais_barato;
DELIMITER //
create procedure Posto_mais_barato(ID_Da_Cidade int)
begin
select Cidade.nome,
Bairro.nome,
Bairro.id_cidade,
Bairro.id_bairro,
Posto.nome_fantasia,
Posto.cnpj,
Posto.telefone,
Vende.valor_litro,
(Vende.valor_litro * Vende.qtd_litro) as Total_Vendido_Em_Reais,
Combustivel.nome,Combustivel.id_combustivel from
Cidade 
join Bairro 
join Combustivel 
join Posto 
join Posto_combustivel 
join Vende where (select MIN(Vende.valor_litro) from Vende) = Vende.valor_litro and
Cidade.id_cidade = ID_Da_Cidade;
end //
DELIMITER ;
call Posto_mais_barato(1);

DELIMITER //
create trigger Antes_De_Inserir_Usuario
before insert on usuario
for each row
begin
call Usuario_Checker(NEW.login);
end//
delimiter ;


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
    
