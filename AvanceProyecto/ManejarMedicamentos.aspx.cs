using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static AvanceProyecto.AgregarMedicamentos;

namespace AvanceProyecto
{
    public partial class ManejarMedicamentos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Medicamento> listaMedicamentos = Session["Medicamentos"] as List<Medicamento>;
                if (listaMedicamentos != null)
                {
                    GridViewMedicamentos.DataSource = listaMedicamentos;
                    GridViewMedicamentos.DataBind();
                }
            }
        }
        protected void btnVolver_Click(object sender, EventArgs e)
        {
            // Redirigir al usuario a la página "medico.aspx"
            Response.Redirect("medico.aspx");
        }
    }
}
