CREATE TABLE IF NOT EXISTS Preco(
    momento FLOAT,
    valor FLOAT,
    id_preco int NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (id_preco)
);
ALTER TABLE Preco AUTO_INCREMENT=1;

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
    id_cidade INT,
    nome VARCHAR(40),
    PRIMARY KEY (id_bairro),
    FOREIGN KEY (id_cidade) REFERENCES Cidade(id_cidade)
);
ALTER TABLE Bairro AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS Pessoa(
    login VARCHAR(30),
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
    latitude VARCHAR(30),
    longitude VARCHAR(30),
    cnpj INT NOT NULL,
    telefone VARCHAR(15),
    razao_social VARCHAR(15),
    endereco VARCHAR(255),
    id_bairro INT,
    PRIMARY KEY (cnpj),
    FOREIGN KEY (id_bairro) REFERENCES Bairro(id_bairro),
    FOREIGN KEY (id_bandeira) REFERENCES Bandeira(id_bandeira)
);

CREATE TABLE IF NOT EXISTS Posto_combustivel(
    id_combustivel INT NOT NULL,
    cnpj INT NOT NULL,
    id_preco int NOT NULL,
    FOREIGN KEY (id_combustivel) REFERENCES Combustivel(id_combustivel),
    FOREIGN KEY (cnpj) REFERENCES Posto(cnpj),
    FOREIGN KEY (id_preco) REFERENCES Preco(id_preco)
);

CREATE TABLE IF NOT EXISTS Veiculo (
    modelo VARCHAR(30),
    placa VARCHAR(10) NOT NULL,
    marca VARCHAR(30),
    id_pessoa INT,
    PRIMARY KEY (placa),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);

CREATE TABLE IF NOT EXISTS Abastecido (
    id_combustivel INT NOT NULL,
    placa VARCHAR(10),
    FOREIGN KEY (id_combustivel) REFERENCES Combustivel(id_combustivel),
    FOREIGN KEY (placa) REFERENCES Veiculo(placa)
);

CREATE TABLE IF NOT EXISTS Usuario(
    login VARCHAR(30),
    senha VARCHAR(30),
    id_usuario INT NOT NULL AUTO_INCREMENT,
    id_pessoa INT,
    PRIMARY KEY (id_usuario),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);
ALTER TABLE Usuario AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS Tipo_Usuario(
    nome VARCHAR(30),
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)  
);


