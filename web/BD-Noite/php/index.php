<?php
require 'conexao.php';

header('Content-Type: application/json');

$servername = "localhost";
$username = "root";
$password = "root";
$database = "bd_noite_posto";
$conexao = new Conexao($servername,$username,$password,$database);

// echo $consulta_mais_vendido = json_encode($conexao->consulta_combustivel_mais_vendido());
$login = json_encode($conexao->request_login('fulanada','123456'));
echo $login;

?>