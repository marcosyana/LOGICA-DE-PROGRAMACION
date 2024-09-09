--tODO: tablas de la base de datos


CREATE TABLE propietario (
	nif VARCHAR (20) NOT NULL PRIMARY KEY,
	nombre VARCHAR (100) NOT NULL,
	telefono VARCHAR (8) NOT NULL,
	direccion VARCHAR (150) NOT NULL,
	email VARCHAR (100) NOT NULL
);


CREATE TABLE vivienda (
	cod_vivienda SERIAL NOT NULL PRIMARY KEY,
	calle VARCHAR (100) NOT NULL,
    numero INT NOT NULL,
    piso INT NOT NULL,
    cp VARCHAR (10) NOT NULL,
    poblacion VARCHAR (100) NOT NULL,
    descripcion TEXT NOT NULL,
    nif_propietario VARCHAR (20),
    cod_agencia INT,

    CONSTRAINT fk_propietario FOREIGN KEY (nif_propietario) REFERENCES propietario(nif),
    CONSTRAINT fk_agencia FOREIGN KEY (cod_agencia) REFERENCES agencia (cod_agencia)
);


CREATE TABLE inquilino (
    nif VARCHAR (20) NOT NULL PRIMARY KEY,
    nombre_apellido VARCHAR (100),
    fecha_nacimiento DATE NOT NULL,
    descripcion TEXT NOT NULL,
    telefono VARCHAR (8) NOT NULL,
    preferencias VARCHAR (255)
);

CREATE TABLE alquiler (
    cod_alquiler SERIAL NOT NULL PRIMARY KEY,
    fecha_firma DATE NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL,
    importe_mensual NUMERIC (10,2) NOT NULL,
    fianza NUMERIC (10,2)NOT NULL,
    cod_vivienda INT NOT NULL,
    nif_inquilino VARCHAR (20) NOT NULL,
    renovacion BOOLEAN DEFAULT FALSE,

    CONSTRAINT fk_vivienda FOREIGN KEY (cod_vivienda) REFERENCES vivienda (cod_vivienda),
    CONSTRAINT fk_inquilino FOREIGN KEY (nif_inquilino) REFERENCES inquilino (nif)
);

-- nueva tabla agregada en el diseño 
CREATE TABLE renovacion (
    cod_renovacion SERIAL NOT NULL PRIMARY KEY,
    cod_alquiler INT NOT NULL,
    fecha_renovacion DATE NOT NULL,
    CONSTRAINT fk_alquiler FOREIGN KEY (cod_alquiler) REFERENCES alquiler (cod_alquiler)
);


CREATE TABLE agencia (
    cod_agencia SERIAL NOT NULL PRIMARY KEY,
    cif VARCHAR (20) NOT NULL,
    direccion VARCHAR (150) NOT NULL,
    nom_agencia VARCHAR (100)
);



--Insertamos Datos en Propietario
INSERT INTO propietario (NIF, Nombre, telefono, direccion, email)
    VALUES ('12345678A', 'Alison Nayeli', '78552415', 'pampahasi, La Paz', 'alison@mail.com');
--Consultas de Propietario  
SELECT * FROM propietario;


--Insertamos Datos en Agencia
INSERT INTO agencia (CIF, Direccion, nom_agencia)
    VALUES ('B12345678', 'Calle las Lomas, Bolivia', 'Agencia Paulsen');
--Consultas de Agencia
SELECT * FROM agencia;


--Insertamos Datos en Vivienda
INSERT INTO vivienda (calle, numero, piso, cp, poblacion, descripcion, nif_propietario, cod_agencia)
VALUES ('Calle Sol', 20, 3, '28001', 'Madrid', 'Piso luminoso en el centro', '12345678A', 1);
--Consultas de Vivienda
SELECT * FROM vivienda;


--Insertamos Datos en Alquiler
INSERT INTO alquiler (fecha_firma, fecha_inicio, fecha_fin, importe_mensual, fianza, cod_vivienda, nif_inquilino, renovacion)
VALUES ('2024-01-01', '2024-02-01', '2025-02-01', 800, 1600, 1, '87654321B', FALSE);
--Consultas de Alquiler
SELECT * FROM alquiler;


--Insertamos Datos en Renovacion
INSERT INTO renovacion (codigo_alquiler, fecha_renovacion)
VALUES (1, '2025-02-02');
--Consultas de Renovacion
SELECT * FROM renovacion;
