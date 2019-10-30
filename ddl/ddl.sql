CREATE TABLE Preco
(
    momento FLOAT,
    valor FLOAT,
    id_preco int NOT NULL,
    PRIMARY KEY (id_preco)

);


CREATE TABLE Posto_combustivel
(
    id_combustivel INT NOT NULL,
    cnpj INT NOT NULL,
    id_preco int NOT NULL,
    FOREIGN KEY (id_combustivel) REFERENCES Combustivel(id_combustivel),
    FOREIGN KEY (cnpj) REFERENCES Posto(cnpj),
    FOREIGN KEY (id_preco) REFERENCES Preco(id_preco)
);


CREATE TABLE Combustivel
(
    nome VARCHAR(30),
    id_combustivel INT NOT NULL,
    PRIMARY KEY (id_combustivel)
);


CREATE TABLE Abastecido
(
    id_combustivel INT NOT NULL,
    placa VARCHAR(10) NOT NULL,
    FOREIGN KEY (id_combustivel) REFERENCES Combustivel(id_combustivel),
    FOREIGN KEY (placa) REFERENCES Veiculo(placa)
);



CREATE TABLE Veiculo
(
    modelo VARCHAR(30),
    placa VARCHAR(10) NOT NULL,
    marca VARCHAR(30),
    id_pessoa INT,
    PRIMARY KEY (placa)
    FOREIGN KEY (id_pessoa) REFERENCES Bairro(id_pessoa)
);

CREATE TABLE Pessoa
(
    login VARCHAR(30),
    endereco VARCHAR(255),
    id_pessoa INT NOT NULL,
    nome VARCHAR(50),
    id_bairro INT,
    PRIMARY KEY (id_pessoa),
    FOREIGN KEY (id_bairro) REFERENCES Bairro(id_bairro)
);

CREATE TABLE Usuario
(
    login VARCHAR(30),
    senha VARCHAR(30),
    id_usuario INT NOT NULL,
    id_pessoa INT,
    PRIMARY KEY (id_usuario),
    FOREIGN KEY (id_pessoa) REFERENCES Pessoa(id_pessoa)
);


CREATE TABLE Tipo_Usuario
(
    nome VARCHAR(30),
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)  
);

CREATE TABLE Bairro
(
    id_bairro INT NOT NULL,
    id_cidade INT,
    nome VARCHAR(40),
    PRIMARY KEY (id_bairro),
    FOREIGN KEY (id_cidade) REFERENCES Cidade(id_cidade)
);


CREATE TABLE Cidade
(
    nome VARCHAR(40),
    latitude VARCHAR(30),
    longitude VARCHAR(30),
    id_cidade INT NOT NULL,
    estado VARCHAR(40),
    PRIMARY KEY (id_cidade)
);



CREATE TABLE Posto 
(
    nome_fantasia VARCHAR(40),
    bandeira BOOLEAN,
    latitude VARCHAR(30),
    longitude VARCHAR(30),
    cnpj INT NOT NULL,
    telefone VARCHAR(15),
    razao_social VARCHAR(15),
    endereco VARCHAR(255),
    id_bairro INT,
    PRIMARY KEY (cnpj),
    FOREIGN KEY (id_bairro) REFERENCES Bairro(id_bairro)
);