using System.ComponentModel.DataAnnotations;

namespace VENTA.Models
{
    public class Factura
    {
        [Key]
        public int iIdFactura { get; set; }
        public int iIdUsuario { get; set; }
        public string cFolio { get; set; }
        public string cSaldo { get; set; }
        public DateTime dtFechaFacturacion { get; set; }
        public DateTime dtFechaCreacion { get; set; }


    }
}
