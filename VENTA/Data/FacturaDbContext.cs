using Microsoft.EntityFrameworkCore;
using VENTA.Models;

namespace VENTA.Data
{
    public class FacturaDbContext : DbContext
    {
        public FacturaDbContext(DbContextOptions options) : base(options)
        {
        }

        //Dbset
        public DbSet<Factura> Facturas { get; set; }
    }
}
