INSERT INTO Combustivel (nome)
values
  ("Gasolina Comum"),
  ("Gasolina Aditivada"),
  ("Diesel"),
  ("Etanol")
;

INSERT INTO Cidade (nome, latitude, longitude, estado)
values
  ("Recife", "-08° 03' 14''", "-34° 52' 52''", "PE"), -- 1 
  ("Abreu e Lima", "-07° 54' 42''", "-34° 54' 10''", "PE"), -- 2
  ("Arcoverde", "-08° 25' 08''", "-37° 03' 14''", "PE"), -- 3
  ("Caruaru", "-08° 17' 00''", "-35° 58' 34''", "PE"), -- 4
  ("Garanhuns", "-08° 53' 25''", "-36° 29' 34''", "PE"), -- 5
  ("Cabo de Santo Agostinho", "-08° 17' 12''", "-35° 02' 06''", "PE"), -- 6
  ("Petrolina", "-09° 23' 55''", "-40° 30' 03''", "PE"), -- 7
  ("Moreno", "-08º 07' 07''", "-35º 05' 32''", "PE"), -- 8
  ("João Pessoa", "-7°6'54''", "34°51'47.02''", "PB") -- 9
;

-- Inserindo dois bairros por cidade
INSERT INTO Bairro (nome, id_cidade) 
values
  ("Casa Forte", 1), -- 1
  ("Boa Viagem", 1), -- 2
  ("Fosfato", 2), -- 3
  ("Matinha", 2), -- 4
  ("Cardeal", 3), -- 5
  ("São Cristovão", 3), -- 6
  ("Riachão", 4), -- 7
  ("Vassoural", 4), -- 8
  ("Magano", 5), -- 9
  ("José Maria Dourado", 5), -- 10
  ("Jardim Santo Inácio", 6), -- 11 
  ("Vila Social", 6), -- 12
  ("Rio Claro", 7), -- 13
  ("Dom Avelar", 7), -- 14
  ("Alto da Liberdade", 8), -- 15
  ("Xingu", 8), -- 16
  ("Cabo Branco", 9), -- 17
  ("Manaíra", 9) -- 18
;

-- duas pessoas de cada bairro
INSERT INTO Pessoa (endereco, nome, id_bairro)
values
  ("Av. Dezessete de Agosto, 1112", "Fulana Dalva", 1), -- 1
  ("Estr. do Encanamento, 548", "Sophia Lavinia", 1), -- 2
  ("Av. Boa Viagem", "Sebastiana Rita", 2), -- 3
  ("Rua Almirante Tamandaré", "Emanuel Miguel", 2), -- 4
  ("Rua Rio Avenca", "Carlos Nascimento", 3), -- 5
  ("Trav. Silva Jardim", "Joana Camelo", 3), -- 6
  ("Av. Bom Jesus", "Ivson Oliveira", 4), -- 7
  ("Estr. de Matinha", "Severina Lopes", 4), -- 8
  ("rua Cardeal Arcoverde", "Giulia Goes", 5), -- 9
  ("Rua Dez de Dezembro", "Fernando Wanderley", 5), -- 10
  ("Av José Bonifácio", "Carlos Jose Bonacci", 6), -- 11
  ("R. Calu Filho", "Matias Matos", 6), -- 12
  ("rua Goiás", "Bruna Borges", 7), -- 13
  ("rua Mario Melo", "Claudia Matilda", 7), -- 14
  ("rua David Campista", "Natalia Jorge", 8), -- 15
  ("rua São Lourenço", "Felix Fome", 8), -- 16
  ("R. dos Ferroviarios", "Bruna Carvalho", 9), -- 17
  ("R. Vicente Celestino", "Vitor Sem Ce", 9), -- 18
  ("R. Osvaldo Cruz", "Julia Felix", 10), -- 19
  ("R. Cap. Waldemar Viana", "Samara Chamado", 10), -- 20
  ("R. Maria Helena Lopes", "Erica Marques", 11), -- 21
  ("Tv. Amaurílio Veloso", "Heric Taurus", 11), -- 22
  ("R. Jose Severino Ramos", "Klenio Clark", 12), -- 23
  ("R. Amarina Torres", "Vitoria Maria", 12), -- 24
  ("R. da Tâmara", "Fernanda Forebs", 13), -- 25
  ("R. dos Ingás", "Maria Marta", 13), -- 26
  ("R. da Motivação", "Luiz Antunes", 14), -- 27
  ("R. da Fortuna", "Jorge Egroj", 14), -- 28
  ("Rua São Vicente de Paula", "Xuxa Sasha", 15), -- 29
  ("Rua Pedro Gentil da Rocha", "Daniel Matos", 15), -- 30
  ("R. Cachoeira", "Danielly Tavares", 16), -- 31
  ("R. Argentina", "Maura Esteves", 16), -- 32
  ("Av. Cabo Branco", "Amilton Amorim", 17), -- 33
  ("Av. Buarque", "William Watt", 17), -- 34
  ("Av. Esperança", "Tereza Tesoura", 18), -- 35
  ("R. Silvino Chaves", "Raissa Amorim", 18) -- 36
;

INSERT INTO Usuario (id_usuario, login, senha, id_pessoa)
VALUES
  (1,"fulanada", "123456",1),
  (2,"sophlav", "33333s", 2),
  (3,"sebrita", "344432", 3),
  (4,"emanu", "dfm222", 4),
  (5,"carlosnasc", "1001010", 5),
  (6,"jocamelo", "sadas", 6),
  (7,"ivinho", "uuuunnnm", 7),
  (8,"severinalopes", "12321", 8),
  (9,"giugoes", "kdkdk2", 9),
  (10,"fwand", "11123312", 10),
  (11,"cbonacci", "12991", 11),
  (12,"mmatos", "8888h", 12),
  (13,"brborges", "kkkkal", 13),
  (14,"claudinha", "111111", 14),
  (15,"natjorge", "2222", 15),
  (16,"ffome", "44444", 16),
  (17,"bruninha", "123123", 17),
  (18,"vitorsc", "çaçaça", 18),
  (19,"juliafelix", "lauaj", 19),
  (20,"samcham", "31923812", 20),
  (21,"ericamarq", "asjkdjasd", 21),
  (22,"taurush", "gçglf", 22),
  (23,"clarkklenio", "dlflf", 23),
  (24,"vivimaria", "594i34", 24),
  (25,"forebs", "fffffpo023", 25),
  (26,"mariam", "3434932", 26),
  (27,"luizant", "1123123213", 27),
  (28,"egroj", "1o1o12k", 28),
  (29,"xuxuxaxa", "111222344322", 29),
  (30,"matosdani", "101223", 30),
  (31,"tavdanielly", "1232332", 31),
  (32,"maurinha", "111111222", 32),
  (33,"amiltttt", "wkwkw1", 33),
  (34,"willwatt", "qoqoqo", 34),
  (35,"tetetesoura", "10012", 35),
  (36,"raamorim", "1232314", 36)
;

INSERT INTO Bandeira (nome,id_bandeira,url)
values
	("Shell",1,"https://www.shell.com.br/"),
	("Ipiranga",2,"https://portal.ipiranga/wps/portal/ipiranga/inicio"),
    ("Petrobras",3,"http://www.petrobras.com.br/pt/")
;

INSERT INTO Posto (nome_fantasia, id_bandeira, id_bairro, cnpj, telefone, endereco, razao_social)
values
	("Posto BR Casa Forte", 3, 1, "08.156.003/0001-20", "3521-0062", "Av. Dezessete de Agosto, 598", "Posto Casa Forte LTDA"), -- 1
    ("Auto Posto", 1, 3,"11.481.678/0001-50", "3265-7878", "Av. Duque de Caxias, 473", "Auto Posto Duque De Caxias Ltda"), -- 2
    ("Posto Bandeirantes", 3, 6, "10.583.052/0001-91", "3123-2134", "Av Jose Bonifacio, 148", "Irmaos Freire De Lima Limitada"), -- 3
    ("Posto Ipojuca Br", 3, 8, "09.433.052/0001-80", "3225-2665", "R. Antônio Martins, 120", "Posto Ipojuca"), -- 4
    ("Magano Combustiveis", 2, 9, "06.231.192/0001-60", "3448-0903", "Av. Sátiro Ivo, 1096", "Posto Magano"), -- 5 
    ("Posto com GNV", 2, 11, "05.123.124/0001-23", "3344-5542", "PE-060, s/n", "Posto Ipiranga GNV"), -- 6
    ("Posto Petrobras", 3, 14, "07.124.957/0001-56", "3124-7955", "BR-122, 407", "Posto BR Petrolina LTDA"), -- 7
    ("Posto Shell", 1, 15, "03.347.499/0001-80", "3423-6844", "BR-232, S/N", "Posto Shell Moreno PE"), -- 8
    ("Posto Ipiranga", 1, 18, "04.231.589/0001-30", "2342-8711", "Av. Euzely Fabrício de Souza, 600", "POsto Manaira Shell"), -- 9
    ("Posto Big Tambaú", 2, 17, "02.312.836/0001-55", "", "Av. Pres. Epitácio Pessoa, 4940", "Posto tambau Ipiranga"), -- 10
    ("Posto Modelo", 2, 2, "04.214.790/0001-69", "3326-6909", "R. Prof. João Medeiros, 233", "Posto Modelo LTDA") -- 11
;

INSERT INTO Veiculo (placa, marca, modelo, id_pessoa, id_posto_combustivel)
values
	("KLA-8904", "Agra", "MARRU", 1, 1),
	("KLP-7151", "Citroen", "Xsara GLX", 3, 1),
	("KVT-0155", "Audi", "A1 SportBack", 4, 2),
	("KBS-1646", "Maserati", "Quattroporte GTS", 6, 3),
	("KBP-2854", "LAMBORGHINI", "AVENTADOR LP", 8, 4),
	("KPA-0940", "Daewoo", "Prince Ace", 9, 4),
	("KIA-5647", "CHERY", "Tiggo", 11, 2),
	("KOP-4688", "LAMBORGHINI", "Huracan", 20, 1),
	("KAL-9809", "Mercedes-Benz", "Sprinter 311", 12, 2),
	("KUF-1698", "Pontiac", "Trans-AM", 30, 2),
	("KGK-7399", "Fiat", "Idea", 10, 2),
	("KFY-9164", "Kia Motors", "Picanto", 23, 1),
	("AUM-5569", "JAC", "J3", 21, 4),
	("KHG-4758", "Volvo", "V40", 24, 4),
	("KKV-1039", "Suzuki", "Grand Vitara", 25, 4),
	("KFK-0846", "Cadillac", "Seville 4.6", 26, 4),
	("NEZ-4994", "Nissan", "March", 36, 1),
	("NCJ-8669", "Mitsubishi", "Pajero", 31, 1),
	("HYB-6260", "Citroen", "C3", 14, 2),
	("NEJ-8225", "Dodge", "RAM 2500", 2, 3),
	("MYB-4214", "Subaru", "Legacy GX", 7, 3),
	("MEX-7682", "Jeep", "Cherokee", 13, 4),
	("MUP-0366", "Hyundai", "Tucson", 32, 4) -- 23
; 

INSERT INTO Preco (momento)
values
	("2019-10-01 12:23:04"),
	("2019-10-03 09:39:43"),
	("2019-09-31 20:58:31"),
	("2019-09-30 18:22:22"),
	("2019-08-29 20:38:58"),
	("2019-06-24 18:09:28"),
	("2019-05-29 12:38:07"),
	("2019-01-09 07:13:17"),
	("2019-10-16 17:46:20"),
	("2019-05-16 05:46:27"),
	("2019-03-29 11:10:48"),
	("2019-09-01 04:56:19"),
	("2019-08-11 13:37:20"),
	("2019-09-25 15:09:08"),
	("2019-07-04 06:36:34"),
	("2019-06-24 11:14:32"),
	("2019-06-24 09:38:58"),
	("2019-06-23 15:09:50"),
	("2019-07-12 21:05:11"),
	("2019-04-30 14:31:52"),
	("2019-01-23 22:03:59"),
	("2019-10-01 14:52:52"),
	("2019-08-25 06:11:17"),
	("2019-09-01 18:09:47"),
	("2019-10-03 08:08:21"),
	("2019-09-19 15:29:31"),
	("2019-09-24 22:54:04"),
	("2019-08-31 19:26:54"),
	("2019-02-11 16:10:23"),
	("2019-01-01 10:14:57"),
	("2019-09-17 00:08:52") -- 31    
;

INSERT INTO Posto_combustivel(id_combustivel, cnpj, id_preco, id_veiculo)
values
	(1, "04.214.790/0001-69", 1, 1), -- 1
	(1, "02.312.836/0001-55", 2, 1),
	(2, "08.156.003/0001-20", 3, 2),
	(2, "11.481.678/0001-50", 4, 2),
	(4, "10.583.052/0001-91", 5, 3),
	(4, "08.156.003/0001-20", 6, 4),
	(1, "10.583.052/0001-91", 7, 5),
	(2, "04.214.790/0001-69", 8, 6),
	(3, "04.231.589/0001-30", 9, 7),
	(1, "02.312.836/0001-55", 10, 8),
	(2, "04.214.790/0001-69", 11, 9),
	(3, "08.156.003/0001-20", 12, 10),
	(4, "07.124.957/0001-56", 13, 11),
	(2, "05.123.124/0001-23", 14, 11),
	(1, "06.231.192/0001-60", 15, 12),
	(3, "03.347.499/0001-80", 16, 13),
	(1, "03.347.499/0001-80", 17, 14),
	(1, "06.231.192/0001-60", 18, 15),
	(1, "07.124.957/0001-56", 19, 16),
	(3, "05.123.124/0001-23", 20, 17),
	(2, "09.433.052/0001-80", 21, 18),
	(1, "08.156.003/0001-20", 22, 19),
	(2, "08.156.003/0001-20", 23, 20),
	(4, "09.433.052/0001-80", 24, 21),
	(4, "10.583.052/0001-91", 25, 22),
	(1, "11.481.678/0001-50", 26, 23),
	(2, "04.214.790/0001-69", 27, 23),
	(3, "04.214.790/0001-69", 28, 21),
	(4, "04.231.589/0001-30", 29, 18),
	(3, "02.312.836/0001", 30, 19),
	(1, "04.231.589/0001-30", 31, 20) -- 31 
;

INSERT INTO Vende (valor_litro, qtd_litro, id_posto_combustivel, id_preco)
values
	(3.65, 10.25, 1, 3),
    (4.21, 35.85, 2, 3),
    (2.67, 20.77, 3, 3),
    (3.97, 19.29, 4, 3),
    (4.01, 22.23, 5, 3),
    (2.99, 12.91, 6, 3),
    (3.12, 33.39, 7, 3),
    (4.10, 02.08, 8, 3),
    (4.20, 19.99, 9, 3),
    (3.88, 28.25, 10, 3),
    (3.79, 50.28, 11, 3),
    (2.98, 21.39, 12, 3),
    (3.99, 17.76, 13, 3),
    (4.87, 28.32, 14, 3),
    (4.12, 25.66, 15, 3),
    (4.02, 22.56, 16, 3),
    (4.01, 24.36, 17, 3),
    (3.99, 16.81, 18, 3),
    (3.20, 10.92, 19, 3),
    (2.55, 28.88, 20, 3),
    (2.99, 14.25, 21, 3),
    (3.69, 18.23, 22, 3),
    (4.21, 48.31, 23, 3),
    (4.08, 07.25, 24, 3),
    (4.09, 09.36, 25, 3),
    (3.89, 36.21, 26, 3),
    (4.17, 11.59, 27, 3),
    (3.95, 56.11, 28, 3),
    (4.40, 21.21, 29, 3),
    (3.60, 44.55, 30, 3),
	(5.01, 12.44, 31, 4) -- 31    
;


INSERT INTO Tipo_Usuario (nome, login)
values
	("Cliente","fulanada"),
	("Cliente","sophlav"),
	("Cliente","sebrita"), 
	("Cliente","emanu"),
	("Gerente","carlosnasc"),  
	("Cliente","jocamelo"),
	("Cliente","ivinho"),
	("Cliente","severinalopes"), 
	("Cliente","giugoes"),
	("Cliente","fwand"),
	("Cliente","cbonacci"),
	("Cliente","mmatos"),
	("Cliente","brborges"),
	("Cliente","claudinha"),
	("Gerente","natjorge"),
	("Gerente","ffome"),
	("Gerente","bruninha"),
	("Gerente","vitorsc"),
	("Gerente","juliafelix"), 
	("Cliente","samcham"),
	("Cliente","ericamarq"),
	("Gerente","taurush"),
	("Cliente","clarkklenio"),
	("Cliente","vivimaria"),
	("Cliente","forebs"),
	("Cliente","mariam"),
	("Gerente","luizant"),
	("Gerente","egroj"),
	("Gerente","xuxuxaxa"),
	("Cliente","matosdani"),
	("Cliente","tavdanielly"),
	("Cliente","maurinha"),
	("Gerente","amiltttt")
;
