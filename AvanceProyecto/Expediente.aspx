<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Expediente.aspx.cs" Inherits="AvanceProyecto.Expediente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Expediente</title>
    <link rel="stylesheet" type="text/css" href="Scripts/GridView.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Citas Atendidas</h2>
            <asp:DropDownList ID="ddlCitasAtendidas" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlCitasAtendidas_SelectedIndexChanged">
                <asp:ListItem Text="Seleccione una cita..." Value=""></asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:GridView ID="GridViewCitasAtendidas" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered">
    <Columns>
        <asp:BoundField DataField="Id" HeaderText="ID" />
        <asp:TemplateField HeaderText="Fecha">
            <ItemTemplate>
                <asp:Label ID="lblFecha" runat="server" Text='<%# Bind("Fecha", "{0:dd/MM/yyyy}") %>'></asp:Label>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:BoundField DataField="Cita" HeaderText="Cita Agendada" />
        <asp:BoundField DataField="Medico" HeaderText="Médico que atiende" />
        <asp:BoundField DataField="Enfermedad" HeaderText="Padecimientos" />
        <asp:BoundField DataField="Medicamento" HeaderText="Medicamento Prescrito" />
        <asp:BoundField DataField="Observaciones" HeaderText="Observaciones del Médico" />
        </Columns>
        </asp:GridView>
            <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" CssClass="btn btn-primary"/>
            <asp:Button ID="btnExportarXml" runat="server" Text="Exportar XML" OnClick="btnExportarXml_Click" CssClass="btn btn-success btn-lg" />
        </div>
        <div>
    <asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="Green"></asp:Label>
</div>
    </form>
</body>
</html>

