
SET NOCOUNT ON 
/***************************************************************************************** 
* COMA																					 *
* Sistema: Venta																		 *
* Tabla: tblcat_tipousuario																 *
*																					  	 *
* -------------------------------------------------------------------------------------- * 
*																						 * 
* Version   Fecha        Usuario             Descripcion							    *		
* -------   ----------   ------------------ -------------------------------------------- * 
*  1.0      11/10/2022   Ismael Gonzalez   	  Creacion del script					     *
******************************************************************************************/
 IF NOT EXISTS(SELECT 1 FROM sys.objects WHERE name = 'tblCat_TipoUsuario') 
 BEGIN
 CREATE TABLE [dbo].[tblCat_TipoUsuario]
 (	
	iIdTipoUsuario INT NOT NULL IDENTITY (1,1),  
	cTipoUsuario VARCHAR(20) NOT NULL
 )  
 
 PRINT 'Tabla tblCat_TipoUsuario creada' 
 END
 ELSE  
	PRINT 'La Tabla tblCat_TipoUsuario ya existe' 
 GO 


 /*Creacion de la llave primaria*/
 IF EXISTS (SELECT 1 FROM sys.objects WHERE name = 'tblCat_TipoUsuario')
BEGIN 
	ALTER TABLE [dbo].[tblCat_TipoUsuario]
	ADD CONSTRAINT PK_tblCat_TipoUsuario_iIdTipoUsuario
	PRIMARY KEY (iIdTipoUsuario)
	PRINT 'Se agrego la llave primaria a tblCat_TipoUsuario'
END
