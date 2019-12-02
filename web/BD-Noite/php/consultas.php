<?php
require 'conexao.php';

header('Content-Type: text/html; charset=iso');
header('Content-Type: application/json');

$servername = "localhost";
$username = "root";
$password = "root";
$database = "bd_noite_posto";
$conexao = new Conexao($servername,$username,$password,$database);


$consulta_name = $_GET['consulta'];

if($consulta_name == "consulta_combustivel_mais_vendido"){
    $retorno = json_encode($conexao->consulta_combustivel_mais_vendido(),JSON_UNESCAPED_UNICODE);
    echo $retorno;
}
else if($consulta_name == "consulta_media_preco"){
    $retorno = json_encode($conexao->consulta_media_preco(),JSON_UNESCAPED_UNICODE);
    echo $retorno;
}
else if($consulta_name == "consulta_posto_mais_vendas"){
    $retorno = json_encode($conexao->consulta_posto_mais_vendas(),JSON_UNESCAPED_UNICODE);
    echo $retorno;
}
else if($consulta_name == "consulta_qtd_litros"){
    $retorno = json_encode($conexao->consulta_qtd_litros(),JSON_UNESCAPED_UNICODE);
    echo $retorno;
}
else if($consulta_name == "consulta_qtd_vendas"){
    $retorno = json_encode($conexao->consulta_qtd_vendas(),JSON_UNESCAPED_UNICODE);
    echo $retorno;
}
else if($consulta_name == "consulta_cidade_mais_venda"){
    $retorno = json_encode($conexao->consulta_cidade_mais_venda(),JSON_UNESCAPED_UNICODE);
    echo $retorno;
}

?>