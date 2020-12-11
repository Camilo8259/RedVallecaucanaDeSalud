using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Modelo
{
    public class ClsCita
    {
        public string Registrar(Cita cita)
        {
            ORMDataContext BD = new ORMDataContext();
            try
            {
                BD.Cita.InsertOnSubmit(cita);
                BD.SubmitChanges();
                return "Registro exitoso";
            }
            catch (Exception ex)
            {
                return "Error registro: " + ex.Message;
            }
        }

        public Object ConsultarCita(int idPersona, string estado)
        {
            ORMDataContext BD = new ORMDataContext();
            return from c in BD.Cita
                   where c.estado == estado && c.id_persona == idPersona
                   select new
                   {
                       id_Cita = c.id_cita,
                       fecha_Cita = c.fecha_cita.ToShortDateString(),
                       id_hora = c.Hora_cita.hora,
                       especialista = c.Especialista.nombre,
                       especialidad = c.Especialista.Especialidad.especialidad1,
                       calificacion = "Sin calificar",
                       estado = c.estado
                   };
        }

        public Object AllConsulCita()
        {
            ORMDataContext BD = new ORMDataContext();
            return from c in BD.Cita
                   select new
                   {
                       id_Cita = c.id_cita,
                       fecha_Cita = c.fecha_cita.ToShortDateString(),
                       id_hora = c.Hora_cita.hora,
                       especialista = c.Especialista.nombre,
                       especialidad = c.Especialista.Especialidad.especialidad1,
                       calificacion = c.calificacion,
                       estado = c.estado
                   };
        }

        public Object AllFindConsulCita(int id)
        {
            ORMDataContext BD = new ORMDataContext();
            return from c in BD.Cita
                   where c.id_persona == id
                   select new
                   {
                       id_Cita = c.id_cita,
                       fecha_Cita = c.fecha_cita.ToShortDateString(),
                       id_hora = c.Hora_cita.hora,
                       especialista = c.Especialista.nombre,
                       especialidad = c.Especialista.Especialidad.especialidad1,
                       calificacion = c.calificacion,
                       estado = c.estado
                   };
        }


        public List<Cita> CitaReservada(DateTime fecha)
        {
            ORMDataContext BD = new ORMDataContext();
            return (from c in BD.Cita
                    where c.estado.Equals("Reservada") && c.fecha_cita == fecha
                    select c).ToList();
        }
        public Object consularHora()
        {
            ORMDataContext BD = new ORMDataContext();
            return from h in BD.Hora_cita
                   select h;
        }

        public List<Hora_cita> consultarHoras()
        {
            ORMDataContext BD = new ORMDataContext();
            return (from h in BD.Hora_cita
                    select h).ToList();
        }

        public Hora_cita horasConReseva(int id)
        {
            ORMDataContext BD = new ORMDataContext();
            return (from h in BD.Hora_cita
                    where h.id_hora == id
                    select h).First();
        }

        public void CalificarCita(int calificacion, int id)
        {
            ORMDataContext BD = new ORMDataContext();
            var CitaCalificada = (from c in BD.Cita
                                  where c.id_cita == id
                                  select c).First();
            CitaCalificada.calificacion = calificacion;
            CitaCalificada.estado = "Atendido";
            BD.SubmitChanges();
        }

        static public int CountCita()
        {
            ORMDataContext BD = new ORMDataContext();
            return (from e in BD.Cita where e.estado.Equals("Atendido") select e).Count();
        }

        static public int CountCitaSinCal(int id)
        {
            ORMDataContext BD = new ORMDataContext();
            return (from e in BD.Cita where e.id_persona == id && e.calificacion == null select e).Count();
        }
    }
}