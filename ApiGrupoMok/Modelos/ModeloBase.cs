using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Modelos
{
    public class ModeloBase
    {
        [Required]
        //[StringLength(128, MinimumLength = 3)]
        public int IdUsuariosCreacion { get; set; }

        [Required]
        //[StringLength(128, MinimumLength = 3)]
        public int IdUsuariosModificacion { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime FechaCreacion { get; set; }

        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:yyyy-MM-dd}", ApplyFormatInEditMode = true)]
        public DateTime FechaActualizacion { get; set; }

        [Required]
        [StringLength(60, MinimumLength = 3)]
        public string DireccionIPCreo { get; set; }

        [Required]
        [StringLength(60, MinimumLength = 3)]
        public string DireccionIPModificacion { get; set; }

        [Required]
        public int Estado { get; set; }

        [StringLength(500, MinimumLength = 0)]
        public string Observaciones { get; set; }
    }
}
