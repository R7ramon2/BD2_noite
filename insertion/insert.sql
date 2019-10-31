-- inserindo

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
  ("Santa Luzia", 3), -- 6
  ("Riachão", 4), -- 7
  ("Vassoural", 4), -- 8
  ("Mangano", 5), -- 9
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
  ("Rua Joaquim Franklin Cordeiro", "Carlos Jose Bonacci", 6), -- 11
  ("rua dos Mascates", "Matias Matos", 6), -- 12
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

INSERT INTO Usuario (login, senha, id_pessoa)
VALUES
  ("fulanada", "123456", 1),
  ("sophlav", "33333s", 2),
  ("sebrita", "344432", 3),
  ("emanu", "dfm222", 4),
  ("carlosnasc", "1001010", 5),
  ("jocamelo", "sadas", 6),
  ("ivinho", "uuuunnnm", 7),
  ("severinalopes", "12321", 8),
  ("giugoes", "kdkdk2", 9),
  ("fwand", "11123312", 10),
  ("cbonacci", "12991", 11),
  ("mmatos", "8888h", 12),
  ("brborges", "kkkkal", 13),
  ("claudinha", "111111", 14),
  ("natjorge", "2222", 15),
  ("ffome", "44444", 16),
  ("bruninha", "123123", 17),
  ("vitorsc", "çaçaça", 18),
  ("juliafelix", "lauaj", 19),
  ("samcham", "31923812", 20),
  ("ericamarq", "asjkdjasd", 21),
  ("taurush", "gçglf", 22),
  ("clarkklenio", "dlflf", 23),
  ("vivimaria", "594i34", 24),
  ("forebs", "fffffpo023", 25),
  ("mariam", "3434932", 26),
  ("luizant", "1123123213", 27),
  ("egroj", "1o1o12k", 28),
  ("xuxuxaxa", "111222344322", 29),
  ("matosdani", "101223", 30),
  ("tavdanielly", "1232332", 31),
  ("maurinha", "111111222", 32),
  ("amiltttt", "wkwkw1", 33),
  ("willwatt", "qoqoqo", 34),
  ("tetetesoura", "10012", 35),
  ("raamorim", "1232314", 36)

;