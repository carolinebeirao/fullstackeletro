<?php
$servidor = "localhost";
$username = "root";
$password = "";
$database = "fseletro";

// Criando a conexão
$conn = mysqli_connect($servidor, $username, $password, $database);

//Verificando a conexão
if (!$conn){
  die("A conexão ao BD falhou:" . mysqli_connect_error());
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Produtos - Full Stack Eletro</title>
    <link rel="stylesheet" href="./CSS/estilo.css">
    <script src="js/index.js"></script>
</head>
<body>

<?php
    include('menu.html');
?>

    <header>
        <h2>Produtos</h2><hr>
    </header>

    <div class="produtos">

        <section class="categorias">
            <h3>Categorias</h3>
                <ul>
                    <li onclick="exibir_todos()">Todos (12)</li>
                    <li onclick="exibir_categoria('geladeira')">Geladeiras (3)</li>
                    <li onclick="exibir_categoria('fogao')">Fogões (2)</li> 
                    <li onclick="exibir_categoria('microondas')">Microondas (3)</li>
                    <li onclick="exibir_categoria('lava roupas')">Lava roupas (2)</li>
                    <li onclick="exibir_categoria('lava louças')">Lava louças(2)</li>
                </ul>        
        </section>

        <section>

        <?php

            $sql = "select * from produtos";
            $result = $conn->query($sql);

            if($result->num_rows > 0){
            while($rows = $result->fetch_assoc()){
 
  
?>
            <div class="box_produto" id="<?php echo $rows["categoria"]; ?>" onclick="destaque(this)">
                <img src="<?php echo $rows["imagem"];?>" width="120px"  >
                <br>
                <p class="descrição"><?php echo $rows["descricao"]; ?></p>
                <hr>
                <p class="descrição"><strike><?php echo $rows["preco"]; ?></strike></p>
                <p class="preço"><?php echo $rows["precofinal"]; ?></p>
                <br>
            </div>
            <?php
             
            }
           } else {
           echo"Nenhum produto cadastrado!";
            }

            ?>
        </section>
    </div>

    <footer id="rodapé">
        <p id="formas_pagamento"><b>Formas de pagamento</b></p>
        <img src="./imagens/forma de pagamento.png">
        <p>&copy; Recode Pro</p>
    </footer>

</body>
</html>