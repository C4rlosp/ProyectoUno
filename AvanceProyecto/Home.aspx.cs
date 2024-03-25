using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AvanceProyecto
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            // Verificamos las credenciales sin necesidad de base de datos
            if (username == "medico" && password == "clave_medico")
            {
                // Si las credenciales son correctas para un médico, redirige a una página de médico
                Response.Redirect("medico.aspx");
            }
            else if (username == "admin" && password == "clave_admin")
            {
                // Si las credenciales son correctas para un administrador, redirige a una página de administrador
                Response.Redirect("admin.aspx");
            }
            else
            {
                // Si las credenciales no son válidas, muestra un mensaje de error
                lblMessage.Text = "Contraseña o usuario inválidos. Por favor, inténtalo de nuevo.";
            }
        }

        

    }

    
}
