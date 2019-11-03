CREATE TABLE IF NOT EXISTS Cidade(
    nome VARCHAR(40),
    latitude VARCHAR(30),
    longitude VARCHAR(30),
    id_cidade INT NOT NULL AUTO_INCREMENT,
    estado VARCHAR(40),
    PRIMARY KEY (id_cidade)
);
ALTER TABLE Cidade AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS Combustivel(
    nome VARCHAR(30),
    id_combustivel INT NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_combustivel)
);
ALTER TABLE Combustivel AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS Bairro(
    id_bairro INT NOT NULL AUTO_INCREMENT,
    id_cidade INT NOT NULL,
    nome VARCHAR(40),
    PRIMARY KEY (id_bairro),
    FOREIGN KEY (id_cidade) REFERENCES Cidade(id_cidade)
);
ALTER TABLE Bairro AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS Pessoa(
    endereco VARCHAR(255),
    id_pessoa INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50),
    id_bairro INT,
    PRIMARY KEY (id_pessoa),
    FOREIGN KEY (id_bairro) REFERENCES Bairro(id_bairro)
);
ALTER TABLE Pessoa AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS Bandeira(
    nome VARCHAR(40),
    id_bandeira INT NOT NULL AUTO_INCREMENT,
    url VARCHAR(40),
    PRIMARY KEY (id_bandeira)
);
ALTER TABLE Bandeira AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS Posto(
    nome_fantasia VARCHAR(40),
    id_bandeira INT NOT NULL,
    id_bairro INT NOT NULL,
    cnpj varchar(15) NOT NULL,
    telefone VARCHAR(15),
    endereco VARCHAR(255),
    razao_social VARCHAR(15),
    PRIMARY KEY (cnpj),
    FOREIGN KEY (id_bairro) REFERENCES Bairro(id_bairro),
    FOREIGN KEY (id_bandeira) REFERENCES Bandeira(id_bandeira)
);

CREATE TABLE IF NOT EXISTS Preco(
    id_preco INT NOT NULL auto_increment,
    momento datetime,
    valor_total FLOAT,
    primary key (id_preco)
);
alter table Preco auto_increment=1;

CREATE TABLE IF NOT EXISTS Posto_combustivel(
    id_posto_combustivel INT NOT NULL auto_increment,
    id_combustivel INT NOT NULL,
    cnpj varchar(15) NOT NULL,
    id_preco INT NOT NULL,
    PRIMARY KEY(id_posto_combustivel),
    FOREIGN KEY (id_combustivel) REFERENCES Combustivel(id_combustivel),
    FOREIGN KEY (cnpj) REFERENCES Posto(cnpj)
);
ALTER TABLE Posto_combustivel auto_increment=1;

CREATE TABLE IF NOT EXISTS Vende(
     valor_litro FLOAT,
     qtd_litro FLOAT,
     id_posto_combustivel INT NOT NULL,
     id_preco INT NOT NULL,
     FOREIGN KEY (id_preco) REFERENCES Preco(id_preco),
     FOREIGN KEY (id_posto_combustivel) REFERENCES Posto_combustivel(id_posto_combustivel)
);

CREATE TABLE IF NOT EXISTS Veiculo (
    placa VARCHAR(10) NOT NULL,
    marca VARCHAR(30),
    modelo VARCHAR(30),
    id_pessoa INT NOT NULL,
    id_posto_combustivel INT NOT NULL,
    PRIMARY KEY (placa),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa),
    FOREIGN KEY (id_posto_combustivel) REFERENCES Posto_combustivel(id_posto_combustivel)
);

CREATE TABLE IF NOT EXISTS Usuario(
    login VARCHAR(30) NOT NULL,
    senha VARCHAR(30),
    id_pessoa INT NOT NULL,
    PRIMARY KEY (login),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);

CREATE TABLE IF NOT EXISTS Tipo_Usuario(
    nome VARCHAR(30),
    login VARCHAR(30),
    FOREIGN KEY (login) REFERENCES Usuario(login)  
);


