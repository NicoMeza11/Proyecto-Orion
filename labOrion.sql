DROP DATABASE IF EXISTS orionDatabase;
CREATE DATABASE orionDatabase;
USE orionDatabase;

CREATE TABLE IF NOT EXISTS Organizacion (
    id_organizacion INT AUTO_INCREMENT PRIMARY KEY,
    nombre_org VARCHAR(20) NOT NULL,
    pais VARCHAR(20) NOT NULL,
    correo VARCHAR(30) NOT NULL,
    tipo VARCHAR(20) NOT NULL,
    sitio_web VARCHAR(30) NOT NULL
);

CREATE TABLE IF NOT EXISTS Cluster (
    codigo_cluster INT AUTO_INCREMENT PRIMARY KEY,
    nombre_descripcion VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS Servidor (
    codigo_servidor INT AUTO_INCREMENT PRIMARY KEY,
    codigo_cluster INT NOT NULL,
    estado_operativo VARCHAR(20) NOT NULL,
    capacidad_almacenamiento INT NOT NULL,
    memoria_disponible INT NOT NULL,

    CONSTRAINT fk_servidor_cluster
    FOREIGN KEY (codigo_cluster)
    REFERENCES Cluster(codigo_cluster)
);

CREATE TABLE IF NOT EXISTS Recurso_Computacional (
    id_recurso_computacional INT AUTO_INCREMENT PRIMARY KEY,
    codigo_servidor INT NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    capacidad INT NOT NULL,
    memoria INT NOT NULL,
    estado VARCHAR(20) NOT NULL, -- disponible, asignado, en mantenimiento

    CONSTRAINT fk_codigoServidor_RecursoComputacional
    FOREIGN KEY (codigo_servidor)
    REFERENCES Servidor(codigo_servidor)
);

CREATE TABLE IF NOT EXISTS Instrumento (
    id_instrumento INT AUTO_INCREMENT PRIMARY KEY,
    id_organizacion INT NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    estado VARCHAR(20) NOT NULL, -- activo, en mantenimiento, retirado
    longitud_max DECIMAL(10,4) NOT NULL,
    longitud_min DECIMAL(10,4) NOT NULL,

    CONSTRAINT fk_id_organizacion
    FOREIGN KEY (id_organizacion)
    REFERENCES Organizacion(id_organizacion)
);

CREATE TABLE IF NOT EXISTS Observacion (
    codigo_observacion INT AUTO_INCREMENT PRIMARY KEY,
    id_instrumento INT NOT NULL,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    duracion_segundos BIGINT NOT NULL,
    latitud DECIMAL(8,6) NOT NULL,
    longitud DECIMAL(9,6) NOT NULL,
    calidad VARCHAR(50) NOT NULL,
    longitud_onda DECIMAL(10,4) NOT NULL,
    tamano_byte BIGINT NOT NULL,

    CONSTRAINT fk_instrumento_observacion
    FOREIGN KEY (id_instrumento)
    REFERENCES Instrumento(id_instrumento)
);

CREATE TABLE IF NOT EXISTS Dataset (
    id_dataset INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    tamano INT NOT NULL,
    fecha_creacion DATE NOT NULL,
    cantidad_datos INT NOT NULL,
    formato_registro VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Compone (
    id_dataset INT NOT NULL,
    codigo_observacion INT NOT NULL,

    PRIMARY KEY (id_dataset, codigo_observacion),

    CONSTRAINT fk_id_dataset_compone
    FOREIGN KEY (id_dataset)
    REFERENCES Dataset(id_dataset),

    CONSTRAINT fk_codigo_observacion_compone
    FOREIGN KEY (codigo_observacion)
    REFERENCES Observacion(codigo_observacion)
);

CREATE TABLE IF NOT EXISTS Version_dataset (
    numero_version INT NOT NULL,
    id_dataset INT NOT NULL,
    desc_actualizaciones VARCHAR(255) NOT NULL,

    PRIMARY KEY (numero_version, id_dataset),

    CONSTRAINT fk_version_id_dataset
    FOREIGN KEY (id_dataset)
    REFERENCES Dataset(id_dataset)
);

CREATE TABLE IF NOT EXISTS Equipo (
    codigo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL,
    area_cientifica VARCHAR(20) NOT NULL,
    fecha_creacion DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS Investigador (
    id_investigador INT AUTO_INCREMENT PRIMARY KEY,
    codigo INT NOT NULL, -- equipo al que pertenece
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    nacimiento DATE NOT NULL,
    calle VARCHAR(100) NOT NULL,
    n_calle INT NOT NULL,
    ciudad VARCHAR(50) NOT NULL,
    telefono VARCHAR(20) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    grado_academico VARCHAR(50) NOT NULL,
    especialidad VARCHAR(50) NOT NULL,

    CONSTRAINT fk_codigo_equipo
    FOREIGN KEY (codigo)
    REFERENCES Equipo(codigo)
);

CREATE TABLE IF NOT EXISTS Senior (
    id_investigador INT PRIMARY KEY,
    codigo_equipo_liderado INT UNIQUE, -- equipo que lidera (1 lider por equipo)
    h_index INT NOT NULL,
    numero_publicaciones INT NOT NULL,
    anos_experiencia INT NOT NULL,

    CONSTRAINT fk_id_investigador_senior
    FOREIGN KEY (id_investigador)
    REFERENCES Investigador(id_investigador),

    CONSTRAINT fk_equipo_lider
    FOREIGN KEY (codigo_equipo_liderado)
    REFERENCES Equipo(codigo)
);

CREATE TABLE IF NOT EXISTS Junior (
    id_investigador INT PRIMARY KEY,

    CONSTRAINT fk_id_investigador_junior
    FOREIGN KEY (id_investigador)
    REFERENCES Investigador(id_investigador)
);

CREATE TABLE IF NOT EXISTS Modelo_IA (
    id_modelo INT AUTO_INCREMENT PRIMARY KEY,
    fecha_creacion DATE NOT NULL,
    arquitectura VARCHAR(30) NOT NULL,
    descripcion VARCHAR(100) NOT NULL,
    tarea_objetivo VARCHAR(20) NOT NULL,
    mejor_accuracy DECIMAL(5,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS Investigacion (
    codigo_investigacion INT AUTO_INCREMENT PRIMARY KEY,
    codigo INT NOT NULL, -- equipo a cargo
    numero_version INT NOT NULL,
    id_dataset INT NOT NULL,
    titulo VARCHAR(120) NOT NULL,
    objetivo_principal VARCHAR(150) NOT NULL,
    estado VARCHAR(20) NOT NULL, -- continua, finalizada, suspendida
    fecha_inicio DATE NOT NULL,

    CONSTRAINT fk_codigo_equipo_investigacion
    FOREIGN KEY (codigo)
    REFERENCES Equipo(codigo),

    CONSTRAINT fk_investigacion_version_dataset
    FOREIGN KEY (numero_version, id_dataset)
    REFERENCES Version_dataset(numero_version, id_dataset)
);

CREATE TABLE IF NOT EXISTS Experimento (
    id_experimento INT AUTO_INCREMENT PRIMARY KEY,
    codigo_investigacion INT NOT NULL,
    id_modelo INT NOT NULL,
    id_investigador INT NOT NULL, -- responsable
    desempeno_accuracy DECIMAL(5,2),
    estado VARCHAR(20) NOT NULL, -- pendiente, en ejecucion, completado, fallido
    fecha_hora_inicio DATETIME,
    fecha_hora_fin DATETIME,

    CONSTRAINT fk_modelo_experimento
    FOREIGN KEY (id_modelo)
    REFERENCES Modelo_IA(id_modelo),

    CONSTRAINT fk_investigador_experimento
    FOREIGN KEY (id_investigador)
    REFERENCES Investigador(id_investigador),

    CONSTRAINT fk_investigacion_experimento
    FOREIGN KEY (codigo_investigacion)
    REFERENCES Investigacion(codigo_investigacion)
);

CREATE TABLE IF NOT EXISTS Convenio (
    id_convenio INT AUTO_INCREMENT PRIMARY KEY,
    id_organizacion INT NOT NULL,
    id_investigador INT NOT NULL, -- senior responsable
    id_dataset INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE,
    nivel_acceso VARCHAR(20) NOT NULL, -- lectura, lectura y escritura, acceso completo
    clausulas_legales VARCHAR(200) NOT NULL,

    CONSTRAINT fk_organizacion_convenio
    FOREIGN KEY (id_organizacion)
    REFERENCES Organizacion(id_organizacion),

    CONSTRAINT fk_investigador_convenio
    FOREIGN KEY (id_investigador)
    REFERENCES Senior(id_investigador),

    CONSTRAINT fk_dataset_convenio
    FOREIGN KEY (id_dataset)
    REFERENCES Dataset(id_dataset)
);

CREATE TABLE IF NOT EXISTS Hiperparametros (
    id_experimento INT NOT NULL,
    nombre_hiperparametro VARCHAR(30) NOT NULL,
    valor VARCHAR(30) NOT NULL,

    PRIMARY KEY (id_experimento, nombre_hiperparametro),

    CONSTRAINT fk_experimento_hiperparametros
    FOREIGN KEY (id_experimento)
    REFERENCES Experimento(id_experimento)
);

CREATE TABLE IF NOT EXISTS Utiliza (
    id_recurso_computacional INT NOT NULL,
    id_experimento INT NOT NULL,
    fecha_asignacion DATE NOT NULL,
    fecha_liberacion DATE,

    PRIMARY KEY (id_recurso_computacional, id_experimento, fecha_asignacion),

    CONSTRAINT fk_id_recurso
    FOREIGN KEY (id_recurso_computacional)
    REFERENCES Recurso_Computacional(id_recurso_computacional),

    CONSTRAINT fk_id_experimento_utiliza
    FOREIGN KEY (id_experimento)
    REFERENCES Experimento(id_experimento)
);