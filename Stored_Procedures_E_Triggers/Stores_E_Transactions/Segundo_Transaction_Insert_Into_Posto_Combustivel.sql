use novo_final;
DROP procedure if exists insert_into_posto_combustivel;
DELIMITER //
CREATE PROCEDURE insert_into_posto_combustivel(ID_Posto_Combustivel INT(11),ID_Combustivel INT(11),CNPJ VARCHAR(60),ID_Preco INT(11),Placa_Veiculo VARCHAR(15))
begin
	DECLARE erro_sql TINYINT DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
		set erro_sql = TRUE;
	start transaction;
	insert into posto_combustivel values (ID_Posto_Combustivel,ID_Combustivel,CNPJ,ID_Preco,Placa_Veiculo);
    if erro_sql = false then 
		commit;
		select 'Intens Inseridos Corretamente Em Posto_Combustivel';
    else
		ROLLBACK;
        select 'Erro Na Insercao De Itens Na Tabela De Posto_Combustivel';
	end if;
end //
DELIMITER ;
CALL insert_into_posto_combustivel(1, 1, '04.214.790/0001-69', 1, 'KLA-8904');