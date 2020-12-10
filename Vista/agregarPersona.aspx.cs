using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using System.Windows.Forms;
using Modelo;
namespace Vista
{
    public partial class agregarPersona : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*
            lblBienvenido.Text = "Bienvenido " + Session["nombre"] +" "+ Session["apellido"];
            */
        }

        protected void btnRegistra_Click(object sender, EventArgs e)
        {
            string mensaje = string.Empty;
            ClsPersona clsPersona = new ClsPersona();
            Persona Persona = new Persona();
            Persona.nombre = TextNombre.Text;
            Persona.apellido = TextApellido.Text;
            Persona.correo = TextCorreo.Text;
            Persona.celular = (TextCelular.Text);
            Persona.cedula = int.Parse(TextCedula.Text);
            Persona.password = textPassword.Text;
            Persona.id_rol = 3;
            mensaje = clsPersona.Registrar(Persona);
            // Persona = new Persona();

            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void textPassword_TextChanged(object sender, EventArgs e)
        {

        }
    }
}