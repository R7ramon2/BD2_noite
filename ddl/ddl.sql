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
    valor float,
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
    cnpj INT NOT NULL,
    telefone VARCHAR(15),
    razao_social VARCHAR(15),
    endereco VARCHAR(255),
    id_bairro INT,
    PRIMARY KEY (cnpj),
    FOREIGN KEY (id_bairro) REFERENCES Bairro(id_bairro),
    FOREIGN KEY (id_bandeira) REFERENCES Bandeira(id_bandeira)
);

CREATE TABLE IF NOT EXISTS Venda(
	id_venda INT NOT NULL auto_increment,
    litragem FLOAT,
    momento datetime,
    primary key (id_venda)
);
alter table Venda auto_increment=1;

CREATE TABLE IF NOT EXISTS Posto_combustivel(
    id_combustivel INT NOT NULL,
    cnpj INT NOT NULL,
    id_venda int NOT NULL,
    FOREIGN KEY (id_combustivel) REFERENCES Combustivel(id_combustivel),
    FOREIGN KEY (cnpj) REFERENCES Posto(cnpj),
    FOREIGN KEY (id_venda) REFERENCES Venda(id_venda)
);

CREATE TABLE IF NOT EXISTS Veiculo (
    modelo VARCHAR(30),
    placa VARCHAR(10) NOT NULL,
    marca VARCHAR(30),
    id_pessoa INT NOT NULL,
    PRIMARY KEY (placa),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);

CREATE TABLE IF NOT EXISTS Usuario(
    login VARCHAR(30),
    senha VARCHAR(30),
    id_usuario INT NOT NULL AUTO_INCREMENT,
    id_pessoa INT NOT NULL,
    PRIMARY KEY (id_usuario),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);
ALTER TABLE Usuario AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS Tipo_Usuario(
    nome VARCHAR(30),
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)  
);


