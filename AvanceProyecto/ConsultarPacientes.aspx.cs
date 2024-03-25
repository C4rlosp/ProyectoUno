using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static AvanceProyecto.AgregarPacientes;

namespace AvanceProyecto
{
    public partial class ConsultarPacientes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Obtener la lista de pacientes de la sesión
                List<Paciente> listaPacientes = Session["Pacientes"] as List<Paciente>;

                // Vincular la lista de pacientes al GridView
                GridViewPacientes.DataSource = listaPacientes;
                GridViewPacientes.DataBind();
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            // Redirigir al usuario a la página "medico.aspx"
            Response.Redirect("medico.aspx");
        }
    }
}
