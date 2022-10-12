﻿// <auto-generated />
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using VENTA.Data;

#nullable disable

namespace VENTA.Migrations
{
    [DbContext(typeof(UsuarioDbContext))]
    [Migration("20221011221451_initial")]
    partial class initial
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "6.0.3")
                .HasAnnotation("Relational:MaxIdentifierLength", 128);

            SqlServerModelBuilderExtensions.UseIdentityColumns(modelBuilder, 1L, 1);

            modelBuilder.Entity("VENTA.Models.Usuario", b =>
                {
                    b.Property<int>("iIdUsuario")
                        .ValueGeneratedOnAdd()
                        .HasColumnType("int");

                    SqlServerPropertyBuilderExtensions.UseIdentityColumn(b.Property<int>("iIdUsuario"), 1L, 1);

                    b.Property<string>("cApellido")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("cCorreo")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("cEdad")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<string>("cNombre")
                        .IsRequired()
                        .HasColumnType("nvarchar(max)");

                    b.Property<int>("iIdTipoUsuario")
                        .HasColumnType("int");

                    b.HasKey("iIdUsuario");

                    b.ToTable("Usuarios");
                });
#pragma warning restore 612, 618
        }
    }
}
