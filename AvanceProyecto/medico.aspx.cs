using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AvanceProyecto
{
    public partial class medico : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear(); //limpiar la sesion
            Session.Abandon();
            Response.Redirect("~/Home.aspx#login"); //redireccionamos a la pagina Home y luego a la clase login


        }

    }
}