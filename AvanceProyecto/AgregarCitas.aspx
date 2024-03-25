<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarCitas.aspx.cs" Inherits="AvanceProyecto.AgregarCitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Crear Cita</title>
    <link rel="stylesheet" type="text/css" href="Scripts/Forms.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <h2>Agregar Cita</h2>
            <div>
                <!-- Campo Nombre del paciente-->
                <label for="ddlNombrePaciente">Nombre del Paciente:</label>
                <asp:DropDownList ID="ddlNombrePaciente" runat="server">
                <asp:ListItem Text="" Value=""></asp:ListItem>
                </asp:DropDownList>
                <!-- Validar Nombre del Paciente -->
                <asp:RequiredFieldValidator ID="rfvNombrePaciente" runat="server" ControlToValidate="ddlNombrePaciente" ErrorMessage="Seleccione un paciente" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                <!-- Campo Lugar -->
                <label for="txtLugar">Lugar:</label>
                <asp:TextBox ID="txtLugar" runat="server"></asp:TextBox>
                <!-- Validar Campo Lugar -->
                <asp:RequiredFieldValidator ID="rfvLugar" runat="server" ControlToValidate="txtLugar" ErrorMessage="Colocar un lugar" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                <!-- Campo Fecha -->
                <label for="txtFecha">Fecha:</label>
                <asp:TextBox ID="txtFecha" runat="server" placeholder="YYYY-MM-DD"></asp:TextBox>
                <!-- Validar campo Fecha -->
                <asp:RequiredFieldValidator ID="rfvFecha" runat="server" ControlToValidate="txtFecha" ErrorMessage="Colocar fecha" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                <!-- Campo hora -->
                <label for="txtHora">Hora:</label>
                <asp:TextBox ID="txtHora" runat="server" placeholder="HH:MM"></asp:TextBox>
                <!-- Validar Hora -->
                <asp:RequiredFieldValidator ID="rfvHora" runat="server" ControlToValidate="txtHora" ErrorMessage="Colocar hora" Display="Dynamic"></asp:RequiredFieldValidator>

            </div>
            <div style="text-align: center;">
                <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" CssClass="btn btn-primary" />
            </div>
            <div>
                <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Green"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
