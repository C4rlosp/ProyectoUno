<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerMedicos.aspx.cs" Inherits="AvanceProyecto.VerMedicos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consultar Medicos</title>
     <link rel="stylesheet" type="text/css" href="Scripts/GridView.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Listado de medicos</h2>
            <div>
                <!-- Lista de Médicos -->
                <h2>Médicos Registrados</h2>
                <asp:GridView ID="GridViewMedicos" runat="server" AutoGenerateColumns="False" CssClass="GridViewMedicos">
                    <Columns>
                        <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                        <asp:BoundField DataField="Apellidos" HeaderText="Apellidos" />
                        <asp:BoundField DataField="Identificacion" HeaderText="Identificación" />
                        <asp:BoundField DataField="TipoIdentificacion" HeaderText="Tipo Identificación" />
                        <asp:BoundField DataField="Genero" HeaderText="Género" />
                        <asp:BoundField DataField="EstadoCivil" HeaderText="Estado Civil" />
                        <asp:BoundField DataField="FechaNacimiento" HeaderText="Fecha de Nacimiento" />
                        <asp:BoundField DataField="Especialidad" HeaderText="Especialidad" />
                        <asp:BoundField DataField="Telefono" HeaderText="Teléfono" />
                        <asp:BoundField DataField="CorreoElectronico" HeaderText="Correo Electrónico" />
                    </Columns>
                </asp:GridView>
                <!-- Botón para volver a la página "medico.aspx" -->
                <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" CssClass="btn btn-primary" />
            </div>
        </div>
    </form>
</body>
</html>
