using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;
namespace Vista
{
    public partial class agregarEspecialista1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ClsCiudad ciudadDAO = new ClsCiudad();
            drpCiudad.DataSource = ciudadDAO.consularTodo();
            drpCiudad.DataValueField = "id_Ciudad";
            drpCiudad.DataTextField = "ciudad1";
            drpCiudad.DataBind();

            ClsEspecialidad especialidadDAO = new ClsEspecialidad();
            drpEspecialidad.DataSource = especialidadDAO.consultarTodos();
            drpEspecialidad.DataValueField = "id_especialidad";
            drpEspecialidad.DataTextField = "especialidad1";
            drpEspecialidad.DataBind();
        }

        protected void btnRegistarEspecialista_Click(object sender, EventArgs e)
        {
            string mensaje = string.Empty;
            ClsEspecialista EspecialistaDAO = new ClsEspecialista();
            Especialista Especialista = new Especialista();
            Especialista.id_ente = EspecialistaDAO.idPersonaEnte(int.Parse(Session["idPersona"].ToString()));
            Especialista.nombre = TextNombre.Text;
            Especialista.correo = TextCorreo.Text;
            Especialista.celular = TextCelular.Text;
            Especialista.id_especialidad = int.Parse(drpEspecialidad.SelectedValue.ToString());
            Especialista.id_ciudad = int.Parse(drpCiudad.SelectedValue.ToString());
            Especialista.num_licencia = int.Parse(TextNumLicencia.Text);
            Especialista.fech_expedicion_licen = DateTime.Parse(TextFechaE.Text);
            EspecialistaDAO.Registrar(Especialista);
        }
    }
}
