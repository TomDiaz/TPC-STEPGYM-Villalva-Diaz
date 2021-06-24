using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DOMINIO
{

    //clase usuario, tiene los datos generales de un usuario y u tipousuario que se utilizara para
    //diferenciar de un coach cliente o admin
    public class Usuario
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Apellido { get; set; }
        public string Dni { get; set; }
        public string Telefono { get; set; }
        public string Direccion { get; set; }
        public string Mail { get; set; }
        public DateTime FechaInicio { get; set; }
        public string Foto { get; set; }
        public TipoUsuario Tipo { get; set; }
    }
}
