<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManejarMedicamentos.aspx.cs" Inherits="AvanceProyecto.ManejarMedicamentos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ver Medicamentos</title>
    <link rel="stylesheet" type="text/css" href="Scripts/GridView.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Listado de Medicamentos</h2>
        </div>
        <div>
            <asp:GridView ID="GridViewMedicamentos" runat="server">
            </asp:GridView>
            <!-- Botón para volver a la página "medico.aspx" -->
            <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" CssClass="btn btn-primary" />
        </div>
    </form>
</body>
</html>
