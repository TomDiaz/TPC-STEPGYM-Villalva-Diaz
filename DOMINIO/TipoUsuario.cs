using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DOMINIO
{
    //clase tipousuario, se utilizara para permisos y accesibilidad a funciones como Agregar cliente, agregar a curso etc
    public class TipoUsuario
    {
        public int Id { get; set; }
        public string Usuario { get; set; }
    }
}
