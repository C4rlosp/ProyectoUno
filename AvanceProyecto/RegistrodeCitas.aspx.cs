using System;
using System.Collections.Generic;
using System.Web.UI.WebControls;
using static AvanceProyecto.AgregarCitas;
using static AvanceProyecto.AgregarEnfermedades;
using static AvanceProyecto.AgregarMedicamentos;
using static AvanceProyecto.ManejarMedicos;

namespace AvanceProyecto
{
    public partial class RegistrodeCitas : System.Web.UI.Page
    {
        private static int _nextId = 1; // Variable estática para generar IDs automáticos
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarListas();
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            // Obtener los valores seleccionados de las listas
            string citaSeleccionada = ddlCitas.SelectedValue;
            string enfermedadSeleccionada = ddlEnfermedades.SelectedValue;
            string medicamentoSeleccionado = ddlMedicamentos.SelectedValue;
            string medicoSeleccionado = ddlMedicos.SelectedValue;
            string observaciones = txtObservaciones.Text;

            // Separar los datos de la cita seleccionada para obtener la identificación del paciente
            string[] datosCita = citaSeleccionada.Split(new string[] { " - Cédula: " }, StringSplitOptions.None);
            string identificacionPaciente = datosCita.Length > 1 ? datosCita[1] : "";

            // Crear un objeto que represente la cita atendida
            CitaAtendida nuevaCitaAtendida = new CitaAtendida
            {
                Id = _nextId++, // Asignar el ID automático y luego incrementar el valor de _nextId
                Identificacion = identificacionPaciente,
                Cita = citaSeleccionada,
                Enfermedad = enfermedadSeleccionada,
                Medicamento = medicamentoSeleccionado,
                Medico = medicoSeleccionado,
                Observaciones = observaciones,
                Fecha = DateTime.Now,
            };

            // Obtener la lista de citas atendidas de la sesión o crear una nueva si no existe
            List<CitaAtendida> citasAtendidas = Session["CitasAtendidas"] as List<CitaAtendida>;
            if (citasAtendidas == null)
            {
                citasAtendidas = new List<CitaAtendida>();
            }

            // Agregar la nueva cita atendida a la lista
            citasAtendidas.Add(nuevaCitaAtendida);

            // Actualizar la lista de citas atendidas en la sesión
            Session["CitasAtendidas"] = citasAtendidas;

            //mensaje al usuario que se ha actualizado el expediente
            lblMensaje.Text = "La cita atendida se ha agregado al expediente.";

            // Limpiar el formulario
            LimpiarFormulario();

            // Redirigir a la página medico.aspx después de guardar
            Response.Redirect("medico.aspx");
        }

        private void CargarListas()
        {
            // Obtener la lista de citas de la sesión Citas
            List<Cita> listaCitas = Session["Citas"] as List<Cita>;

            if (listaCitas != null)
            {
                // Mostrar todas las citas en el DropDownList
                foreach (var cita in listaCitas)
                {
                    ddlCitas.Items.Add(new ListItem($"{cita.Nombre} {cita.Apellidos} - Cédula: {cita.Identificacion} - {cita.Fecha} - {cita.Hora}", $"{cita.Nombre} {cita.Apellidos} - Cédula: {cita.Identificacion} - {cita.Fecha} - {cita.Hora}"));
                }

            }

            // Obtener la lista de pacientes de la sesión Enfermedades
            List<Enfermedad> listaEnfermedad = Session["Enfermedades"] as List<Enfermedad>;
            if (listaEnfermedad != null)
            {
                // Mostrar todas las enfermedades en el DropDownList
                foreach (var enfermedad in listaEnfermedad)
                {
                    ddlEnfermedades.Items.Add(new ListItem($"{enfermedad.Nombre} - {enfermedad.Descripcion}"));
                }
            }

            // Obtener la lista de medicamentos de la sesión Medicamentos
            List<Medicamento> listaMedicamentos = Session["Medicamentos"] as List<Medicamento>;
            if (listaMedicamentos != null)
            {
                // Mostrar todas los medicamentos en el DropDownList
                foreach (var medicamento in listaMedicamentos)
                {
                    ddlMedicamentos.Items.Add(new ListItem($"{medicamento.Nombre} - {medicamento.CasaFarmaceutica}", $"{medicamento.Nombre} - {medicamento.CasaFarmaceutica}"));
                }
            }

            // Obtener la lista de medicos de la sesion Medicos
            List<Medico> listaMedicos = Session["Medicos"] as List<Medico>;
            if (listaMedicos != null)
            {
                foreach (var medico in listaMedicos)
                {
                    ddlMedicos.Items.Add(new ListItem($"{medico.Nombre} - {medico.Apellidos} - {medico.Identificacion} - {medico.Especialidad}", $"{medico.Nombre} - {medico.Apellidos} - {medico.Identificacion} - {medico.Especialidad}"));
                }
            }
        }

        private void LimpiarFormulario()
        {
            ddlCitas.SelectedIndex = -1;
            ddlEnfermedades.SelectedIndex = -1;
            ddlMedicamentos.SelectedIndex = -1;
            ddlMedicos.SelectedIndex = -1;
            txtObservaciones.Text = string.Empty;
            
        }

        public class CitaAtendida
        {
            public int Id { get; set; }
            public DateTime Fecha { get; set; }
            public string Observaciones { get; set; }
            public string Cita { get; set; }
            public string Enfermedad { get; set; }
            public string Medicamento { get; set; }
            public string Medico { get; set; }
            public string Hora { get; set; }
            public string Identificacion { get; set; }

        }
    }
}
