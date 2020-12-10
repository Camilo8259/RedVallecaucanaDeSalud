﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Modelo
{
    public class ClsRol
    {
        public string Rol(int idRol)
        {
            ORMDataContext BD = new ORMDataContext();
            var consultaRol = (from r in BD.Rol
                               where r.id_rol == idRol
                               select new
                               {
                                   idRol = r.id_rol,
                                   rol = r.rol1
                               }).First();
            return consultaRol.rol;
        }
    }
}