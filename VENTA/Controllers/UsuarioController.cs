using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using VENTA.Data;
using VENTA.Models;

namespace VENTA.Controllers
{
    [ApiController]
    [Route("api/[Controller]")]

    public class UsuarioController : Controller
    {
        private readonly UsuarioDbContext usuarioDbContext;

        public UsuarioController(UsuarioDbContext usuarioDbContext)
        {
            this.usuarioDbContext = usuarioDbContext;
        }

        // Get All Users
        [HttpGet]

        public async Task<IActionResult> GetAllUsuarios()
        {
            var usuarios = await usuarioDbContext.Usuarios.ToListAsync();
            return Ok(usuarios);
        }

        // Get single user
        [HttpGet]
        [Route("{id:int}")]
        [ActionName("GetUsuario")]

        public async Task<IActionResult> GetUsuario([FromRoute] int id)
        {
            var usuarios = await usuarioDbContext.Usuarios.FirstOrDefaultAsync(x => x.iIdUsuario == id);
            if (usuarios != null)
            {
                return Ok(usuarios);
            }
            return NotFound("User not found");
        }

        // Add user
        [HttpPost]

        public async Task<IActionResult> AddUsuario([FromBody] Usuario usuario)
        {
            //usuario.iIdUsuario = new(usuario);
            await usuarioDbContext.Usuarios.AddAsync(usuario);
            await usuarioDbContext.SaveChangesAsync();

            return CreatedAtAction(nameof(GetUsuario), usuario.iIdUsuario, usuario);

        }

        // Update User
        [HttpPut]
        [Route("{id:int}")]

        public async Task<IActionResult> UpdateUser([FromRoute] int id, [FromBody] Usuario usuario)
        {
            var existinuser = await usuarioDbContext.Usuarios.FirstOrDefaultAsync(x => x.iIdUsuario == id);
            if (existinuser != null)
            {
                existinuser.iIdUsuario = usuario.iIdUsuario;
                existinuser.iIdTipoUsuario = usuario.iIdTipoUsuario;
                existinuser.cNombre = usuario.cNombre;
                existinuser.cApellido = usuario.cApellido;
                existinuser.cEdad = usuario.cEdad;
                existinuser.cCorreo = usuario.cCorreo;
                await usuarioDbContext.SaveChangesAsync();
                return Ok(existinuser);
            }

            return NotFound("User not found");
        }

        // Delete User
        [HttpDelete]
        [Route("{id:int}")]

        public async Task<IActionResult> DeleteUser([FromRoute] int id)
        {
            var existinuser = await usuarioDbContext.Usuarios.FirstOrDefaultAsync(x => x.iIdUsuario == id);
            if (existinuser != null)
            {
                usuarioDbContext.Remove(existinuser);
                await usuarioDbContext.SaveChangesAsync();
                return Ok(existinuser);
            }

            return NotFound("User not found");
        }

    }
}
