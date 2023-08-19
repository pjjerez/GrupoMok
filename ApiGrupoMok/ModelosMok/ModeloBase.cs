using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ModelosMok
{
    public class ModeloBase
    {
        public int IdUsuariosCreacion { get; set; }
        public int IdUsuariosModificacion { get; set; }
        public DateTime FechaCreacion { get; set; }
        public DateTime FechaActualizacion { get; set; }
        public string DireccionIPCreo { get; set; }
        public string DireccionIPModificacion { get; set; }
        public int Estado { get; set; }
        public string Observaciones { get; set; }
    }
}
