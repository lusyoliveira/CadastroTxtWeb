<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Cadastrotxtweb.WebForm1" %>


<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
    <script src="script.js"></script>
</head>
<body>
<div id="site">
    <h1>Cadastro</h1>

    <form id="form1" runat="server" onsubmit="return false">
        <div class="linha">
            <label for="nome" class="lblObrigatorio">Nome:</label>
            <input type="text" name="nome" id="nome" placeholder="Digite seu nome" />
            <br class="clear" />    
            </div>
            <div class="linha">
            <label for="idade" class="lblObrigatorio">Idade:</label>
            <input type="number" name="idade" id="idade" />
            <br class="clear" />
            </div>
            <div class="linha">
            <label for="email" class="lblObrigatorio">Email:</label>
            <input type="email" name="email" id="email" placeholder="Digite seu email" />
            <br class="clear" />
            </div>
        <div class="linha">
            <button onclick="return Enviar()">Enviar</button>
            <br class="clear" />
            </div>
<asp:ScriptManager ID="ScriptManager" runat="server" EnablePageMethods="true"></asp:ScriptManager>
            </form>
    <table id="tbPessoas" runat="server">
        <thead>
            <tr>
                <th>Nome</th>
                <th>Idade</th>
                <th>E-mail</th>
            </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
    </div>
</body>
</html>
