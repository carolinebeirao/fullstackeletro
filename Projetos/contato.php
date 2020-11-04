<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contato</title>
    <link rel="stylesheet" href="./CSS/estilo.css">
    <script src="js/index.js"></script>
</head>
<body>

    <nav class="menu">
        <a href="index.php"><img width="70px" src="./imagens/LOGO.png" alt="full stack eletro"></a>
        <a href="produtos.php">Produtos</a>
        <a href="loja.php">Nossas Lojas</a>
        <a href="contato.php">Contato</a>
    </nav>

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

    <footer id="rodapé">
        <p>&copy; Recode Pro</p>
    </footer>

</body>
</html>