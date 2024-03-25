<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarMedicamentos.aspx.cs" Inherits="AvanceProyecto.AgregarMedicamentos" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Agregar Medicamentos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css"/>
    <link rel="stylesheet" type="text/css" href="Scripts/Forms.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Agregar Medicamentos</h2>
            <div>
                <!-- Campo Nombre -->
                <label for="txtNombre">Nombre:</label>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <!-- Validar Nombre -->
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                <!-- Campo Casa Farmaceutica -->
                <label for="txtCasaFarmaceutica">Casa Farmacéutica:</label>
                <asp:TextBox ID="txtCasaFarmaceutica" runat="server"></asp:TextBox>
                <!-- Validar Casa Farmaceutica -->
                <asp:RequiredFieldValidator ID="rfvCasaFarmaceutica" runat="server" ControlToValidate="txtCasaFarmaceutica" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                <!-- Campo Cantidad Disponible-->
                <label for="txtCantidadDisponible">Cantidad Disponible:</label>
                <asp:TextBox ID="txtCantidadDisponible" runat="server" TextMode="Number" CssClass="form-control"></asp:TextBox>
                <!-- Validar Cantidad Disponible-->
                <asp:RequiredFieldValidator ID="rfvCantidadDisponible" runat="server" ControlToValidate="txtCantidadDisponible" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>
            <div style="text-align: center;" class="mt-3">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" CssClass="btn btn-primary"/>
            </div>
            <div>
                <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Green"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
