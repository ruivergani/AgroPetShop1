function cadastraCandidato ($nome, $cpf, $inscmestre, $email, $senha){
  $conexao = conecta_bd();

    $query = "INSERT INTO usuario(cpf, nome, senha, email, data, perfil) VALUES('$cpf', '$nome','$senha','$email', NOW(), 0);";
    $resultado = mysqli_query($conexao, $query);
    $dados = mysqli_affected_rows($conexao);

    if($dados == 1){
        $query = "select *
                  from usuario
                  where cpf = $cpf";

        $resultado = mysqli_query($conexao, $query);      
        $dados = mysqli_fetch_array($resultado);

        $codigo_usuario = $dados['codigo'];

        $query = "Insert Into candidato(cod_usuario, inscmestre) values($codigo_usuario, $inscmestre)";
        $resultado = mysqli_query($conexao, $query);
        $dados = mysqli_affected_rows($conexao);
        return $dados;

    }else{
        return 0;
    }
}


function visualisaCandidato($cpf){

    $conexao = conecta_bd();

    $usuarios = array();

    $query = "Select * 
              From usuario 
              where cpf = $cpf";             
    
    $resultado = mysqli_query($conexao,$query);

    while($dados = mysqli_fetch_array($resultado)) {
        array_push($usuarios, $dados);
    }

    return $usuarios;
}<?php
require_once('../config.php');
require_once(DBAPI);

$product = null;
$products = null;

/**
 *  Listagem de Produtos
 */
function index() {
	global $products;
	$products = find_all('products');
}

/**
 *  Cadastro de Produto
 */
function add() {

  if (!empty($_POST['product'])) {
    
    $today = 
      date_create('now', new DateTimeZone('America/Sao_Paulo'));

    $product = $_POST['product'];
    $product['modified'] = $product['created'] = $today->format("Y-m-d H:i:s");
    
    save('products', $product);
     echo "<script>location.href='index.php'</script>";

  }
}

/**
 *  Atualizacao/Edicao de Produto
 */
function edit() {

  $now = date_create('now', new DateTimeZone('America/Sao_Paulo'));

  if (isset($_GET['id'])) {

    $id = $_GET['id'];

    if (isset($_POST['product'])) {

      $product = $_POST['product'];
      $product['modified'] = $now->format("Y-m-d H:i:s");

      update('products', $id, $product);
      echo "<script>location.href='index.php'</script>";
    } else {

      global $product;
      $product = find('products', $id);
    } 
  } else {
     echo "<script>location.href='index.php'</script>";
  }
}

/**
 *  Visualização de um Produto
 */
function view($id = null) {
  global $product;
  $product = find('products', $id);
}

/**
 *  Exclusão de um Cliente
 */
function delete($id = null) {
  global $product;
  $product = remove('products', $id);

   header('location: index.php'); 
}




// funções cadastrar, visualizar e atualizar.
function cadastraSales ($cliente, $produto, $vendedor,  $valor_venda, $forma_pagamento, $created, $modified){
  $conexao = conecta_bd();

    $query = "INSERT INTO usuario(cliente, produto, vendedor,  valor_venda, forma_pagamento, created modified) VALUES('$cliente', '$produto', '$vendedor',  '$valor_venda', '$forma_pagamento', '$created', '$modified');";
    $resultado = mysqli_query($conexao, $query);
    $dados = mysqli_affected_rows($conexao);
    return $dados;
}


function visualisaSales(){

    $conexao = conecta_bd();

    $usuarios = array();

    $query = "Select * 
              From sales";             
    
    $resultado = mysqli_query($conexao,$query);

    while($dados = mysqli_fetch_array($resultado)) {
        array_push($usuarios, $dados);
    }

    return $usuarios;
}
function editarSales($id, $cliente, $produto, $vendedor,  $valor_venda, $forma_pagamento, $created, $modified){
    $conexao = conecta_bd();
    $query = "Update sales
             Set cliente = '$cliente', produto = '$produto',vendedor = '$vendedor',valor_venda = '$valor_venda',forma_pagamento = '$forma_pagamento',created = '$created',modified = '$modified' 
             where id = '$id";
    $resultado = mysqli_query($conexao,$query);
    $dados = mysqli_affected_rows($conexao);
    return $dados;      
    }

}
?>