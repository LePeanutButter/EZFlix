--CRUDE
CREATE OR REPLACE PACKAGE PC_Cuentas AS
    PROCEDURE Adicionar(
        nombre IN VARCHAR2,
        correo IN VARCHAR2,
        contrasena IN VARCHAR2,
        telefono IN NUMBER
        );
    PROCEDURE Modificar(
        nombre IN VARCHAR2,
        correo IN VARCHAR2,
        contrasena IN VARCHAR2,
        telefono IN NUMBER
        );
    PROCEDURE Eliminar(
        nombre IN VARCHAR2,
        correo IN VARCHAR2,
        contrasena IN VARCHAR2
        );
    PROCEDURE consultar(
        nombre IN VARCHAR2,
        correo IN VARCHAR2,
        resultado OUT SYS_REFCURSOR
        );
END PC_Cuentas;
/
--CRUDI
 CREATE OR REPLACE PACKAGE BODY PC_Cuentas AS
    PROCEDURE Adicionar(
        nombre IN VARCHAR2,
        correo IN VARCHAR2,
        contrasena IN VARCHAR2,
        telefono IN NUMBER
    ) IS
    BEGIN
        INSERT INTO cuentas (nombre, correo, contrasena, telefono) 
        VALUES (nombre, correo, contrasena, telefono);
    END Adicionar;
    
    PROCEDURE Modificar(
        nombre IN VARCHAR2,
        correo IN VARCHAR2,
        contrasena IN VARCHAR2,
        telefono IN NUMBER
    ) IS
    BEGIN 
        UPDATE cuentas 
        SET nombre = nombre,
            correo = correo,
            contrasena = contrasena,
            telefono = telefono
        WHERE id = id;
    END Modificar;
    
    PROCEDURE Eliminar(
        nombre IN VARCHAR2,
        correo IN VARCHAR2,
        contrasena IN VARCHAR2
    ) IS
    BEGIN
        DELETE FROM cuentas WHERE nombre = nombre AND correo = correo AND contrasena = contrasena;
    END Eliminar;
    
    PROCEDURE Consultar(
        nombre IN VARCHAR2,
        correo IN VARCHAR2,
        resultado OUT SYS_REFCURSOR
    ) IS 
    BEGIN 
        OPEN resultado FOR
        SELECT * FROM cuentas
        WHERE nombre = nombre AND correo = correo;
    END consultar;
END PC_Cuentas;
/
        
