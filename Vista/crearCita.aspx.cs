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
            reserva.Visible = false;
        }

        public List<Especialista> infoEspecialista()
        {
            return ClsEspecialista.consultarEspecialistass(int.Parse(Session["idEspecialista"].ToString()));
        }

        public void btnRegistrarCita_Click(object sender, EventArgs e)
        {
            string mensaje = string.Empty;
            ClsCita clsCita = new ClsCita();
            Cita cita = new Cita();
            cita.fecha_cita = Calendar.SelectedDate;
            cita.id_hora = int.Parse(DropDownList.SelectedValue.ToString());
            cita.id_persona = int.Parse(Session["idPersona"].ToString());
            cita.id_especialista = int.Parse(Session["idEspecialista"].ToString());
            cita.estado = "Reservada";
            mensaje = clsCita.Registrar(cita);
            Page.RegisterStartupScript("script", "<script languaje=JavaScript>alert('" + mensaje + "');location.href='dashboard.aspx';</script>");
        }

        public void Calendar_SelectionChanged(object sender, EventArgs e)
        {
            txtFecha.Text = "Fecha seleccionada: " + Calendar.SelectedDate.ToShortDateString();
        }

        public void Calendar_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }
        }

        public void bntFiltrar_Click(object sender, EventArgs e)
        {
            List<Cita> reservado = new List<Cita>();
            ClsCita cita = new ClsCita();
            reservado = cita.CitaReservada(Calendar.SelectedDate);

            ClsCita clsCita = new ClsCita();
            List<Hora_cita> horas = new List<Hora_cita>();
            horas = clsCita.consultarHoras();

            // Elimina horas reservadas
            foreach (Cita r in reservado)
            {
                Hora_cita horas2 = cita.horasConReseva(r.id_hora);
                horas.RemoveAt(horas2.id_hora - 1);
            }

            DropDownList.DataSource = horas;
            DropDownList.DataValueField = "id_hora";
            DropDownList.DataTextField = "hora";
            DropDownList.DataBind();

            reserva.Visible = true;
        }

        public void DropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}