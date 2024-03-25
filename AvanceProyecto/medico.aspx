<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="medico.aspx.cs" Inherits="AvanceProyecto.medico" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Médico</title>
    <link rel="stylesheet" type="text/css" href="Scripts/Medico.css" />
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
             <h2>Bienvenido Médico</h2>
            <nav class="navbar navbar-expand-lg">
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                <li class="nav-item"><a class="nav-link" href="AgregarPacientes.aspx">Agregar Pacientes</a></li>
                <li class="nav-item"><a class="nav-link" href="ConsultarPacientes.aspx">Consultar Pacientes</a></li>
                <li class="nav-item"><a class="nav-link" href="AgregarCitas.aspx">Agenda de Citas</a></li>
                <li class="nav-item"><a class="nav-link" href="RegistrodeCitas.aspx">Atender Cita</a></li>
                <li class="nav-item"><a class="nav-link" href="AgregarMedicamentos.aspx">Agregar Medicamentos Prescritos</a></li>
                <li class="nav-item"><a class="nav-link" href="ManejarMedicamentos.aspx">Consultar Medicamentos</a></li>
                <li class="nav-item"><a class="nav-link" href="AgregarEnfermedades.aspx">Agregar Enfermedades</a></li>
                <li class="nav-item"><a class="nav-link" href="ManejarEnfermedades.aspx">Consultar Enfermedades</a></li>
                <li class="nav-item"><a class="nav-link" href="Expediente.aspx">Expediente</a></li>
                </ul>
              </div>
                <div class="logout-container">
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" CssClass="btn btn-primary" />
                </div>
            </nav>
        </div>
    </form>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
