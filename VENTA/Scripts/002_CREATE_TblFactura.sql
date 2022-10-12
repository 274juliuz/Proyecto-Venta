SET NOCOUNT ON 
/***************************************************************************************** 
* COMA																					 *
* Sistema: Venta																		 *
* Tabla: tbl_Factura																	 *
*																					  	 *
* -------------------------------------------------------------------------------------- * 
*																						 * 
* Version   Fecha        Usuario             Descripcion							    *		
* -------   ----------   ------------------ -------------------------------------------- * 
*  1.0      11/10/2022   Ismael Gonzalez   	  Creacion del script					     *
******************************************************************************************/
 IF NOT EXISTS(SELECT 1 FROM sys.objects WHERE name = 'tbl_Factura') 
 BEGIN
	 CREATE TABLE dbo.tbl_Factura
		(	
		iIdFactura INT NOT NULL IDENTITY (1,1),
		iIdUsuario INT NOT NULL, 
		cFolio VARCHAR (20) NOT NULL,
		dSaldo DECIMAL (7,2) NOT NULL,
		dtFechaFacturacion DATETIME NULL,
		dtFechaCreacion DATETIME DEFAULT (GETDATE()) NULL
		)  

 EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador de la factura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_Factura', @level2type=N'COLUMN',@level2name=N'iIdFactura' 
 EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identificador del usuario' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_Factura', @level2type=N'COLUMN',@level2name=N'iIdUsuario'
 EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Folio de la factura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_Factura', @level2type=N'COLUMN',@level2name=N'cFolio' 
 EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Saldo de la factura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_Factura', @level2type=N'COLUMN',@level2name=N'dSaldo'
 EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de facturacion' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_Factura', @level2type=N'COLUMN',@level2name=N'dtFechaFacturacion' 
 EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Fecha de creacion de la factura' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'tbl_Factura', @level2type=N'COLUMN',@level2name=N'dtFechaCreacion'
  
 PRINT 'Tabla tbl_Factura creada' 
 END
 ELSE  
	PRINT 'La Tabla tbl_Factura ya existe' 
 GO 


 /*Creaci�n de la llave primaria*/
 IF EXISTS (
				SELECT 1
				FROM sys.objects
				WHERE name = 'tbl_Factura'
				)
BEGIN 
	ALTER TABLE [dbo].[tbl_Factura]
	ADD CONSTRAINT PK_tbl_Factura_iIdFactura
	PRIMARY KEY (iIdFactura)
	PRINT 'Se agrego la llave primaria a tbl_Factura'
END