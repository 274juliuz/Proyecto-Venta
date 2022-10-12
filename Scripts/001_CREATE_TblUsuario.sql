SET NOCOUNT ON 
/***************************************************************************************** 
* COMA																					 *
* Sistema: Venta																		 *
* Tabla: tbl_Usuario																	 *
*																					  	 *
* -------------------------------------------------------------------------------------- * 
*																						 * 
* Version   Fecha        Usuario             Descripcion							    *		
* -------   ----------   ------------------ -------------------------------------------- * 
*  1.0      11/10/2022   Ismael Gonzalez   	  Creacion del script					     *
******************************************************************************************/
 IF NOT EXISTS(SELECT 1 FROM sys.objects WHERE name = 'tbl_Usuario') 
 BEGIN
	 CREATE TABLE dbo.tbl_Usuario
		(	
		iIdUsuario INT NOT NULL IDENTITY (1,1),
		iIdTipoUsuario INT NOT NULL, 
		cNombre VARCHAR (20) NOT NULL,
		cApellido VARCHAR (20) NOT NULL,
		cEdad VARCHAR (10) NOT NULL,
		cCorreo VARCHAR (30) NOT NULL
		)  

 EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del Usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_Usuario', @level2type=N'COLUMN',@level2name=N'iIdUsuario' 
 EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del Tipo de Usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_Usuario', @level2type=N'COLUMN',@level2name=N'iIdTipoUsuario' 
 EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Nombre del usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_Usuario', @level2type=N'COLUMN',@level2name=N'cNombre'
 EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Apellido del Usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_Usuario', @level2type=N'COLUMN',@level2name=N'cApellido' 
 EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Edad del usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_Usuario', @level2type=N'COLUMN',@level2name=N'cEdad'
 EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Correo del usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_Usuario', @level2type=N'COLUMN',@level2name=N'cCorreo'
  
 PRINT 'Tabla tbl_Usuario creada' 
 END
 ELSE  
	PRINT 'La Tabla tbl_Usuario ya existe' 
 GO 


 /*Creaci�n de la llave primaria*/
 IF EXISTS (
				SELECT 1
				FROM sys.objects
				WHERE name = 'tbl_Usuario'
				)
BEGIN 
	ALTER TABLE [dbo].[tbl_Usuario]
	ADD CONSTRAINT PK_tbl_Usuario_iIdUsuario
	PRIMARY KEY (iIdUsuario)
	PRINT 'Se agrego la llave primaria a tbl_Usuario'
END