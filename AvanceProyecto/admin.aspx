<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="AvanceProyecto.admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Administrador</title>
    <link rel="stylesheet" type="text/css" href="Scripts/Admin.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script>
    history.pushState(null, null, location.href);
    window.onpopstate = function () {
        history.go(1);
    };
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Bienvenido Administrador</h2>
            <nav class="navbar navbar-expand-lg">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
    <li class="nav-item"><a class="nav-link" href="ManejarMedicos.aspx">Agregar Médicos</a></li>
    <li class="nav-item"><a class="nav-link" href="VerMedicos.aspx">Ver Médicos</a></li>

    <li class="nav-item"><a class="nav-link" href="medico.aspx">Acceso a módulo Médico</a></li>
    <li class="nav-item"><a class="nav-link" href="ManejoCatalogo.aspx">Catálogos</a></li>
</ul>


                    <div class="logout-container">
    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" CssClass="btn btn-primary" />
</div>
                </div>
            </nav>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

