<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarPacientes.aspx.cs" Inherits="AvanceProyecto.AgregarPacientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Agregar Pacientes</title>
    <link rel="stylesheet" type="text/css" href="Scripts/Forms.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Agregar Pacientes</h2>
            <div>
                <!-- Campo Nombre -->
                <label for="txtNombre">Nombre:</label>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <!-- Validadores para el campo Nombre -->
                <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre es obligatorio" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El nombre solo puede contener letras" ValidationExpression="^[a-zA-Z\s]*$" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
            <div>
                <!-- Campo Apellidos -->
                <label for="txtApellidos">Apellidos:</label>
                <asp:TextBox ID="txtApellidos" runat="server"></asp:TextBox>
                <!-- Validadores para el campo Apellidos -->
                <asp:RequiredFieldValidator ID="rfvApellidos" runat="server" ControlToValidate="txtApellidos" ErrorMessage="Los apellidos son obligatorios" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revApellidos" runat="server" ControlToValidate="txtApellidos" ErrorMessage="Los apellidos solo pueden contener letras" ValidationExpression="^[a-zA-Z\s]*$" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
            <div>
                <!-- Campo Identificación -->
                <label for="txtIdentificacion">Identificación:</label>
                <asp:TextBox ID="txtIdentificacion" runat="server"></asp:TextBox>
                <!-- Validador para el campo Identificación -->
                <asp:RequiredFieldValidator ID="rfvIdentificacion" runat="server" ControlToValidate="txtIdentificacion" ErrorMessage="La identificación es obligatoria" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revIdentificacion" runat="server" ControlToValidate="txtIdentificacion" ErrorMessage="La identificación debe ser numérica" ValidationExpression="^\d+$" Display="Dynamic"></asp:RegularExpressionValidator>
            </div>
            <div>
                <!-- Lista desplegable Tipo de Identificación -->
                <label for="ddlTipoIdentificacion">Tipo de Identificación:</label>
                <asp:DropDownList ID="ddlTipoIdentificacion" runat="server">
                    <asp:ListItem Text="" Value=""></asp:ListItem>
                    <asp:ListItem Text="Cédula de Identidad" Value="Cedula"></asp:ListItem>
                    <asp:ListItem Text="Pasaporte" Value="Pasaporte"></asp:ListItem>
                </asp:DropDownList>
                <!-- Validador para el campo Tipo de Identificación -->
                <asp:RequiredFieldValidator ID="rfvTipoIdentificacion" runat="server" ControlToValidate="ddlTipoIdentificacion" ErrorMessage="Seleccione un tipo de identificación" Display="Dynamic" InitialValue=""></asp:RequiredFieldValidator>
            </div>
             </div>
            <!-- Agregar los demás campos de información personal -->
            <div>
                <!-- Lista desplegable Género -->
                <label for="ddlSexo">Sexo:</label>
                <asp:DropDownList ID="ddlSexo" runat="server">
                    <asp:ListItem Text="" Value=""></asp:ListItem>
                    <asp:ListItem Text="Masculino" Value="Masculino"></asp:ListItem>
                    <asp:ListItem Text="Femenino" Value="Femenino"></asp:ListItem>
                </asp:DropDownList>
                <!-- Validador para el campo Género -->
                <asp:RequiredFieldValidator ID="rfvSexo" runat="server" ControlToValidate="ddlSexo" ErrorMessage="Seleccione un género" Display="Dynamic" InitialValue=""></asp:RequiredFieldValidator>
            </div>
            <div>
                <!-- Lista desplegable Estado Civil -->
                <label for="ddlEstadoCivil">Estado Civil:</label>
                <asp:DropDownList ID="ddlEstadoCivil" runat="server">
                    <asp:ListItem Text="" Value=""></asp:ListItem> 
                    <asp:ListItem Text="Soltero/a" Value="Soltero"></asp:ListItem>
                    <asp:ListItem Text="Casado/a" Value="Casado"></asp:ListItem>
                    <asp:ListItem Text="Viudo/a" Value="Viudo"></asp:ListItem>
                    <asp:ListItem Text="Divorciado/a" Value="Divorciado"></asp:ListItem>
                </asp:DropDownList>
                <!-- Validador para el campo Estado Civil -->
                <asp:RequiredFieldValidator ID="rfvEstadoCivil" runat="server" ControlToValidate="ddlEstadoCivil" ErrorMessage="Seleccione un estado civil" Display="Dynamic" InitialValue=""></asp:RequiredFieldValidator>
            </div>
            <div>
                <label for="txtNacionalidad">Nacionalidad:</label>
                <asp:TextBox ID="txtNacionalidad" runat="server"></asp:TextBox>
                <!-- Validador para el campo Nacionalidad -->
                <asp:RequiredFieldValidator ID="rfvNacionalidad" runat="server" ControlToValidate="txtNacionalidad" ErrorMessage="La nacionalidad es obligatoria" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                <!-- Campo Fecha de Nacimiento -->
                <label for="txtFechaNacimiento">Fecha de Nacimiento:</label>
                <asp:TextBox ID="txtFechaNacimiento" runat="server" placeholder="YYYY-MM-DD"></asp:TextBox>
                <!-- Validador para el campo Fecha de Nacimiento -->
                <asp:RequiredFieldValidator ID="rfvFechaNacimiento" runat="server" ControlToValidate="txtFechaNacimiento" ErrorMessage="La fecha de nacimiento es obligatoria" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                <!-- Campo Provincia -->
                <label for="ddlProvincia">Provincia:</label>
                <asp:DropDownList ID="ddlProvincia" runat="server">
                    <asp:ListItem Text="" Value=""></asp:ListItem>
                    <asp:ListItem Text="San José" Value="San José"></asp:ListItem>
                    <asp:ListItem Text="Alajuela" Value="Alajuela"></asp:ListItem>
                    <asp:ListItem Text="Heredia" Value="Heredia"></asp:ListItem>
                    <asp:ListItem Text="Cartago" Value="Cartago"></asp:ListItem>
                     <asp:ListItem Text="Puntarenas" Value="Puntarenas"></asp:ListItem>
                     <asp:ListItem Text="Limon" Value="Limon"></asp:ListItem>
                     <asp:ListItem Text="Guanacaste" Value="Guanacaste"></asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="rfvProvincia" runat="server" ControlToValidate="ddlProvincia" ErrorMessage="Seleccione una provincia" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                <!-- Campo Teléfono -->
                <label for="txtTelefono">Teléfono:</label>
                <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
                <!-- Validador para el campo Teléfono -->
                <asp:RequiredFieldValidator ID="rfvTelefono" runat="server" ControlToValidate="txtTelefono" ErrorMessage="El teléfono es obligatorio" Display="Dynamic"></asp:RequiredFieldValidator>
                <!-- Validador para el campo Teléfono -->
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTelefono" ErrorMessage="El teléfono es obligatorio" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            <div>
                <!-- Campo Correo Electrónico -->
                <label for="txtCorreoElectronico">Correo Electrónico:</label>
                <asp:TextBox ID="txtCorreoElectronico" runat="server"></asp:TextBox>
                <!-- Validadores para el campo Correo Electrónico -->
                <asp:RequiredFieldValidator ID="rfvCorreoElectronico" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="El correo electrónico es obligatorio" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revCorreoElectronico" runat="server" ControlToValidate="txtCorreoElectronico" ErrorMessage="El formato del correo electrónico no es válido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic"></asp:RegularExpressionValidator>
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
