using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static AvanceProyecto.AgregarCitas;

namespace AvanceProyecto
{
    public partial class AgregarMedicamentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombre.Text;
            string casaFarmaceutica = txtCasaFarmaceutica.Text;
            int cantidadDisponible = Convert.ToInt32(txtCantidadDisponible.Text);
            Medicamento nuevoMedicamento = new Medicamento
            {
                Nombre = nombre,
                CasaFarmaceutica = casaFarmaceutica,
                Cantidad = cantidadDisponible,
            };
            // Obtener la lista de pacientes de la sesión o crear una nueva si no existe
            List<Medicamento> listaMedicamentos = Session["Medicamentos"] as List<Medicamento>;
            if (listaMedicamentos == null)
            {
                listaMedicamentos = new List<Medicamento>();
            }
            // Agregar el nuevo medicamento a la lista
            listaMedicamentos.Add(nuevoMedicamento);

            // Actualizar la lista de medicamentos en la sesión
            Session["Medicamentos"] = listaMedicamentos;

            lblMensaje.Text = "El medicamento ha sido agregado correctamente.";

            //limpiamos el formulario
            LimpiarFormulario();
            Response.Redirect("medico.aspx");


        }
        public class Medicamento
        {
            public string Nombre { get; set; }
            public string CasaFarmaceutica { get; set; }
            public int Cantidad { get; set; }
        }

        private void LimpiarFormulario()
        {
            txtNombre.Text = string.Empty;
            txtCasaFarmaceutica.Text = string.Empty;
            txtCantidadDisponible.Text = string.Empty;
        }
    }
}