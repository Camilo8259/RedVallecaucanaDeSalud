using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista
{
    public partial class consultarCitas1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClsCita clsCita = new ClsCita();
                if (int.Parse(Session["idRol"].ToString()) == 3)
                {
                    gdgGrid.DataSource = clsCita.ConsultarCita(int.Parse(Session["idPac"].ToString()), "Reservada");
                }
                else
                {
                    gdgGrid1.DataSource = clsCita.AllConsulCita();
                }
                gdgGrid.DataBind();
                gdgGrid1.DataBind();
                if (gdgGrid.Rows.Count != 0)
                {
                    gdgGrid.HeaderRow.TableSection = TableRowSection.TableHeader; // Agrega etiqueta: <thead> a la tabla
                }
                    
                if (gdgGrid1.Rows.Count != 0)
                {
                    gdgGrid1.HeaderRow.TableSection = TableRowSection.TableHeader;
                }
            }

        }

        protected void gdgGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow filaSeleccionada = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int rowIndex = filaSeleccionada.RowIndex;
            if (e.CommandName == "Calificar" || Session["estado"].ToString() == "Finalizada")
            {
                Session["idCita"] = gdgGrid.Rows[rowIndex].Cells[0].Text;
                Session["nombre"] = gdgGrid.Rows[rowIndex].Cells[1].Text;
                Session["fechaCita"] = gdgGrid.Rows[rowIndex].Cells[2].Text;
                Session["enteSalud"] = gdgGrid.Rows[rowIndex].Cells[3].Text;
                Session["idHora"] = gdgGrid.Rows[rowIndex].Cells[4].Text;
                Session["nombreEspecialista"] = gdgGrid.Rows[rowIndex].Cells[5].Text;
                Session["nombreEspecialidad"] = gdgGrid.Rows[rowIndex].Cells[6].Text;
                Session["estado"] = gdgGrid.Rows[rowIndex].Cells[7].Text;
                Server.Transfer("calificarCita.aspx");
            }
            else
            {
                Page.RegisterStartupScript("script", "<script languaje=JavaScript>alert('Cita ya calificada');location.href='dashboard.aspx';</script>");
            }

        }
        protected void gdgGrid1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            GridViewRow filaSeleccionada = (GridViewRow)((Control)e.CommandSource).NamingContainer;
            int rowIndex = filaSeleccionada.RowIndex;
            if (e.CommandName == "Calificar" || Session["estado"].ToString() == "Finalizada")
            {
                Session["idCita"] = gdgGrid1.Rows[rowIndex].Cells[0].Text;
                Session["nombre"] = gdgGrid1.Rows[rowIndex].Cells[1].Text;
                Session["fechaCita"] = gdgGrid1.Rows[rowIndex].Cells[2].Text;
                Session["enteSalud"] = gdgGrid1.Rows[rowIndex].Cells[3].Text;
                Session["idHora"] = gdgGrid1.Rows[rowIndex].Cells[4].Text;
                Session["nombreEspecialista"] = gdgGrid1.Rows[rowIndex].Cells[5].Text;
                Session["nombreEspecialidad"] = gdgGrid1.Rows[rowIndex].Cells[6].Text;
                Session["estado"] = gdgGrid1.Rows[rowIndex].Cells[7].Text;
                Server.Transfer("calificarCita.aspx");
            }
            else
            {
                Page.RegisterStartupScript("script", "<script languaje=JavaScript>alert('Cita ya calificada');location.href='dashboard.aspx';</script>");
            }

        }

        protected void gdgGrid_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
        protected void gdgGrid1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }


        protected void gdgGrid_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void gdgGrid1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}