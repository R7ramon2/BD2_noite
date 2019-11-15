<?php
require 'conexao.php';

header('Content-Type: application/json');

$servername = "localhost";
$username = "root";
$password = "root";
$database = "bd_noite_posto";
$conexao = new Conexao($servername,$username,$password,$database);


$login = json_encode($conexao->request_login($_POST['user'],$_POST['pass']));
echo $login;

?>