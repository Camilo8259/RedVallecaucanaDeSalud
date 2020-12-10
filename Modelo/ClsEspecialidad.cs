using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Modelo
{
    public class ClsEspecialidad
    {
        ORMDataContext BD = new ORMDataContext();

        public Object consultarTodos()
        {
            return from e in BD.Especialidad
                   select e;
        }
    }
}