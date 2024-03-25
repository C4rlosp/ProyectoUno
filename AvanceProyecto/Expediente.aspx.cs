using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using static AvanceProyecto.RegistrodeCitas;

namespace AvanceProyecto
{
    public partial class Expediente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDropDownList();
            }

            // Verificar si se ha seleccionado una cita en el DropDownList
            if (!string.IsNullOrEmpty(ddlCitasAtendidas.SelectedValue))
            {
                CargarCitasAtendidas();
            }
        }


        private void CargarDropDownList()
        {
            // Obtener la lista de citas atendidas de la sesión o de la base de datos
            List<CitaAtendida> citasAtendidas = Session["CitasAtendidas"] as List<CitaAtendida>;

            // Llenar el DropDownList con las citas atendidas
            if (citasAtendidas != null)
            {
                foreach (var cita in citasAtendidas)
                {
                    ddlCitasAtendidas.Items.Add(new ListItem($"{cita.Fecha} - {cita.Hora}", cita.Id.ToString()));
                }
            }
        }

        protected void ddlCitasAtendidas_SelectedIndexChanged(object sender, EventArgs e)
        {
            // Obtener el ID de la cita seleccionada
            int idCita = Convert.ToInt32(ddlCitasAtendidas.SelectedValue);

            // Buscar la cita atendida por su ID en la lista de citas atendidas
            CitaAtendida citaSeleccionada = ObtenerCitaAtendidaPorId(idCita);

            if (citaSeleccionada != null)
            {
                // Mostrar la información en el GridView
                GridViewCitasAtendidas.DataSource = new List<CitaAtendida> { citaSeleccionada };
                GridViewCitasAtendidas.DataBind();
            }
        }

        private CitaAtendida ObtenerCitaAtendidaPorId(int id)
        {
            // Obtener la lista de citas atendidas de la sesión o de la base de datos
            List<CitaAtendida> citasAtendidas = Session["CitasAtendidas"] as List<CitaAtendida>;

            // Buscar la cita atendida por su ID
            return citasAtendidas.FirstOrDefault(c => c.Id == id);
        }

        private List<CitaAtendida> ObtenerCitasAtendidas()
        {
            // Obtener la lista de citas atendidas de la sesión o de la base de datos
            return Session["CitasAtendidas"] as List<CitaAtendida>;
        }
        /// <summary>
        /// Metodo llenado de visualizacion de citas
        /// </summary>
        /// <param name="citasAtendidas"></param>
        private void BindCitasAtendidas(List<CitaAtendida> citasAtendidas)
        {
            // Llenar el GridView con las citas atendidas
            GridViewCitasAtendidas.DataSource = citasAtendidas;
            GridViewCitasAtendidas.DataBind();
        }
        /// <summary>
        /// Metodo cargar listas de citas atendidas
        /// </summary>
        private void CargarCitasAtendidas()
        {
            List<CitaAtendida> citasAtendidas = ObtenerCitasAtendidas();
            if (citasAtendidas != null)
            {
                BindCitasAtendidas(citasAtendidas);
            }
        }
        /// <summary>
        /// Metodo volver a Medico.aspx
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("medico.aspx");
        }
        /// <summary>
        /// Metodo exportar expediente
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnExportarXml_Click(object sender, EventArgs e)
        {
            // Verificar si se ha seleccionado una cita en el DropDownList
            if (ddlCitasAtendidas.SelectedValue == "")
            {
                // Mostrar mensaje de error
                lblMensaje.Text = "Por favor selecciona una cita para exportar.";
                return; // Salir del método para evitar la exportación
            }

            // Obtener el ID de la cita seleccionada
            int idCita = Convert.ToInt32(ddlCitasAtendidas.SelectedValue);

            // Buscar la cita atendida por su ID
            CitaAtendida citaSeleccionada = ObtenerCitaAtendidaPorId(idCita);

            if (citaSeleccionada != null)
            {
                // Crear un objeto XML con los datos de la cita
                XmlDocument xmlDocument = new XmlDocument();
                XmlElement root = xmlDocument.CreateElement("CitaAtendida");
                xmlDocument.AppendChild(root);

                XmlElement idElement = xmlDocument.CreateElement("IdCita");
                idElement.InnerText = citaSeleccionada.Id.ToString();
                root.AppendChild(idElement);

                XmlElement fechaElement = xmlDocument.CreateElement("FechaAtendido");
                fechaElement.InnerText = citaSeleccionada.Fecha.ToString("yyyy-MM-dd");
                root.AppendChild(fechaElement);

                //XmlElement horaElement = xmlDocument.CreateElement("Hora");
                //horaElement.InnerText = citaSeleccionada.Hora;
                //root.AppendChild(horaElement);

                XmlElement observacionesElement = xmlDocument.CreateElement("ObservacionesdelMedico");
                observacionesElement.InnerText = citaSeleccionada.Observaciones;
                root.AppendChild(observacionesElement);

                XmlElement citaElement = xmlDocument.CreateElement("CitaAgendada");
                citaElement.InnerText = citaSeleccionada.Cita;
                root.AppendChild(citaElement);

                XmlElement enfermedadElement = xmlDocument.CreateElement("EnfermedadquePresenta");
                enfermedadElement.InnerText = citaSeleccionada.Enfermedad;
                root.AppendChild(enfermedadElement);

                XmlElement medicamentoElement = xmlDocument.CreateElement("MedicamentoPrescrito");
                medicamentoElement.InnerText = citaSeleccionada.Medicamento;
                root.AppendChild(medicamentoElement);

                XmlElement medicoElement = xmlDocument.CreateElement("MedicoqueAtendio");
                medicoElement.InnerText = citaSeleccionada.Medico;
                root.AppendChild(medicoElement);

                // Guardar el documento XML en un archivo
                string filePath = Server.MapPath("~/App_Data/CitaExportada.xml");
                xmlDocument.Save(filePath);

                // Descargar el archivo XML
                Response.Clear();
                Response.ContentType = "application/xml";
                Response.AppendHeader("Content-Disposition", "attachment; filename=CitaExportada.xml");
                Response.TransmitFile(filePath);
                Response.End();
            }
        }
    }
}