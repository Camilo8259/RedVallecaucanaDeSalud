using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Modelo
{
    public class ClsEnteSalud
    {
        public string Registrar(Ente_salud objEnte)
        {
            ORMDataContext BD = new ORMDataContext();
            try
            {
                BD.Ente_salud.InsertOnSubmit(objEnte);
                BD.SubmitChanges();
                return "Registro exitoso";
            }
            catch (Exception ex)
            {
                return "Error registro: " + ex.Message;
            }
        }

        static public List<Ente_salud> consultarEnte()
        {
            ORMDataContext BD = new ORMDataContext();
            return (from e in BD.Ente_salud
                    where e.id_persona == null
                    select e).ToList();
        }

        public Object EnteAsociado()
        {
            ORMDataContext BD = new ORMDataContext();
            return from e in BD.Ente_salud
                    
                    select new
                    {
                        id_ente = e.id_ente,
                        datos = e.razon_social
                    } ;
        }



        public Object ConsultarEnte()
        {
            ORMDataContext BD = new ORMDataContext();
            return from e in BD.Ente_salud
                   where e.id_persona == null
                   select new
                   {
                       id_ente = e.id_ente,
                       nit = e.nit,
                       razon = e.razon_social,
                       representante = e.representante,
                       ciudad = e.Ciudad.ciudad1,
                       capacidad = e.capacidad_pacientes,
                   };
        }

        public Object ConsultarEnteAsociado(int id)
        {
            ORMDataContext BD = new ORMDataContext();
            return from e in BD.Ente_salud
                   where e.id_persona == id
                   select new
                   {
                       nit = e.nit,
                       razon = e.razon_social,
                       representante = e.representante,
                       correo = e.correo,
                       telefono = e.telefono,
                       sitio = e.sitio_web,
                       ciudad = e.Ciudad.ciudad1,
                       capacidad = e.capacidad_pacientes,
                   };
        }

        public void AsignarPersona(int id_persona, int id_ente)
        {
            ORMDataContext BD = new ORMDataContext();
            var ente = (from e in BD.Ente_salud
                        where e.id_ente == id_ente
                        select e).First();
            ente.id_persona = id_persona;
            BD.SubmitChanges();
        }

        static public int CountEste()
        {
            ORMDataContext BD = new ORMDataContext();
            return (from e in BD.Ente_salud select e).Count();
        }

        static public int CountEsteAsociado(int id)
        {
            ORMDataContext BD = new ORMDataContext();
            return (from e in BD.Ente_salud where e.id_persona == id select e).Count();
        }
    }
}
