using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Modelo
{
    public class ClsEspecialista
    {
        public string Registrar(Especialista especilista)
        {
            ORMDataContext BD = new ORMDataContext();
            try
            {
                BD.Especialista.InsertOnSubmit(especilista);
                BD.SubmitChanges();
                return "Registro exitoso";
            }
            catch (Exception ex)
            {
                return "Error registro: " + ex.Message;
            }
        }

        public Object ConsultarEspecialista(string especialidad, string ciudad)
        {
            ORMDataContext BD = new ORMDataContext();
            return from e in BD.Especialidad
                   where e.especialidad1 == especialidad
                   select e;
        }

        public Object consultarEspecialistas()
        {
            ORMDataContext BD = new ORMDataContext();
            return from e in BD.Especialista
                   select new
                   {
                       id = e.id_especialista,
                       nombre = e.nombre,
                       ente = e.Ente_salud.razon_social,
                       correo = e.correo,
                       celular = e.celular,
                       especialidad = e.Especialidad.especialidad1,
                       ciudad = e.Ciudad.ciudad1
                       /*
                       licencia = e.num_licencia,
                       expedicion = e.fech_expedicion_licen.ToShortDateString()
                       */
                   };
        }

        static public List<Especialista> consultarEspecialistass(int id)
        {
            ORMDataContext BD = new ORMDataContext();
            return (from e in BD.Especialista where e.id_especialista == id select e).ToList();
        }

        public int idPersonaEnte(int idPersona)
        {
            ORMDataContext BD = new ORMDataContext();
            var consultaidEnte = (from e in BD.Ente_salud
                                  where e.id_persona == idPersona
                                  select new
                                  {
                                      idEnte = e.id_ente
                                  }).First();
            return consultaidEnte.idEnte;
        }

        static public int CountEspecialistas()
        {
            ORMDataContext BD = new ORMDataContext();
            return (from e in BD.Especialista select e).Count();
        }
    }
}