ALTER TABLE Versiones ADD CONSTRAINT CK_Versiones_idPelicula_idSerie CHECK ((idPelicula IS NOT NULL)::INTEGER + (idSerie IS NOT NULL)::INTEGER = 1);
ALTER TABLE Compras ADD CONSTRAINT CK_Compras_idPelicula_idSerie CHECK ((idPelicula IS NOT NULL)::INTEGER + (idSerie IS NOT NULL)::INTEGER = 1);
ALTER TABLE Rentas ADD CONSTRAINT CK_Rentas_idPelicula_idSerie CHECK ((idPelicula IS NOT NULL)::INTEGER + (idSerie IS NOT NULL)::INTEGER = 1);
ALTER TABLE ContenidoAdicional ADD CONSTRAINT CK_ContenidoAdicional_idPelicula_idSerie CHECK ((idPelicula IS NOT NULL)::INTEGER + (idSerie IS NOT NULL)::INTEGER = 1);
