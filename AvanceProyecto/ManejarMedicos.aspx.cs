using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using static AvanceProyecto.ManejarMedicos;

namespace AvanceProyecto
{
    public partial class ManejarMedicos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Inicializar o cargar datos al cargar la página por primera vez
                InicializarDatos();
                //mostrar medicos
                //MostrarMedicos();
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            // Guardar el médico en la lista y actualizar la sesión
            GuardarMedico();
            // Limpiar el formulario después de guardar
            LimpiarFormulario();

            Response.Redirect("admin.aspx");
        }

        protected void btnVerMedicos_Click(object sender, EventArgs e)
        {
            // Redirigir a la página de ver médicos
            Response.Redirect("VerMedicos.aspx");
        }

        //obtener la lista de medicos de le session
        private void MostrarMedicos()
        {
            List<Medico> listaMedicos = Session["Medicos"] as List<Medico>;
            if(listaMedicos != null)
            {
                foreach(var medico in listaMedicos)
                {
                    var medicoLabel = new Label
                    {
                        Text = $"Nombre: {medico.Nombre} {medico.Apellidos}, Identificacion: {medico.Identificacion} Especialidad: {medico.Especialidad}"
                    };
                    form1.Controls.Add(medicoLabel);
                    form1.Controls.Add(new LiteralControl("<br/>"));
                }
            }
        }

        // Método para inicializar la lista de médicos en la sesión
        private void InicializarDatos()
        {
            // Obtener la lista de médicos de la sesión o crear una nueva si no existe
            List<Medico> listaMedicos = Session["Medicos"] as List<Medico>;
            if (listaMedicos == null)
            {
                //instanciamos la lista
                listaMedicos = new List<Medico>();

                //agregar medicos estaticos
                listaMedicos.Add(new Medico()
                {
                    Nombre ="Medico1",
                    Apellidos ="Apellido1",
                    Identificacion ="123456",
                    TipoIdentificacion ="Cedula",
                    Genero ="Masculino",
                    EstadoCivil ="Soltero",
                    FechaNacimiento ="1990-01-01",
                    Especialidad ="Especialidad1",
                    Telefono ="12345566",
                    CorreoElectronico ="medico1@apellido1.com"
                });
                listaMedicos.Add(new Medico()
                {
                    Nombre = "Medico2",
                    Apellidos = "Apellido2",
                    Identificacion = "234561",
                    TipoIdentificacion = "Cedula",
                    Genero = "Femenino",
                    EstadoCivil = "Casado",
                    FechaNacimiento = "1991-02-02",
                    Especialidad = "Especialidad2",
                    Telefono = "23455661",
                    CorreoElectronico = "medico2@apellido2.com"
                });
                listaMedicos.Add(new Medico()
                {
                    Nombre = "Medico3",
                    Apellidos = "Apellido3",
                    Identificacion = "345612",
                    TipoIdentificacion = "Cedula",
                    Genero = "Femenino",
                    EstadoCivil = "Soltero",
                    FechaNacimiento = "1992-03-03",
                    Especialidad = "Especialidad3",
                    Telefono = "34556612",
                    CorreoElectronico = "medico3@apellido3.com"
                });

                Session["Medicos"] = listaMedicos;
            }
        }

        // Método para guardar un médico en la lista y actualizar la sesión
        private void GuardarMedico()
        {
            // Obtener los valores ingresados por el usuario
            string nombre = txtNombre.Text;
            string apellidos = txtApellidos.Text;
            string identificacion = txtIdentificacion.Text;
            string tipoIdentificacion = ddlTipoIdentificacion.SelectedValue;
            string genero = ddlGenero.SelectedValue;
            string estadoCivil = ddlEstadoCivil.SelectedValue;
            string fechaNacimiento = txtFechaNacimiento.Text;
            string especialidad = txtEspecialidad.Text;
            string telefono = txtTelefono.Text;
            string correoElectronico = txtCorreoElectronico.Text;
            Medico nuevoMedico = new Medico
            {
                Nombre = nombre,
                Apellidos = apellidos,
                Identificacion = identificacion,
                TipoIdentificacion = tipoIdentificacion,
                Genero = genero,
                EstadoCivil = estadoCivil,
                FechaNacimiento = fechaNacimiento,
                Especialidad = especialidad,
                Telefono = telefono,
                CorreoElectronico = correoElectronico
            };

            // Obtener la lista de médicos de la sesión
            List<Medico> listaMedicos = Session["Medicos"] as List<Medico>;
            // Agregar el nuevo médico a la lista
            listaMedicos.Add(nuevoMedico);
            // Actualizar la lista de médicos en la sesión
            Session["Medicos"] = listaMedicos;

            lblMensaje.Text = "El médico ha sido guardado satisfactoriamente.";
        }

        // Clase para representar un médico
        public class Medico
        {
            public string Nombre { get; set; }
            public string Apellidos { get; set; }
            public string Identificacion { get; set; }
            public string TipoIdentificacion { get; set; }
            public string Genero { get; set; }
            public string EstadoCivil { get; set; }
            public string FechaNacimiento { get; set; }
            public string Especialidad { get; set; }
            public string Telefono { get; set; }
            public string CorreoElectronico { get; set; }
        }

        // Método para limpiar el formulario después de guardar un médico
        private void LimpiarFormulario()
        {
            txtNombre.Text = "";
            txtApellidos.Text = "";
            txtIdentificacion.Text = "";
            ddlTipoIdentificacion.SelectedIndex = 0;
            ddlGenero.SelectedIndex = 0;
            ddlEstadoCivil.SelectedIndex = 0;
            txtFechaNacimiento.Text = "";
            txtEspecialidad.Text = "";
            txtTelefono.Text = "";
            txtCorreoElectronico.Text = "";
        }
    }
}
