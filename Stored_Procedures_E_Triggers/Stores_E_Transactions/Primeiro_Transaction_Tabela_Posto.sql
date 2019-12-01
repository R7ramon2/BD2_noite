use novo_final;
DROP procedure if exists insert_posto;
DELIMITER //
CREATE PROCEDURE insert_posto(Nome_Fantasia VARCHAR(40),ID_Bandeira INT(11),ID_Bairro INT(11),CNPJ VARCHAR(40),Telefone VARCHAR(15),Endereco VARCHAR(255),Razao_Social VARCHAR(255))
begin
	DECLARE erro_sql TINYINT DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
		set erro_sql = TRUE;
	start transaction;
	insert into posto values (Nome_Fantasia,ID_Bandeira,ID_Bairro,CNPJ,Telefone,Endereco,Razao_Social);
    if erro_sql = false then 
		commit;
		select 'Intens inseridos corretamente na tabela de posto';
    else
		ROLLBACK;
        select 'Erro na insercao de intens na tabela de posto';
	end if;
end //
DELIMITER ;
CALL insert_posto('Posto Big Tambaú', 2, 17, '02.312.836/0001-55', '3423-6844', 'Av. Pres. Epitácio Pessoa, 4940', 'Posto tambau Ipiranga');

    
        
