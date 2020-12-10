using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Modelo
{
    public class ClsEnfermedad
    {
        public Object ConsultarTodos()
        {
            ORMDataContext BD = new ORMDataContext();
            return from e in BD.Enfermedad
                   select e;
        }

        public Object ConsultarTodosSintomas()
        {
            ORMDataContext BD = new ORMDataContext();
            return from s in BD.Sintoma
                   select s;
        }

        public Object ConsultarEnfermedad(string enfermedad, string sintoma)
        {
            ORMDataContext BD = new ORMDataContext();
            return from e in BD.VistaEnfermedad
                   where e.nombre == enfermedad || e.sintoma == sintoma
                   select e;
        }
    }
}