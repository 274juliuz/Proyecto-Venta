using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace VENTA.Migrations
{
    public partial class initial : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Usuarios",
                columns: table => new
                {
                    iIdUsuario = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    iIdTipoUsuario = table.Column<int>(type: "int", nullable: false),
                    cNombre = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    cApellido = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    cEdad = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    cCorreo = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Usuarios", x => x.iIdUsuario);
                });
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Usuarios");
        }
    }
}
