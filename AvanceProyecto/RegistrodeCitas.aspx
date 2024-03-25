<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrodeCitas.aspx.cs" Inherits="AvanceProyecto.RegistrodeCitas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Atencion de cita</title>
    <link rel="stylesheet" type="text/css" href="Scripts/Forms.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Atención de Citas</h2>
        </div>
        <div>
            <!-- Campo Consultas de Citas -->
            <label for="ddlCitas">Citas agendadas:</label>
            <asp:DropDownList ID="ddlCitas" runat="server">
            <asp:ListItem Text="" Value=""></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvCitas" runat="server" ControlToValidate="ddlCitas" ErrorMessage="Debe seleccionar una cita" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            <!-- Campo Consultas de Enfermedades -->
            <label for="ddlEnfermedades">Listado de Enfermedades:</label>
            <asp:DropDownList ID="ddlEnfermedades" runat="server">
            <asp:ListItem Text="" Value=""></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvEnfermedades" runat="server" ControlToValidate="ddlEnfermedades" ErrorMessage="Debe seleccionar una enfermedad" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            <!-- Campo Consultas de Medicamentos -->
            <label for="ddlMedicamentos">Listado de Medicamentos:</label>
            <asp:DropDownList ID="ddlMedicamentos" runat="server">
            <asp:ListItem Text="" Value=""></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvMedicamentos" runat="server" ControlToValidate="ddlMedicamentos" ErrorMessage="Debe seleccionar un medicamento" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            <!-- Campo Consultas de Medicamentos -->
            <label for="ddlMedicos">Listado de Medicos:</label>
            <asp:DropDownList ID="ddlMedicos" runat="server">
            <asp:ListItem Text="" Value=""></asp:ListItem>
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvMedicos" runat="server" ControlToValidate="ddlMedicos" ErrorMessage="Debe seleccionar un médico" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <div>
            <!-- Campo Observaciones del doctor -->
            <label for="txtObservaciones">Observaciones:</label>
            <asp:TextBox ID="txtObservaciones" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvObservaciones" runat="server" ControlToValidate="txtObservaciones" ErrorMessage="Este campo no puede estar vacío" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>

        <div style="text-align: center;">
            <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" CssClass="btn btn-primary" />
        </div>
        <div>
            <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Green"></asp:Label>
        </div>
    </form>
</body>
</html>
