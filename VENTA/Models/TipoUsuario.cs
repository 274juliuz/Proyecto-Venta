using System.ComponentModel.DataAnnotations;

namespace VENTA.Models
{
    public class TipoUsuario
    {
        [Key]
        public int iIdTipoUsuario { get; set; }
        public string ctipoUsuario { get; set; }
    }
}
