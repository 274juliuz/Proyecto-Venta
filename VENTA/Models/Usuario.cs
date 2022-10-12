using System.ComponentModel.DataAnnotations;

namespace VENTA.Models
{
    public class Usuario
    {
        [Key]
        public int iIdUsuario { get; set; }
        public int iIdTipoUsuario { get; set; }
        public string cNombre { get; set; }
        public string cApellido { get; set; }
        public string cEdad { get; set; }
        public string cCorreo { get; set; }
    }
}
