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
INSERT INTO Pessoa (login, endereco, nome, id_bairro)
values
  ("fulanada", "Av. Dezessete de Agosto, 1112", "Fulana Dalva", 1), -- 1
  ("sophlav", "Estr. do Encanamento, 548", "Sophia Lavinia", 1), -- 2
  ("sebrita", "Av. Boa Viagem", "Sebastiana Rita", 2), -- 3
  ("emanu", "Rua Almirante Tamandaré", "Emanuel Miguel", 2), -- 4
  ("carlosnasc", "Rua Rio Avenca", "Carlos Nascimento", 3), -- 5
  ("jocamelo", "Trav. Silva Jardim", "Joana Camelo", 3), -- 6
  ("ivinho", "Av. Bom Jesus", "Ivson Oliveira", 4), -- 7
  ("severinalopes", "Estr. de Matinha", "Severina Lopes", 4), -- 8
  ("giugoes", "rua Cardeal Arcoverde", "Giulia Goes", 5), -- 9
  ("fwand", "Rua Dez de Dezembro", "Fernando Wanderley", 5), -- 10
  ("cbonacci", "Rua Joaquim Franklin Cordeiro", "Carlos Jose Bonacci", 6), -- 11
  ("mmatos", "rua dos Mascates", "Matias Matos", 6),
  ("brborges", "rua Goiás", "Bruna Borges", 7),
  ("claudinha", "rua Mario Melo", "Claudia Matilda", 7),
  ("natjorge", "rua David Campista", "Natalia Jorge", 8),
  ("ffome", "rua São Lourenço", "Felix Fome", 8),
  ("bruninha", "R. dos Ferroviarios", "Bruna Carvalho", 9),
  ("vitorsc", "R. Vicente Celestino", "Vitor Sem Ce", 9),
  ("juliafelix", "R. Osvaldo Cruz", "Julia Felix", 10),
  ("samcham", "R. Cap. Waldemar Viana", "Samara Chamado", 10),
  ("ericamarq", "R. Maria Helena Lopes", "Erica Marques", 11),
  ("taurush", "Tv. Amaurílio Veloso", "Heric Taurus", 11),
  ("clarkklenio", "R. Jose Severino Ramos", "Klenio Clark", 12),
  ("vivimaria", "R. Amarina Torres", "Vitoria Maria", 12),
  ("forebs", "R. da Tâmara", "Fernanda Forebs", 13),
  ("mariam", "R. dos Ingás", "Maria Marta", 13),
  ("luizant", "R. da Motivação", "Luiz Antunes", 14),
  ("egroj", "R. da Fortuna", "Jorge Egroj", 14),
  ("xuxuxaxa", "Rua São Vicente de Paula", "Xuxa Sasha", 15),
  ("matosdani", "Rua Pedro Gentil da Rocha", "Daniel Matos", 15),
  ("tavdanielly", "R. Cachoeira", "Danielly Tavares", 16),
  ("maurinha", "R. Argentina", "Maura Esteves", 16),
  ("amiltttt", "Av. Cabo Branco", "Amilton Amorim", 17),
  ("willwatt", "Av. Buarque", "William Watt", 17),
  ("tetetesoura", "Av. Esperança", "Tereza Tesoura", 18),
  ("raamorim", "R. Silvino Chaves", "Raissa Amorim", 18)
;