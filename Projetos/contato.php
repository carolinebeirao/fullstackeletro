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


if(isset($_POST['nome']) && isset($_POST['msg'])){
$nome = $_POST['nome'];
$msg = $_POST['msg'];

$sql = "insert into comentarios(nome, msg) values ('$nome','$msg')";
$result = $conn->query($sql);

}
?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contato</title>
        <link rel="stylesheet" href="./CSS/estilo.css">
        <script src="js/index.js"></script>
    </head>
<   body>

        <?php
            include('menu.html');
        ?>

    <header>
        <h2>Fale Conosco</h2><hr>
    </header>

        <div style="text-align: center;">
            <p><img src="./imagens/email.png" width="50px">contato@fullstackeletro.com <img src="./imagens/wzap.png" width="55px">(11) 99999-9999</p>
        </div>
 

   <div id="contato">
        <form>
            <h4>Mande sua mensagem por aqui</h4>
            <label for="nome">Nome:</label>
            <input type="text" name="nome" style="width: 400px;"> 
            <br>  
            <br>
            <input type="submit" value="Enviar">
            <textarea style="height: 200px; width: 400px;"></textarea>                      
        </form>
   </div>
    
   <?php

$sql = "select * from comentarios";
$result = $conn->query($sql);

if($result->num_rows > 0){
while($rows = $result->fetch_assoc()){
    echo"Data: ",$rows['data'], "</br>";
    echo"Nome: ",$rows['nome'], "</br>";
    echo"Mensagem: ",$rows['msg'], "</br>";
    echo"<hr>";
   }
} else {
    echo"Nenhum comentário ainda!";
 }
 ?>
    <footer id="rodapé">
        <p>&copy; Recode Pro</p>
    </footer>

</body>
</html>