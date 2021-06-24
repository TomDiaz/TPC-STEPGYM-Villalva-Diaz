using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DOMINIO
{
    public class Ejercicio
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Explicacion { get; set; }
        public int Series { get; set; }
        public int Repeticiones { get; set; }
        public Beneficio beneficio { get; set; }

    }
}
