using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static AvanceProyecto.AgregarPacientes;

namespace AvanceProyecto
{
    public partial class AgregarEnfermedades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string nombreEnfermedad = txtNombreEnfermedad.Text;
            string descripcion = txtDescripcion.Text;
            Enfermedad nuevoEnfermedad = new Enfermedad
            {
                Nombre = nombreEnfermedad,
                Descripcion = descripcion,
            };
            // Obtener la lista de pacientes de la sesión o crear una nueva si no existe
            List<Enfermedad> listaEnfermedad = Session["Enfermedades"] as List<Enfermedad>;
            if (listaEnfermedad == null)
            {
                listaEnfermedad = new List<Enfermedad>();
            }
            // Agregar el nuevo paciente a la lista
            listaEnfermedad.Add(nuevoEnfermedad);

            // Actualizar la lista de pacientes en la sesión
            Session["Enfermedades"] = listaEnfermedad;
            lblMensaje.Text = "La enfermedad ha sido agregada satisfactoriamente.";

            //limpiamos formulario
            LimpiarFormulario();

            // Redirigir a la página ManejarEnfermedades.aspx
            Response.Redirect("medico.aspx");
        }
        public class Enfermedad
        {
            public string Nombre { get; set; }
            public string Descripcion { get; set; }
            
        }

        private void LimpiarFormulario()
        {
            txtDescripcion.Text = string.Empty;
            txtNombreEnfermedad.Text = string.Empty;
        }
    }
}