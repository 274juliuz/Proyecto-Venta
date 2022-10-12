using VENTA.Models;
using Microsoft.EntityFrameworkCore;

namespace VENTA.Data
{
    public class UsuarioDbContext : DbContext
    {
        public UsuarioDbContext(DbContextOptions options) : base(options)
        {
        }

        //Dbset
        public DbSet<Usuario> Usuarios { get; set; }
    }
}
