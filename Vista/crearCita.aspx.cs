using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista
{
    public partial class crearCita1 : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
            lblnombreE.Text = "Nombre especialista: " + Session["nombreEspecialista"];
            lblespecialidad.Text = "Especialidad: " + Session["especialidad"];   
            lblnumeroLicencia.Text = "Licencia Nº: " + Session["licencia"];
            lblenteSaludE.Text = "Ente de salud: " + Session["enteSalud"];
            lblcorreoE.Text = "Correo: " + Session["correo"];
            lblcelularE.Text = "Celular: " + Session["celular"];
            lblciudadE.Text = "Ciudad: " + Session["ciudad"];
            ClsCita clsCita = new ClsCita();
            DropDownListHora.DataSource = clsCita.consularHora();
            DropDownListHora.DataValueField = "id_hora";
            DropDownListHora.DataTextField = "hora";
            DropDownListHora.DataBind();
            }
        }

        protected void DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void btnRegistrarCita_Click(object sender, EventArgs e)
        {
            string mensaje = string.Empty;
            ClsCita clsCita = new ClsCita();
            Cita cita = new Cita();
            cita.fecha_cita = DateTime.Parse(txtFecha.Text);
            cita.id_hora = int.Parse(DropDownListHora.SelectedValue.ToString());
            cita.id_persona = int.Parse(Session["idPac"].ToString());
            cita.id_especialista = int.Parse(Session["idEspecialista"].ToString());
            cita.estado = "Reservada";
            mensaje = clsCita.Registrar(cita);

            Page.RegisterStartupScript("script", "<script languaje=JavaScript>alert('" + mensaje + "');location.href='crearCita.aspx';</script>");
        }


    }
}