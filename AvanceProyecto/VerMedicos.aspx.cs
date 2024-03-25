using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static AvanceProyecto.ManejarMedicos;

namespace AvanceProyecto
{
    public partial class VerMedicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            
                // Obtener la lista de pacientes de la sesión
                List<Medico> listaMedicos = Session["Medicos"] as List<Medico>;
                if(listaMedicos != null)
                {
                    // Vincular la lista de pacientes al GridView
                    GridViewMedicos.DataSource = listaMedicos;
                    GridViewMedicos.DataBind();
                }
            

            


        }
        protected void btnVolver_Click(object sender, EventArgs e)
        {
            // Redirigir al usuario a la página "medico.aspx"
            Response.Redirect("admin.aspx");
        }
    }
}