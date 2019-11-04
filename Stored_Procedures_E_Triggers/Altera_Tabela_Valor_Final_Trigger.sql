use novo_final;
drop procedure if exists Altera_Valor_Total;
DELIMITER //
create procedure Altera_Valor_Total(ID_Preco int)
begin
declare Quantidade_Litro INT;
declare Quantidade_Valor INT;
select SUM(vende.qtd_litro),SUM(vende.valor_litro) INTO Quantidade_Litro,Quantidade_Valor from preco join vende where ID_Preco = preco.id_preco and preco.id_preco = vende.id_preco;
update preco set preco.valor_total = (Quantidade_Litro * Quantidade_Valor) WHERE preco.id_preco = ID_Preco;
end //
DELIMITER ;
call Altera_Valor_Total(3);

