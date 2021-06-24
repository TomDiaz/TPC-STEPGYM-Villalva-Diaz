using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DOMINIO
{
    public class Contenido
    {
        public int Id { get; set; }
        public Clase clase { get; set; }
        public Ejercicio ejercicio { get; set; }
        public string Video { get; set; }
        public int Dia { get; set; }
    }
}
