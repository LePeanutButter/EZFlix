ALTER TABLE Peliculas ADD CONSTRAINT FK_Peliculas_distribuidor FOREIGN KEY (distribuidor) REFERENCES Distribuidores(nombre) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Series ADD CONSTRAINT FK_Series_distribuidor FOREIGN KEY (distribuidor) REFERENCES Distribuidores(nombre) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Temporadas ADD CONSTRAINT FK_Temporadas_idSerie FOREIGN KEY (idSerie) REFERENCES Series(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Episodios ADD CONSTRAINT FK_Episodios FOREIGN KEY (idSerie, numeroTemporada) REFERENCES Temporadas(idSerie, numeroTemporada) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Versiones ADD CONSTRAINT FK_Versiones_idPelicula FOREIGN KEY (idPelicula) REFERENCES Peliculas(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Versiones ADD CONSTRAINT FK_Versiones_idSeries FOREIGN KEY (idSerie) REFERENCES Series(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE ContenidoAdicional ADD CONSTRAINT FK_ContenidoAdicional_idPelicula FOREIGN KEY (idPelicula) REFERENCES Peliculas(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE ContenidoAdicional ADD CONSTRAINT FK_ContenidoAdicional_idSeries FOREIGN KEY (idSerie) REFERENCES Series(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE ActoresPeliculas ADD CONSTRAINT FK_ActoresPeliculas_idPelicula FOREIGN KEY (idPelicula) REFERENCES Peliculas(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE ActoresSeries ADD CONSTRAINT FK_ActoresSeries_idSeries FOREIGN KEY (idSeries) REFERENCES Series(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE Bibliotecas ADD CONSTRAINT FK_Bibliotecas FOREIGN KEY (idCuenta, nombrePerfil) REFERENCES Perfiles(idCuenta, nombre) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE BibliotecasPeliculas ADD CONSTRAINT FK_BibliotecasPeliculas_idBiblioteca FOREIGN KEY (idBiblioteca) REFERENCES Bibliotecas(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE BibliotecasPeliculas ADD CONSTRAINT FK_BibliotecasPeliculas_idPelicula FOREIGN KEY (idPelicula) REFERENCES Peliculas(id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE BibliotecasSeries ADD CONSTRAINT FK_BibliotecasSeries_idBiblioteca FOREIGN KEY (idBiblioteca) REFERENCES Bibliotecas(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE BibliotecasSeries ADD CONSTRAINT FK_BibliotecasSeries_idSerie FOREIGN KEY (idSerie) REFERENCES Series(id) ON DELETE RESTRICT ON UPDATE CASCADE;
ALTER TABLE Perfiles ADD CONSTRAINT FK_Perfiles_idCuenta FOREIGN KEY (idCuenta) REFERENCES Cuentas(id) ON DELETE CASCADE;
ALTER TABLE Compras ADD CONSTRAINT FK_Compras_idCuenta FOREIGN KEY (idCuenta) REFERENCES Cuentas(id) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE Compras ADD CONSTRAINT FK_Compras_idPelicula FOREIGN KEY (idPelicula) REFERENCES Peliculas(idPelicula) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE Compras ADD CONSTRAINT FK_Compras_idSerie FOREIGN KEY (idSerie) REFERENCES Series(idSerie) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE Rentas ADD CONSTRAINT FK_Rentas_idCuenta FOREIGN KEY (idCuenta) REFERENCES Cuentas(id) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE Rentas ADD CONSTRAINT FK_Rentas_idPelicula FOREIGN KEY (idPelicula) REFERENCES Peliculas(idPelicula) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE Rentas ADD CONSTRAINT FK_Rentas_idSerie FOREIGN KEY (idSerie) REFERENCES Series(idSerie) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE CodigosDeRegalo ADD CONSTRAINT FK_CodigosDeRegalo_idCuenta FOREIGN KEY (idCuenta) REFERENCES Cuentas(id) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE CodigosDeRegalo ADD CONSTRAINT FK_CodigosDeRegalo_idPelicula FOREIGN KEY (idPelicula) REFERENCES Peliculas(idPelicula) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE CodigosDeRegalo ADD CONSTRAINT FK_CodigosDeRegalo_idSerie FOREIGN KEY (idSerie) REFERENCES Series(idSerie) ON DELETE SET NULL ON UPDATE CASCADE;
ALTER TABLE MetodosDePago ADD CONSTRAINT FK_MetodosDePago_idCuenta FOREIGN KEY (idCuenta) REFERENCES Cuentas(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE GroupWatch ADD CONSTRAINT FK_GroupWatch FOREIGN KEY (perfil, perfilSincronizado) REFERENCES Perfiles(nombre, nombre) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE GroupWatchPeliculas ADD CONSTRAINT FK_GroupWatchPeliculas_idGroupWatch FOREIGN KEY (idGroupWatch) REFERENCES GroupWatch(idGroupWatch) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE GroupWatchPeliculas ADD CONSTRAINT FK_GroupWatchPeliculas_idPelicula FOREIGN KEY (idPeliculas) REFERENCES Peliculas(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE GroupWatchSeries ADD CONSTRAINT FK_GroupWatchSeries_idGroupWatch FOREIGN KEY (idGroupWatch) REFERENCES GroupWatch(idGroupWatch) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE GroupWatchSeries ADD CONSTRAINT FK_GroupWatchSeries_idSerie FOREIGN KEY (idSerie) REFERENCES Series(id) ON DELETE CASCADE ON UPDATE CASCADE;