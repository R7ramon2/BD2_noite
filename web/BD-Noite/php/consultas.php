<?php
require 'conexao.php';

header('Content-Type: application/json');
// header('Content-Type: text/html; charset=utf-8');

$servername = "localhost";
$username = "root";
$password = "root";
$database = "bd_noite_posto";
$conexao = new Conexao($servername,$username,$password,$database);


$consulta_name = $_GET['consulta'];

if($consulta_name == "consulta_combustivel_mais_vendido"){
    $retorno = json_encode($conexao->consulta_combustivel_mais_vendido());
    echo $retorno;
}
elseif($consulta_name == "consulta_media_preco"){
    $retorno = json_encode($conexao->consulta_media_preco());
    echo $retorno;
}
elseif($consulta_name == "consulta_posto_mais_vendas"){
    $retorno = json_encode($conexao->consulta_posto_mais_vendas());
    echo $retorno;
}
elseif($consulta_name == "consulta_qtd_litros"){
    $retorno = json_encode($conexao->consulta_qtd_litros());
    echo $retorno;
}
elseif($consulta_name == "consulta_qtd_vendas"){
    $retorno = json_encode($conexao->consulta_qtd_vendas());
    echo $retorno;
}
elseif($consulta_name == "gabi"){
    $retorno = json_encode($conexao->gabi());
    echo $retorno;
}

?>