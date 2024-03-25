using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AvanceProyecto
{
    public partial class AgregarPacientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            // Obtener los valores ingresados por el usuario
            string nombre = txtNombre.Text;
            string apellidos = txtApellidos.Text;
            string identificacion = txtIdentificacion.Text;
            string tipoIdentificacion = ddlTipoIdentificacion.SelectedValue;
            string sexo = ddlSexo.SelectedValue;
            string estadoCivil = ddlEstadoCivil.SelectedValue;
            string nacionalidad = txtNacionalidad.Text;
            string fechaNacimiento = txtFechaNacimiento.Text;
            string provincia = ddlProvincia.SelectedValue;
            string telefono = txtTelefono.Text;
            string correoElectronico = txtCorreoElectronico.Text;
            Paciente nuevoPaciente = new Paciente
            {
                Nombre = nombre,
                Apellidos = apellidos,
                Identificacion = identificacion,
                TipoIdentificacion = tipoIdentificacion,
                Sexo = sexo,
                EstadoCivil = estadoCivil,
                Nacionalidad = nacionalidad,
                FechaNacimiento = fechaNacimiento,
                Provincia = provincia,
                Telefono = telefono,
                CorreoElectronico = correoElectronico
            };
            // Obtener la lista de pacientes de la sesión o crear una nueva si no existe
            List<Paciente> listaPacientes = Session["Pacientes"] as List<Paciente>;
            if (listaPacientes == null)
            {
                listaPacientes = new List<Paciente>();
            }
            // Agregar el nuevo paciente a la lista
            listaPacientes.Add(nuevoPaciente);

            // Actualizar la lista de pacientes en la sesión
            Session["Pacientes"] = listaPacientes;
            lblMensaje.Text = "El paciente ha sido guardado satisfactoriamente.";

            //limpiamos el formulario
            LimpiarFormulario();

            //Regresamos a la pagina Medico
            Response.Redirect("medico.aspx");
           
        }
        public class Paciente
        {
            public string Nombre { get; set; }
            public string Apellidos { get; set; }
            public string Identificacion { get; set; }
            public string TipoIdentificacion { get; set; }
            public string Sexo { get; set; }
            public string EstadoCivil { get; set; }
            public string Nacionalidad { get; set; }
            public string FechaNacimiento { get; set; }
            public string Provincia { get; set; }
            public string Telefono { get; set; }
            public string CorreoElectronico { get; set; }
        }

        private void LimpiarFormulario()
        {
            txtNombre.Text = string.Empty;
            txtApellidos.Text = string.Empty;
            txtIdentificacion.Text = string.Empty;
            ddlTipoIdentificacion.SelectedIndex = 0;
            ddlSexo.SelectedIndex = 0;
            ddlEstadoCivil.SelectedIndex = 0;
            txtNacionalidad.Text = string.Empty;
            txtFechaNacimiento.Text = string.Empty;
            ddlProvincia.SelectedIndex = 0;
            txtTelefono.Text = string.Empty;
            txtCorreoElectronico.Text = string.Empty;
        }
    }
}