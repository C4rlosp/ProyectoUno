<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarEnfermedades.aspx.cs" Inherits="AvanceProyecto.AgregarEnfermedades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agregar Enfermedades</title>
    <link rel="stylesheet" type="text/css" href="Scripts/Forms.css" />
</head>
<body>
    <!-- Cambios en el HTML -->
<form id="form1" runat="server" class="custom-form">
    <div>
        <h2>Agregar Enfermedades</h2>
        <div>
            <label for="txtNombreEnfermedad">Nombre:</label>
            <asp:TextBox ID="txtNombreEnfermedad" runat="server" CssClass="form-control"></asp:TextBox>
        </div>
        <div>
            <label for="txtDescripcion">Descripción:</label>
            <asp:TextBox ID="txtDescripcion" runat="server" TextMode="MultiLine" Rows="4" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="button-container">
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" CssClass="btn btn-primary" />
        </div>
        <div>
            <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Green"></asp:Label>
        </div>
    </div>
</form>

</body>
</html>
