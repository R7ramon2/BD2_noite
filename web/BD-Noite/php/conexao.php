<?php
class Conexao {
    public $pdo;
    function __construct($servername,$username,$password,$database) {
        $servername = "localhost";
        $username = "root";
        $password = "root";
        $database = "bd_noite_posto";
        try {
            $this->pdo = new PDO("mysql:host=$servername;dbname=$database;port=3306", $username, $password);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
        catch(PDOException $e){
            echo "Connection failed: " . $e->getMessage();
        }
    }

    function request_login($user,$senha){
        $sql = "select count(*) as login_status from Usuario where login = :login and senha = :senha;";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindParam(':login',$user);
        $stmt->bindParam(':senha',$senha);
        $stmt->execute();
        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
        return $stmt->fetchAll()[0];
    }

    function consulta_combustivel_mais_vendido(){
        $sql = "SELECT c.nome as \"Nome do Combustivel\", COUNT(c.nome) as \"Quantidade de Vezes\" from Combustivel as c
        INNER JOIN Posto_combustivel as pc
        ON pc.id_combustivel = c.id_combustivel
        INNER JOIN Preco as pr
        ON pr.id_preco = pc.id_preco
        where pr.momento >= \"2019-06-01 00:00:00\"
        GROUP BY c.nome
        ORDER BY \"Quantidade de Vezes\" DESC";

        $stmt = $this->pdo->prepare($sql);
        $stmt->execute();
        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
  
        return $stmt->fetchAll();
    }

    function consulta_media_preco(){
        $sql = "SELECT AVG(v.valor_litro) as Media FROM Vende as v
        INNER JOIN Posto_combustivel as pc
        ON pc.id_posto_combustivel = v.id_posto_combustivel
        INNER JOIN Preco as pr
        ON pr.id_preco = pc.id_preco";

        $stmt = $this->pdo->prepare($sql);
        $stmt->execute();
        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
  
        return $stmt->fetchAll();
    }

    function consulta_posto_mais_vendas(){
        $sql = "SELECT p.nome_fantasia as NomeDoPosto, COUNT(p.nome_fantasia) as Vezes from Posto as p
        INNER JOIN Posto_combustivel as pc
        ON pc.cnpj = p.cnpj
        INNER JOIN Preco as pr
        ON pr.id_preco = pc.id_preco
        GROUP BY p.nome_fantasia
        ORDER BY Vezes DESC ";

        $stmt = $this->pdo->prepare($sql);
        $stmt->execute();
        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
  
        return $stmt->fetchAll();
    }

    function consulta_qtd_litros(){
        $sql = "SELECT p.nome_fantasia as \"Nome Fantasia\", SUM(v.qtd_litro) as \"Quantidade em Litros\" FROM Posto as p
        INNER JOIN Posto_combustivel as pc 
        ON pc.cnpj = p.cnpj
        INNER JOIN Vende as v
        ON v.id_posto_combustivel = pc.id_posto_combustivel
        where p.nome_fantasia = \"Posto BR Casa Forte\"
        GROUP BY nome_fantasia";

        $stmt = $this->pdo->prepare($sql);
        $stmt->execute();
        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
  
        return $stmt->fetchAll();
    }

    function consulta_qtd_vendas(){
        $sql = "SELECT p.nome_fantasia AS \"Nome fantasia\", COUNT(pr.momento) AS \"Quantidade\" from Posto as p
        INNER JOIN Posto_combustivel as pc
        ON pc.cnpj = p.cnpj
        INNER JOIN Preco as pr
        ON pr.id_preco = pc.id_preco
        GROUP BY p.nome_fantasia";

        $stmt = $this->pdo->prepare($sql);
        $stmt->execute();
        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
  
        return $stmt->fetchAll();
    }

    function gabi(){
        $sql = "select * from Posto_combustivel";

        $stmt = $this->pdo->prepare($sql);
        $stmt->execute();
        $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
  
        return $stmt->fetchAll();
    }

}
?>