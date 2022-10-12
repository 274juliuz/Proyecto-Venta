using Microsoft.EntityFrameworkCore;
using VENTA.Models;

namespace VENTA.Data
{
    public class TipoUsuarioDbContext : DbContext
    {
        public TipoUsuarioDbContext(DbContextOptions options) : base(options)
        {
        }

        //Dbset
        public DbSet<TipoUsuario> TiposUsuarios { get; set; }
    }
}
