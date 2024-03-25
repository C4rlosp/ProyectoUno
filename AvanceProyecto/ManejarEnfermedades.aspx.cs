using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using static AvanceProyecto.AgregarEnfermedades;

namespace AvanceProyecto
{
    public partial class ManejarEnfermedades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Verificar si hay datos de enfermedades en la sesión
                if (Session["Enfermedades"] != null)
                {
                    // Obtener la lista de enfermedades guardadas en la sesión
                    List<Enfermedad> enfermedades = Session["Enfermedades"] as List<Enfermedad>;

                    // Mostrar las enfermedades en el GridView
                    GridViewEnfermedades.DataSource = enfermedades;
                    GridViewEnfermedades.DataBind();
                }
            }
        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("medico.aspx");
        }
    }
}
