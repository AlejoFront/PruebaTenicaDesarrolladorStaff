CREATE TABLE tipo_mascota (
	idtipo_mascota int NOT NULL,
    descripcion VARCHAR(45) NOT NULL,
    PRIMARY KEY (idtipo_mascota)
);

CREATE TABLE propietario (
	idpropietario int NOT NULL,
    nombre VARCHAR(45) NOT NULL,
    direccion VARCHAR(45) NOT NULL,
    telefono VARCHAR(10) NOT NULL,
    correo VARCHAR(60) NOT NULL,
    comentarios TEXT NOT NULL,
    PRIMARY KEY (idpropietario)
);

CREATE TABLE mascota (
	idmascota int NOT NULL,
	nombre VARCHAR(45) NOT NULL,
    tipo_mascota int NOT NULL,
    propietario int NULL,
    PRIMARY KEY (idmascota),
    FOREIGN KEY (tipo_mascota) REFERENCES tipo_mascota(idtipo_mascota),
    FOREIGN KEY (propietario) REFERENCES propietario(idpropietario)
);


INSERT INTO `tipo_mascota` (`idtipo_mascota`, `descripcion`) VALUES
(1, 'mascota tipo 1'),
(2, 'mascota tipo 2'),
(3, 'mascota tipo 3'),
(4, 'mascota tipo 4');


INSERT INTO `propietario` (`idpropietario`, `nombre`, `direccion`, `telefono`, `correo`, `comentarios`) VALUES
(11, 'alex', 'barrio 01', '3333', 'alex@gmail.com', 'comentario 0101'),
(22, 'carmen', 'barrio03', '55555', 'carmen@fffa.com', 'comentario 0202');


INSERT INTO `mascota` (`idmascota`, `nombre`, `tipo_mascota`, `propietario`) VALUES
(1, 'Tacita', 1, 22),
(2, 'Roky', 1, 11),
(3, 'Tomy', 2, 11),
(4, 'sacha', 1, 22),
(5, 'mara', 2, NULL),
(6, 'capi', 1, NULL);

/*
  ● listar todas las mascotas  
*/
SELECT * FROM mascota


/*
  ● Listar las mascotas que no han sido adoptadas.  
*/
SELECT * FROM mascota WHERE propietario IS NULL



/*
  ● Listar el número de mascotas por cada tipo de mascota.
*/
SELECT COUNT(tipo_mascota) AS CantMascotas, 
	tipo_mascota.descripcion AS TipoMascota FROM mascota, tipo_mascota
	WHERE mascota.tipo_mascota = tipo_mascota.idtipo_mascota
	GROUP BY tipo_mascota



/*
  ● Listar los propietarios que tengan más de una mascota. 
*/
SELECT propietario.nombre AS 'Propietario', propietario.direccion, propietario.telefono, propietario.correo,
COUNT(propietario.nombre) AS 'N° Mascotas'
FROM propietario, mascota
WHERE propietario.idpropietario = mascota.propietario
GROUP BY propietario HAVING COUNT(propietario.nombre) > 1




/*
  ●  Listar el número de mascotas por cada tipo de mascota y por cada propietario.
*/
SELECT
propietario.nombre AS 'nombre Propietario',
tipo_mascota.idtipo_mascota AS 'Id Tipo Mascota',
COUNT(*) AS 'N° Mascotas X tipo mascota'
FROM mascota, tipo_mascota,propietario
WHERE mascota.tipo_mascota = tipo_mascota.idtipo_mascota
AND mascota.propietario = propietario.idpropietario
GROUP BY propietario.nombre, mascota.tipo_mascota


/*
    ● Listas los propietarios que no tienen mascotas.
*/
SELECT
propietario.nombre
FROM propietario
WHERE NOT EXISTS (SELECT null FROM mascota WHERE mascota.propietario = propietario.idpropietario)