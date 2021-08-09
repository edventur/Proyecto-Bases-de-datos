INSERT INTO  proyectofinalbd1.catalogo_genero (idCatalogo_Genero, Descripcion_Genero)
VALUES ('1', 'Hombre' ), ('2', 'Mujer' ), ('3', 'Indefinido' );

INSERT INTO  proyectofinalbd1.persona (Cedula, Nombre, Apellido1, Apellido2, Fecha_Nacimiento, Catalogo_Genero_idCatalogo_Genero)
VALUES ('111111111', 'Jose', 'Solis', 'Rodriguez', '1980-12-17', '1' ),
('111111112', 'Maria', 'Perez', 'Garcia', '1999-03-20', '2' ),
('111111113', 'Sebastian', 'Ramirez', 'Hernandez', '2002-01-02', '3' ),
('111111114', 'Franciny', 'Villalobos', 'Aguilar', '1986-01-06', '2' ),
('111111115', 'Brayner', 'Vargas', 'Soto', '1985-06-22', '1' ),
('111111116', 'Eduardo', 'Ventura', 'Carranza', '1997-03-16', '1' );

INSERT INTO  proyectofinalbd1.telefono (Numero_Telefono, Persona_Cedula, Activo)
VALUES ('22909595', '111111111', 1 ), ('83224850', '111111112', 1 ), ('44508896', '111111113', 0 );

INSERT INTO  proyectofinalbd1.correo (Correo, Persona_Cedula, Activo)
VALUES ('josesolis@gmail.com', '111111111', 1 ), ('mariaperez@hotmail.com', '111111112', 1 ), ('sebasramirez@gmail.com', '111111113', 1 );

INSERT INTO  proyectofinalbd1.rol (idRol, DescripcionRol)
VALUES ('1', 'Administrador' ), ('2', 'Empleado' ), ('3', 'Cliente' );

INSERT INTO  proyectofinalbd1.permisos (idPermisos, Descripcion_Permiso)
VALUES ('1', 'Full control' ), ('2', 'Modificar, Consultar'), ('3', 'Consultar' );

INSERT INTO  proyectofinalbd1.rol_permiso (idRol_Permiso, Rol_idRol, Permisos_idPermisos)
VALUES ('1', '1', '1' ), ('2', '2', '2'), ('3', '3', '3');

INSERT INTO  proyectofinalbd1.cliente (idCliente, Persona_Cedula, Rol_idRol)
VALUES ('2240', '111111111', '3' ), ('2241', '111111112', '3'), ('2242', '111111113', '3');

INSERT INTO  proyectofinalbd1.empleado (idEmpleado, Persona_Cedula, Rol_idRol)
VALUES ('2250', '111111114', '1' ), ('2251', '111111115', '1'), ('2252', '111111116', '1');

INSERT INTO  proyectofinalbd1.etiqueta_contacto (idEtiqueta_contacto, Nombre_etiqueta)
VALUES ('1', 'Amigo'), ('2', 'Compañero de trabajo'), ('3', 'Familiar');

INSERT INTO  proyectofinalbd1.contacto (idContacto, Cliente_idCliente, Fecha_Creacion, Estado, Persona_Cedula, Etiqueta_Contacto_idEtiqueta_contacto )
VALUES ('1', '2240', '2020-01-03', 'Disponible', '111111111', '1'),
('2', '2241', '2021-02-05', 'Ocupado', '111111112', '2'), 
('3', '2242', '2020-05-20', 'Disponible', '111111113', '3');

INSERT INTO  proyectofinalbd1.grupo_usuario (idGrupo_Usuario,Cliente_idCliente)
VALUES ('1', '2240'), ('2', '2241'), ('3', '2242');



-----------
Select *
FROM proyectofinalbd1.etiqueta_contacto;

Select *
FROM proyectofinalbd1.contacto;

Select *
From proyectofinalbd1.catalogo_genero;

Select *
From proyectofinalbd1.persona;

Select *
From proyectofinalbd1.correo;

Select * from proyectofinalbd1.rol_permiso;

Select * from proyectofinalbd1.grupo_usuario