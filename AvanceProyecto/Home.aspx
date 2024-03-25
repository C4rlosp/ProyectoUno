<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AvanceProyecto.Home" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="Scripts/Login.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Iniciar Sesión</h2>
            <div id="login">
                <div>
                    <label for="txtUsername">Usuario:</label>
                    <asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                </div>
                <div>
                    <label for="txtPassword">Contraseña:</label>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                </div>
                <div class="button-container">
                    <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" OnClick="btnLogin_Click" style="padding: 10px 20px; margin-bottom: 10px; border: 1px solid #007bff; color: #fff; background-color: #007bff; border-radius: 5px; cursor: pointer; box-shadow: 0 2px 4px rgba(0,0,0,0.1);" />
                </div>
                <div>
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
