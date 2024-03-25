<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultarPacientes.aspx.cs" Inherits="AvanceProyecto.ConsultarPacientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consultar Pacientes</title>
    <link rel="stylesheet" type="text/css" href="Scripts/GridView.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Consultar Pacientes</h2>
            <asp:GridView ID="GridViewPacientes" runat="server" AutoGenerateColumns="false" CssClass="GridViewPacientes">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" />
                    <asp:BoundField DataField="Identificacion" HeaderText="Identificación" />
                    <asp:BoundField DataField="TipoIdentificacion" HeaderText="TipoIdentificacion" />
                    <asp:BoundField DataField="Sexo" HeaderText="Sexo" />
                    <asp:BoundField DataField="EstadoCivil" HeaderText="EstadoCivil" />
                    <asp:BoundField DataField="Nacionalidad" HeaderText="Nacionalidad" />
                    <asp:BoundField DataField="FechaNacimiento" HeaderText="FechaNacimiento" />
                    <asp:BoundField DataField="Provincia" HeaderText="Provincia" />
                    <asp:BoundField DataField="Telefono" HeaderText="Telefono" />
                     <asp:BoundField DataField="CorreoElectronico" HeaderText="CorreoElectronico" />
                </Columns>
            </asp:GridView>
            <!-- Botón para volver a la página "medico.aspx" -->
            <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" CssClass="btn btn-primary" />
        </div>
    </form>
</body>
</html>
