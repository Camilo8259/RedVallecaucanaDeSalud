using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelo;

namespace Vista
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            ClsPersona clsPersona = new ClsPersona();
            ClsRol clsRol = new ClsRol();
            Persona persona = new Persona();
            persona = clsPersona.Login(int.Parse(txtDocumento.Text), txtPassword.Text);
            
            if (persona.cedula != 0)
            {
                Session["idPersona"] = persona.cedula;
                Session["nombre"] = persona.nombre;
                Session["apellido"] = persona.apellido;
                Session["idRol"] = persona.id_rol;
                Session["rol"] = clsRol.Rol(persona.id_rol);

                //if (persona.id_rol == 1)
                //{
                //    Response.Redirect("dashAdmin.aspx", false);
                //}
                //else if (persona.id_rol == 2)
                //{
                //    Response.Redirect("dashContenido.aspx", false);
                //}
                //else if (persona.id_rol == 3)
                //{
                //    Response.Redirect("dashPersona.aspx", false);
                //}
                Server.Transfer("dashboard.aspx");
            }
            else
            {
                
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Documento o contraseña incorrectos');", true);
            }
        }

    }
}