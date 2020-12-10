using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Modelo
{
    public class ClsCiudad
    {
        public Object consularTodo()
        {
            ORMDataContext BD = new ORMDataContext();
            return from c in BD.Ciudad
                   select c;
        }
    }
}