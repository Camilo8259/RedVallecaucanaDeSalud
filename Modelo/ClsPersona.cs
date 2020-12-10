using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Threading.Tasks;

namespace Modelo
{
    public class ClsPersona
    {
        public string Registrar(Persona persona)
        {
            ORMDataContext BD = new ORMDataContext();
            try
            {
                BD.Persona.InsertOnSubmit(persona);
                BD.SubmitChanges();
                return "Registro exitoso";
            }
            catch (Exception ex)
            {
                return "Error" + ex.Message;
            }
        }

        public Persona Login(int cedula, string password)
        {
            ORMDataContext BD = new ORMDataContext();
            var PersonaLogin = BD.sp_login(cedula, password);
            Persona persona = new Persona();

            foreach (var item in PersonaLogin)
            {
                persona.cedula = item.cedula;
                persona.id_rol = item.id_rol;
                persona.cedula = item.cedula;
                persona.nombre = item.nombre;
                persona.apellido = item.apellido;
                persona.correo = item.correo;
                persona.celular = item.celular;
            }
            return persona;
        }
        public Object PersonaContenido()
        {
            ORMDataContext BD = new ORMDataContext();
            return (from e in BD.Persona
                    where e.id_rol == 2
                    select new
                    {
                        id_persona = e.id_persona,
                        datos = e.cedula + " - " + e.nombre + " " + e.apellido
                    }).ToList();
        }
        /*
        public List<persona> PersonaContenido()
        {
            ORMDataContext BD = new ORMDataContext();
            return (from e in BD.persona
                    where e.id_rol == 2
                    select e).ToList();
        }*/

    }
}