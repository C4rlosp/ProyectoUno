<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManejarEnfermedades.aspx.cs" Inherits="AvanceProyecto.ManejarEnfermedades" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Consultar Enfermedades</title>
    <link rel="stylesheet" type="text/css" href="Scripts/GridView.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Listado de Enfermedades</h2>
            <asp:GridView ID="GridViewEnfermedades" runat="server" AutoGenerateColumns="false" CssClass="GridViewEnfermedades">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Descripcion" HeaderText="Descripción" />
                </Columns>
            </asp:GridView>
            <asp:Button ID="btnVolver" runat="server" Text="Volver" OnClick="btnVolver_Click" CssClass="btn btn-primary"/>
        </div>
    </form>
</body>
</html>
