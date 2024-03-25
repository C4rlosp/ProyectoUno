using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AvanceProyecto
{
    public partial class AgregarCitas : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Obtener la lista de pacientes de la sesión
                List<AgregarPacientes.Paciente> listaPacientes = Session["Pacientes"] as List<AgregarPacientes.Paciente>;

                // Verificar si la lista de pacientes existe
                if (listaPacientes != null)
                {
                    // Recorrer la lista de pacientes y agregarlos al DropDownList
                    foreach (var paciente in listaPacientes)
                    {
                        ddlNombrePaciente.Items.Add(new ListItem($"{paciente.Nombre} {paciente.Apellidos} - Cédula: {paciente.Identificacion}", $"{paciente.Nombre}"));
                    }
                }
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            // Obtener los valores ingresados por el usuario
            string nombrePaciente = ddlNombrePaciente.SelectedValue;
            string lugar = txtLugar.Text;
            string fecha = txtFecha.Text;
            string hora = txtHora.Text;
            Cita nuevaCita = new Cita
            {
                Nombre = nombrePaciente,
                Lugar = lugar,
                Fecha = fecha,
                Hora = hora,
            };
            // Obtener la lista de citas de la sesión o crear una nueva si no existe
            List<Cita> listaCitas = Session["Citas"] as List<Cita>;
            if (listaCitas == null)
            {
                listaCitas = new List<Cita>();
            }
            // Agregar la nueva cita a la lista
            listaCitas.Add(nuevaCita);

            // Actualizar la lista de citas en la sesión
            Session["Citas"] = listaCitas;

            lblMensaje.Text = "La cita ha sido agregada satisfactoriamente.";

            //limpiamos el formulario
            LimpiarFomulario();
            Response.Redirect("medico.aspx");
        }

        public class Cita
        {
            public string Nombre { get; set; }
            public string Apellidos { get; set; }
            public string Identificacion { get; set; }
            public string Lugar { get; set; }
            public string Fecha { get; set; }
            public string Hora { get; set; }
        }

        private void LimpiarFomulario()
        {
            txtFecha.Text = string.Empty;
            txtHora.Text = string.Empty;
            txtLugar.Text = string.Empty;
        }
    }
}
