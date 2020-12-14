using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista
{
    public partial class calificarCita1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ListItem uno = new ListItem("1");
                ListItem dos = new ListItem("2");
                ListItem tres = new ListItem("3");
                ListItem cuatro = new ListItem("4");
                ListItem cinco = new ListItem("5");

                DropDownListCal.Items.Add(uno);
                DropDownListCal.Items.Add(dos);
                DropDownListCal.Items.Add(tres);
                DropDownListCal.Items.Add(cuatro);
                DropDownListCal.Items.Add(cinco);

                lblnombre.Text = "Nombre paciente: " + Session["nombre"];
            lblfecha.Text = "Fecha Cita: " + Session["fechaCita"];
            lblente.Text = "Ente de salud: " + Session["enteSalud"];
            lblhora.Text = "Hora: " + Session["idHora"];
            lblespecialista.Text = "Especialista: " + Session["nombreEspecialista"];
            lblespecialidad.Text = "Especialidad: " + Session["nombreEspecialidad"];
            lblestado.Text = "Estado: " + Session["estado"];
            }
        }
        protected void DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnCalificarCita_Click(object sender, EventArgs e)
        {
            ClsCita clscita = new ClsCita();
            int id_cita = int.Parse(Session["idCita"].ToString());
            int calificacion = int.Parse(DropDownListCal.SelectedValue.ToString());
            clscita.CalificarCita(calificacion, id_cita);
            Page.RegisterStartupScript("script", "<script languaje=JavaScript>alert('Cita calificada');location.href='dashboard.aspx';</script>");
        }
    }

}