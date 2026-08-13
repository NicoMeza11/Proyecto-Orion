USE orionDatabase;

-- ---------------------------------------------------------------------
-- 1. Organizacion (15)
-- ---------------------------------------------------------------------
INSERT INTO Organizacion (id_organizacion, nombre_org, pais, correo, tipo, sitio_web) VALUES
(1,  'NASA',             'Estados Unidos', 'contact@nasa.gov',       'agencia espacial', 'nasa.gov'),
(2,  'ESA',               'Francia',        'info@esa.int',           'agencia espacial', 'esa.int'),
(3,  'U. de Chile',       'Chile',          'contacto@uchile.cl',     'universidad',      'uchile.cl'),
(4,  'MIT',               'Estados Unidos', 'info@mit.edu',           'universidad',      'mit.edu'),
(5,  'JAXA',              'Japon',          'info@jaxa.jp',           'agencia espacial', 'jaxa.jp'),
(6,  'ESO',               'Chile',          'info@eso.org',           'instituto',        'eso.org'),
(7,  'SpaceX',            'Estados Unidos', 'data@spacex.com',        'empresa',          'spacex.com'),
(8,  'Roscosmos',         'Rusia',          'info@roscosmos.ru',      'agencia espacial', 'roscosmos.ru'),
(9,  'CSIRO',             'Australia',      'info@csiro.au',          'instituto',        'csiro.au'),
(10, 'Caltech',           'Estados Unidos', 'info@caltech.edu',       'universidad',      'caltech.edu'),
(11, 'CNES',              'Francia',        'contact@cnes.fr',        'agencia espacial', 'cnes.fr'),
(12, 'ISRO',              'India',          'info@isro.gov.in',       'agencia espacial', 'isro.gov.in'),
(13, 'ALMA',              'Chile',          'info@alma.cl',           'instituto',        'alma.cl'),
(14, 'Northrop Grumman',  'Estados Unidos', 'info@northrop.com',      'empresa',          'northropgrumman.com'),
(15, 'U. Catolica',       'Chile',          'contacto@uc.cl',         'universidad',      'uc.cl');

-- ---------------------------------------------------------------------
-- 2. Cluster (15)
-- ---------------------------------------------------------------------
INSERT INTO Cluster (codigo_cluster, nombre_descripcion) VALUES
(1,  'Cluster Atacama-1'),
(2,  'Cluster Atacama-2'),
(3,  'Cluster Andes-1'),
(4,  'Cluster Andes-2'),
(5,  'Cluster Patagonia-1'),
(6,  'Cluster Norte-1'),
(7,  'Cluster Norte-2'),
(8,  'Cluster Sur-1'),
(9,  'Cluster Central-1'),
(10, 'Cluster Central-2'),
(11, 'Cluster Cloud-1'),
(12, 'Cluster Cloud-2'),
(13, 'Cluster GPU-Farm1'),
(14, 'Cluster GPU-Farm2'),
(15, 'Cluster Backup-1');

-- ---------------------------------------------------------------------
-- 3. Servidor (15) 
-- ---------------------------------------------------------------------
INSERT INTO Servidor (codigo_servidor, codigo_cluster, estado_operativo, capacidad_almacenamiento, memoria_disponible) VALUES
(1,  1,  'activo',            20000, 512),
(2,  2,  'activo',            18000, 256),
(3,  3,  'en mantenimiento',  25000, 512),
(4,  4,  'activo',            30000, 1024),
(5,  5,  'activo',            22000, 512),
(6,  6,  'inactivo',          15000, 256),
(7,  7,  'activo',            27000, 512),
(8,  8,  'activo',            19000, 256),
(9,  9,  'en mantenimiento',  24000, 512),
(10, 10, 'activo',            21000, 512),
(11, 11, 'activo',            35000, 1024),
(12, 12, 'activo',            32000, 1024),
(13, 13, 'activo',            40000, 2048),
(14, 14, 'activo',            38000, 2048),
(15, 15, 'en mantenimiento',  16000, 256);

-- ---------------------------------------------------------------------
-- 4. Recurso_Computacional (15) 
-- ---------------------------------------------------------------------
INSERT INTO Recurso_Computacional (id_recurso_computacional, codigo_servidor, tipo, capacidad, memoria, estado) VALUES
(1,  1,  'GPU', 100, 40,  'disponible'),
(2,  2,  'CPU', 64,  128, 'disponible'),
(3,  3,  'TPU', 90,  32,  'en mantenimiento'),
(4,  4,  'GPU', 100, 80,  'asignado'),
(5,  5,  'GPU', 100, 40,  'disponible'),
(6,  6,  'CPU', 32,  64,  'disponible'),
(7,  7,  'TPU', 95,  32,  'asignado'),
(8,  8,  'GPU', 100, 40,  'disponible'),
(9,  9,  'CPU', 64,  128, 'en mantenimiento'),
(10, 10, 'GPU', 100, 80,  'disponible'),
(11, 11, 'TPU', 95,  64,  'asignado'),
(12, 12, 'GPU', 100, 40,  'disponible'),
(13, 13, 'GPU', 120, 80,  'asignado'),
(14, 14, 'TPU', 100, 64,  'disponible'),
(15, 15, 'CPU', 32,  64,  'en mantenimiento');

-- ---------------------------------------------------------------------
-- 5. Instrumento (15) 
-- ---------------------------------------------------------------------
INSERT INTO Instrumento (id_instrumento, id_organizacion, tipo, estado, longitud_max, longitud_min) VALUES
(1,  1,  'telescopio espacial',  'activo',           2500.0000,  400.0000),
(2,  2,  'satelite',             'activo',           1000.0000,  100.0000),
(3,  3,  'telescopio optico',    'activo',            750.0000,  380.0000),
(4,  4,  'radiotelescopio',      'en mantenimiento', 30000.0000, 1000.0000),
(5,  5,  'satelite',             'activo',            900.0000,  200.0000),
(6,  6,  'interferometro',       'activo',           30000.0000, 500.0000),
(7,  7,  'satelite',             'retirado',          800.0000,  300.0000),
(8,  8,  'telescopio optico',    'activo',            700.0000,  400.0000),
(9,  9,  'radiotelescopio',      'activo',           50000.0000, 2000.0000),
(10, 10, 'telescopio optico',    'en mantenimiento',  760.0000,  390.0000),
(11, 11, 'satelite',             'activo',           1200.0000,  150.0000),
(12, 12, 'satelite',             'activo',            950.0000,  180.0000),
(13, 13, 'interferometro',       'activo',           40000.0000, 1500.0000),
(14, 14, 'satelite',             'retirado',          850.0000,  250.0000),
(15, 15, 'telescopio optico',    'activo',            720.0000,  400.0000);

-- ---------------------------------------------------------------------
-- 6. Observacion (15) 
-- ---------------------------------------------------------------------
INSERT INTO Observacion (codigo_observacion, id_instrumento, fecha, hora, duracion_segundos, latitud, longitud, calidad, longitud_onda, tamano_byte) VALUES
(1,  1,  '2025-01-10', '02:30:00', 3600,  -23.029300, -67.754900, 'alta',  550.5000, 8500000000),
(2,  2,  '2025-01-15', '10:00:00', 1800,   28.573200, -80.646900, 'media', 650.2500, 4200000000),
(3,  3,  '2025-02-01', '23:45:00', 2400,  -30.169800, -70.806500, 'alta',  480.0000, 6100000000),
(4,  4,  '2025-02-10', '05:20:00', 7200,  -22.966000, -67.753500, 'baja',  5000.0000, 15200000000),
(5,  5,  '2025-02-20', '14:10:00', 1200,   35.402100, 139.706100, 'media', 320.7500, 2100000000),
(6,  6,  '2025-03-05', '01:15:00', 5400,  -23.024300, -67.755800, 'alta',  620.4000, 9800000000),
(7,  7,  '2024-11-20', '09:00:00', 900,    28.487000, -80.577000, 'media', 410.3000, 1500000000),
(8,  8,  '2025-03-15', '22:00:00', 3000,  -29.256700, -70.738300, 'alta',  500.0000, 7300000000),
(9,  9,  '2025-03-20', '03:30:00', 6000,  -33.135800, 148.264400, 'baja',  8500.0000, 20500000000),
(10, 10, '2025-04-01', '20:45:00', 2100,  -30.240600, -70.736900, 'media', 440.6000, 5400000000),
(11, 11, '2025-04-10', '11:30:00', 1500,   45.500000,   -1.000000,'alta',  700.1000, 3200000000),
(12, 12, '2025-04-18', '16:00:00', 1800,   19.076100,   72.877700,'media', 380.9000, 4100000000),
(13, 13, '2025-05-02', '00:50:00', 4800,  -23.019700, -67.759000, 'alta',  1200.0000, 11200000000),
(14, 14, '2024-12-12', '06:15:00', 1000,   40.712800,  -74.006000, 'baja',  350.2000, 1800000000),
(15, 15, '2025-05-20', '21:40:00', 2600,  -33.456900,  -70.648500, 'alta', 470.5000, 6600000000);

-- ---------------------------------------------------------------------
-- 7. Dataset (15)
-- ---------------------------------------------------------------------
INSERT INTO Dataset (id_dataset, nombre, tamano, fecha_creacion, cantidad_datos, formato_registro) VALUES
(1,  'Exoplanetas Kepler',        8500,  '2025-01-12', 120000, 'FITS'),
(2,  'Galaxias SDSS',             4200,  '2025-01-18', 80000,  'CSV'),
(3,  'Manchas Solares',           6100,  '2025-02-03', 45000,  'HDF5'),
(4,  'Radio Pulsares Andes',      15200, '2025-02-12', 30000,  'FITS'),
(5,  'Asteroides NEO',            2100,  '2025-02-22', 15000,  'CSV'),
(6,  'Interferometria ALMA',      9800,  '2025-03-06', 62000,  'FITS'),
(7,  'Cometas 2024',              1500,  '2024-11-22', 8000,   'JSON'),
(8,  'Estrellas Enanas',          7300,  '2025-03-16', 54000,  'HDF5'),
(9,  'Ondas de Radio Profundo',   20500, '2025-03-22', 98000,  'FITS'),
(10, 'Nebulosas Planetarias',     5400,  '2025-04-02', 32000,  'CSV'),
(11, 'Espectros Estelares',       3200,  '2025-04-11', 21000,  'HDF5'),
(12, 'Sistemas Binarios',         4100,  '2025-04-19', 27000,  'CSV'),
(13, 'Cuasares Lejanos',          11200, '2025-05-03', 41000,  'FITS'),
(14, 'Supernovas 2024',           1800,  '2024-12-13', 9000,   'JSON'),
(15, 'Materia Oscura Mapeo',      6600,  '2025-05-21', 37000,  'HDF5');

-- ---------------------------------------------------------------------
-- 8. Compone (20) 
-- ---------------------------------------------------------------------
INSERT INTO Compone (id_dataset, codigo_observacion) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15),
(2, 1), (3, 2), (4, 3), (5, 4), (6, 5);

-- ---------------------------------------------------------------------
-- 9. Version_dataset (20) 
-- ---------------------------------------------------------------------
INSERT INTO Version_dataset (numero_version, id_dataset, desc_actualizaciones) VALUES
(1, 1,  'Version inicial'), (1, 2,  'Version inicial'), (1, 3,  'Version inicial'),
(1, 4,  'Version inicial'), (1, 5,  'Version inicial'), (1, 6,  'Version inicial'),
(1, 7,  'Version inicial'), (1, 8,  'Version inicial'), (1, 9,  'Version inicial'),
(1, 10, 'Version inicial'), (1, 11, 'Version inicial'), (1, 12, 'Version inicial'),
(1, 13, 'Version inicial'), (1, 14, 'Version inicial'), (1, 15, 'Version inicial'),
(2, 1,  'Se agregaron 20000 nuevas observaciones y se corrigieron duplicados'),
(2, 2,  'Actualizacion de etiquetas de clasificacion de galaxias'),
(2, 3,  'Se incorporaron datos de ciclo solar 2025'),
(2, 4,  'Filtrado de ruido en señales de radio'),
(2, 5,  'Se agregaron nuevas trayectorias de asteroides detectados');

-- ---------------------------------------------------------------------
-- 10. Equipo (15)
-- ---------------------------------------------------------------------
INSERT INTO Equipo (codigo, nombre, area_cientifica, fecha_creacion) VALUES
(1,  'Exo Hunters',    'exoplanetas',        '2021-03-01'),
(2,  'Galaxy Vision',  'galaxias',           '2021-04-15'),
(3,  'Solar Watch',    'eventos solares',    '2021-05-10'),
(4,  'DarkMatter',     'materia oscura',     '2021-06-20'),
(5,  'Nebula Lab',     'nebulosas',          '2021-07-01'),
(6,  'Pulsar Team',    'radioastronomia',    '2021-08-11'),
(7,  'Cosmo AI',       'cosmologia',         '2021-09-05'),
(8,  'StarClass',      'clasif. estelar',    '2021-10-18'),
(9,  'DeepSky',        'radioastronomia',    '2021-11-02'),
(10, 'OrbitAI',        'asteroides',         '2022-01-14'),
(11, 'Quasar Group',   'cosmologia',         '2022-02-22'),
(12, 'Comet Track',    'cometas',            '2022-03-30'),
(13, 'BlackHole Sq',   'agujeros negros',    '2022-05-09'),
(14, 'RedShift',       'galaxias',           '2022-06-17'),
(15, 'SkyNet Astro',   'exoplanetas',        '2022-07-25');

-- ---------------------------------------------------------------------
-- 11. Investigador (30) 
-- ---------------------------------------------------------------------
INSERT INTO Investigador (id_investigador, codigo, nombre, apellido, nacimiento, calle, n_calle, ciudad, telefono, correo, grado_academico, especialidad) VALUES
(1,  1,  'Camila',   'Rojas',    '1980-02-11', 'Av. Andres Bello', 120,  'Santiago',    '+56911111111', 'crojas@orionai.cl',   'Doctorado en Astrofisica',  'exoplanetas'),
(2,  2,  'Matias',   'Fuentes',  '1978-07-22', 'Av. Kennedy',      450,  'Santiago',    '+56911111112', 'mfuentes@orionai.cl', 'Doctorado en Astronomia',   'galaxias'),
(3,  3,  'Valentina','Soto',     '1975-11-05', 'Av. Providencia',  980,  'Santiago',    '+56911111113', 'vsoto@orionai.cl',    'Doctorado en Fisica Solar', 'eventos solares'),
(4,  4,  'Diego',    'Munoz',    '1982-04-18', 'Calle Merced',     55,   'Valparaiso',  '+56911111114', 'dmunoz@orionai.cl',   'Doctorado en Cosmologia',   'materia oscura'),
(5,  5,  'Francisca','Diaz',     '1979-09-30', 'Av. Grecia',       310,  'Santiago',    '+56911111115', 'fdiaz@orionai.cl',    'Doctorado en Astrofisica',  'nebulosas'),
(6,  6,  'Sebastian','Vera',     '1976-01-14', 'Av. Vitacura',     700,  'Santiago',    '+56911111116', 'svera@orionai.cl',    'Doctorado en Radioastronomia','radioastronomia'),
(7,  7,  'Antonia',  'Reyes',    '1981-06-25', 'Av. Apoquindo',    890,  'Santiago',    '+56911111117', 'areyes@orionai.cl',   'Doctorado en Cosmologia',   'cosmologia'),
(8,  8,  'Tomas',    'Castro',   '1974-12-02', 'Calle Condell',    23,   'Concepcion',  '+56911111118', 'tcastro@orionai.cl',  'Doctorado en Astronomia',   'clasif. estelar'),
(9,  9,  'Javiera',  'Pena',     '1983-03-08', 'Av. Colon',        150,  'Concepcion',  '+56911111119', 'jpena@orionai.cl',    'Doctorado en Radioastronomia','radioastronomia'),
(10, 10, 'Nicolas',  'Contreras','1977-08-19', 'Av. Pajaritos',    600,  'Santiago',    '+56911111120', 'ncontreras@orionai.cl','Doctorado en Fisica',      'asteroides'),
(11, 11, 'Isidora',  'Lagos',    '1980-10-10', 'Av. Suecia',       210,  'Santiago',    '+56911111121', 'ilagos@orionai.cl',   'Doctorado en Cosmologia',   'cosmologia'),
(12, 12, 'Benjamin', 'Torres',   '1975-05-27', 'Calle Ohiggins',   77,   'La Serena',   '+56911111122', 'btorres@orionai.cl',  'Doctorado en Astronomia',   'cometas'),
(13, 13, 'Josefa',   'Bravo',    '1978-02-14', 'Av. Alemania',     340,  'Temuco',      '+56911111123', 'jbravo@orionai.cl',   'Doctorado en Astrofisica',  'agujeros negros'),
(14, 14, 'Rodrigo',  'Salinas',  '1982-09-09', 'Av. Argentina',    500,  'Valparaiso',  '+56911111124', 'rsalinas@orionai.cl', 'Doctorado en Astronomia',   'galaxias'),
(15, 15, 'Constanza','Morales',  '1979-12-21', 'Av. Balmaceda',    650,  'Santiago',    '+56911111125', 'cmorales@orionai.cl', 'Doctorado en Astrofisica',  'exoplanetas'),
(16, 1,  'Pedro',    'Araya',    '1996-01-15', 'Av. Matta',        88,   'Santiago',    '+56922222201', 'paraya@orionai.cl',   'Magister en Astronomia',    'exoplanetas'),
(17, 2,  'Florencia','Silva',    '1997-03-19', 'Av. Irarrazaval',  245,  'Santiago',    '+56922222202', 'fsilva@orionai.cl',   'Magister en Astrofisica',   'galaxias'),
(18, 3,  'Ignacio',  'Herrera',  '1995-06-02', 'Calle Freire',     12,   'Antofagasta', '+56922222203', 'iherrera@orionai.cl', 'Magister en Fisica',        'eventos solares'),
(19, 4,  'Amanda',   'Poblete',  '1998-08-27', 'Av. Los Leones',   410,  'Santiago',    '+56922222204', 'apoblete@orionai.cl', 'Magister en Cosmologia',    'materia oscura'),
(20, 5,  'Cristobal','Vidal',    '1996-11-11', 'Av. Manquehue',    560,  'Santiago',    '+56922222205', 'cvidal@orionai.cl',   'Magister en Astronomia',    'nebulosas'),
(21, 6,  'Martina',  'Sepulveda','1997-04-05', 'Calle Prat',       35,   'Iquique',     '+56922222206', 'msepulveda@orionai.cl','Magister en Radioastronomia','radioastronomia'),
(22, 7,  'Vicente',  'Cabrera',  '1995-09-23', 'Av. Larrain',      190,  'Santiago',    '+56922222207', 'vcabrera@orionai.cl', 'Magister en Cosmologia',    'cosmologia'),
(23, 8,  'Emilia',   'Riquelme', '1998-02-17', 'Calle Barros Arana',66,  'Concepcion',  '+56922222208', 'eriquelme@orionai.cl','Magister en Astronomia',    'clasif. estelar'),
(24, 9,  'Maximiliano','Duran',  '1996-07-30', 'Av. Costanera',    720,  'Concepcion',  '+56922222209', 'mduran@orionai.cl',   'Magister en Radioastronomia','radioastronomia'),
(25, 10, 'Renata',   'Vergara',  '1997-12-08', 'Av. El Bosque',    280,  'Santiago',    '+56922222210', 'rvergara@orionai.cl', 'Magister en Fisica',        'asteroides'),
(26, 11, 'Gaspar',   'Molina',   '1995-05-14', 'Av. Independencia',150,  'Santiago',    '+56922222211', 'gmolina@orionai.cl',  'Magister en Cosmologia',    'cosmologia'),
(27, 12, 'Trinidad', 'Espinoza', '1998-10-01', 'Calle Cienfuegos', 44,   'La Serena',   '+56922222212', 'tespinoza@orionai.cl','Magister en Astronomia',    'cometas'),
(28, 13, 'Joaquin',  'Guzman',   '1996-03-26', 'Av. Alemana',      330,  'Temuco',      '+56922222213', 'jguzman@orionai.cl',  'Magister en Astrofisica',   'agujeros negros'),
(29, 14, 'Agustina', 'Correa',   '1997-08-09', 'Av. Francia',      520,  'Valparaiso',  '+56922222214', 'acorrea@orionai.cl',  'Magister en Astronomia',    'galaxias'),
(30, 15, 'Lucas',    'Aguilar',  '1995-01-20', 'Av. Recoleta',     610,  'Santiago',    '+56922222215', 'laguilar@orionai.cl', 'Magister en Astrofisica',   'exoplanetas');

-- ---------------------------------------------------------------------
-- 12. Senior (15) 
-- ---------------------------------------------------------------------
INSERT INTO Senior (id_investigador, codigo_equipo_liderado, h_index, numero_publicaciones, anos_experiencia) VALUES
(1,  1,  32, 58, 18),
(2,  2,  28, 45, 16),
(3,  3,  25, 40, 20),
(4,  4,  30, 50, 15),
(5,  5,  22, 35, 14),
(6,  6,  35, 62, 19),
(7,  7,  27, 42, 17),
(8,  8,  20, 30, 13),
(9,  9,  33, 55, 18),
(10, 10, 19, 28, 12),
(11, 11, 26, 38, 16),
(12, 12, 24, 33, 15),
(13, 13, 29, 47, 17),
(14, 14, 21, 31, 14),
(15, 15, 31, 53, 18);

-- ---------------------------------------------------------------------
-- 13. Junior (15) 
-- ---------------------------------------------------------------------
INSERT INTO Junior (id_investigador) VALUES
(16), (17), (18), (19), (20), (21), (22), (23), (24), (25), (26), (27), (28), (29), (30);

-- ---------------------------------------------------------------------
-- 14. Modelo_IA (15)
-- ---------------------------------------------------------------------
INSERT INTO Modelo_IA (id_modelo, fecha_creacion, arquitectura, descripcion, tarea_objetivo, mejor_accuracy) VALUES
(1,  '2024-06-01', 'Transformer Hibrido WS',  'Detecta exoplanetas en curvas de luz',       'deteccion',      0.93),
(2,  '2024-06-05', 'CNN ResNet-50',           'Clasifica morfologia de galaxias',           'clasificacion',  0.91),
(3,  '2024-06-10', 'LSTM Solar',              'Predice erupciones solares',                 'prediccion',     0.80),
(4,  '2024-07-01', 'GNN Dark Matter',         'Segmenta mapas de materia oscura',           'segmentacion',   0.60),
(5,  '2024-07-05', 'U-Net Nebula',            'Segmenta estructuras de nebulosas',          'segmentacion',   0.91),
(6,  '2024-07-15', 'Transformer Radio',       'Clasifica pulsares en señales de radio',     'clasificacion',  0.78),
(7,  '2024-08-01', 'Bayesian Cosmo Net',      'Predice parametros cosmologicos',            'prediccion',     0.95),
(8,  '2024-08-10', 'CNN StarNet',             'Clasifica tipos estelares',                  'clasificacion',  0.66),
(9,  '2024-08-20', 'Transformer Radio Deep',  'Detecta señales de radio profundas',         'deteccion',      0.79),
(10, '2024-09-01', 'VAE Nebula Planetaria',   'Genera y clasifica nebulosas planetarias',   'clasificacion',  0.82),
(11, '2024-09-10', 'GNN Cuasar',              'Detecta cuasares en imagenes profundas',     'deteccion',      0.68),
(12, '2024-09-20', 'RandomForest Cometas',    'Predice trayectorias de cometas',            'prediccion',     0.73),
(13, '2024-10-01', 'Transformer BH',          'Detecta candidatos a agujero negro',         'deteccion',      0.77),
(14, '2024-10-10', 'CNN RedShift',            'Estima corrimiento al rojo de galaxias',     'prediccion',     0.89),
(15, '2024-10-20', 'Transformer Hibrido WS2', 'Detecta exoplanetas weakly-supervised v2',   'deteccion',      0.70);

-- ---------------------------------------------------------------------
-- 15. Investigacion (15) 
-- ---------------------------------------------------------------------
INSERT INTO Investigacion (codigo_investigacion, codigo, numero_version, id_dataset, titulo, objetivo_principal, estado, fecha_inicio) VALUES
(1,  1,  1, 1,  'Deteccion de Exoplanetas en sector Kepler usando Transformers Hibridos WS', 'Detectar exoplanetas en curvas de luz Kepler', 'continua',    '2025-01-20'),
(2,  2,  1, 2,  'Clasificacion Morfologica de Galaxias SDSS',                                 'Clasificar galaxias por morfologia',           'continua',    '2025-01-25'),
(3,  3,  1, 3,  'Prediccion de Erupciones Solares 2025',                                      'Predecir eventos solares con LSTM',            'continua',    '2025-02-05'),
(4,  4,  1, 4,  'Segmentacion de Materia Oscura en Andes',                                    'Segmentar mapas de materia oscura',            'suspendida',  '2025-02-14'),
(5,  5,  1, 5,  'Deteccion de Asteroides NEO cercanos a la Tierra',                            'Detectar y contabilizar asteroides NEO',       'continua',    '2025-02-24'),
(6,  6,  1, 6,  'Clasificacion de Pulsares via Interferometria ALMA',                          'Clasificar pulsares en señales de radio',      'finalizada',  '2025-03-08'),
(7,  7,  1, 7,  'Prediccion de Parametros Cosmologicos usando Cometas 2024',                   'Predecir parametros cosmologicos',             'continua',    '2024-11-25'),
(8,  8,  1, 8,  'Clasificacion de Estrellas Enanas en sector Confines del Universo',           'Clasificar tipos de estrellas enanas',         'finalizada',  '2025-03-18'),
(9,  9,  1, 9,  'Deteccion de Señales de Radio Profundo',                                      'Detectar señales de radio de origen desconocido','continua',  '2025-03-24'),
(10, 10, 1, 10, 'Clasificacion de Nebulosas Planetarias',                                      'Clasificar nebulosas planetarias detectadas',  'continua',    '2025-04-04'),
(11, 11, 1, 11, 'Deteccion de Cuasares Lejanos en Espectros Estelares',                        'Detectar cuasares en espectros profundos',     'continua',    '2025-04-13'),
(12, 12, 1, 12, 'Prediccion de Trayectorias de Sistemas Binarios',                             'Predecir trayectorias de cometas y binarios',  'continua',    '2025-04-21'),
(13, 13, 1, 13, 'Deteccion de Agujeros Negros en Cuasares Lejanos',                            'Detectar candidatos a agujero negro',          'continua',    '2025-05-05'),
(14, 14, 1, 14, 'Estimacion de Corrimiento al Rojo en Supernovas 2024',                        'Estimar redshift de supernovas',               'finalizada',  '2024-12-15'),
(15, 15, 1, 15, 'Deteccion de Exoplanetas en Mapeo de Materia Oscura',                         'Detectar exoplanetas usando datos de mapeo',   'continua',    '2025-05-23');

-- ---------------------------------------------------------------------
-- 16. Experimento (23) 
-- ---------------------------------------------------------------------
INSERT INTO Experimento (id_experimento, codigo_investigacion, id_modelo, id_investigador, desempeno_accuracy, estado, fecha_hora_inicio, fecha_hora_fin) VALUES
(1,  1,  1,  1,  0.87, 'completado',    '2025-01-21 08:00:00', '2025-01-21 14:00:00'),
(2,  2,  2,  2,  0.91, 'completado',    '2025-01-26 08:00:00', '2025-01-26 15:00:00'),
(3,  3,  3,  3,  NULL, 'en ejecucion',  '2025-02-06 08:00:00', NULL),
(4,  4,  4,  4,  0.60, 'completado',    '2025-02-15 08:00:00', '2025-02-15 20:00:00'),
(5,  5,  5,  5,  NULL, 'fallido',       '2025-02-25 08:00:00', '2025-02-25 09:30:00'),
(6,  6,  6,  6,  0.78, 'completado',    '2025-03-09 08:00:00', '2025-03-09 18:00:00'),
(7,  7,  7,  7,  0.95, 'completado',    '2024-11-26 08:00:00', '2024-11-26 16:00:00'),
(8,  8,  8,  8,  0.66, 'completado',    '2025-03-19 08:00:00', '2025-03-19 13:00:00'),
(9,  9,  9,  9,  0.72, 'completado',    '2025-03-25 08:00:00', '2025-03-25 19:00:00'),
(10, 10, 10, 10, 0.82, 'completado',    '2025-04-05 08:00:00', '2025-04-05 17:00:00'),
(11, 11, 11, 11, 0.68, 'completado',    '2025-04-14 08:00:00', '2025-04-14 12:00:00'),
(12, 12, 12, 12, 0.73, 'completado',    '2025-04-22 08:00:00', '2025-04-22 11:00:00'),
(13, 13, 13, 13, NULL, 'pendiente',     NULL,                   NULL),
(14, 14, 14, 14, 0.89, 'completado',    '2024-12-16 08:00:00', '2024-12-16 15:00:00'),
(15, 15, 15, 15, 0.70, 'completado',    '2025-05-24 08:00:00', '2025-05-24 14:00:00'),
(16, 1,  1,  16, 0.93, 'completado',    '2025-06-01 08:00:00', '2025-06-01 20:00:00'),
(17, 2,  2,  17, 0.85, 'completado',    '2025-06-02 08:00:00', '2025-06-02 16:00:00'),
(18, 3,  3,  18, 0.80, 'completado',    '2025-06-03 08:00:00', '2025-06-03 15:00:00'),
(19, 4,  4,  19, NULL, 'fallido',       '2025-06-04 08:00:00', '2025-06-04 09:00:00'),
(20, 5,  5,  20, 0.91, 'completado',    '2025-06-05 08:00:00', '2025-06-05 18:00:00'),
(21, 9,  9,  24, 0.79, 'completado',    '2025-06-10 08:00:00', '2025-06-10 20:00:00'),
(22, 11, 11, 26, NULL, 'en ejecucion',  '2025-06-12 08:00:00', NULL),
(23, 13, 13, 28, 0.77, 'completado',    '2025-06-15 08:00:00', '2025-06-15 19:00:00');

-- ---------------------------------------------------------------------
-- 17. Convenio (15) 
-- ---------------------------------------------------------------------
INSERT INTO Convenio (id_convenio, id_organizacion, id_investigador, id_dataset, fecha_inicio, fecha_fin, nivel_acceso, clausulas_legales) VALUES
(1,  1,  1,  1,  '2023-01-15', NULL,         'lectura',                'Uso exclusivo con fines de investigacion academica, prohibida redistribucion.'),
(2,  2,  2,  2,  '2022-05-01', '2024-05-01', 'lectura y escritura',    'Acceso valido por 2 años, requiere reporte anual de avances.'),
(3,  3,  3,  3,  '2024-01-10', '2027-01-10', 'acceso completo',        'Convenio marco de colaboracion cientifica U. de Chile - OrionAI.'),
(4,  4,  4,  4,  '2021-03-01', '2023-03-01', 'lectura',                'Datos de uso exclusivo del equipo asignado, sin fines comerciales.'),
(5,  5,  5,  5,  '2025-06-01', '2026-12-31', 'lectura y escritura',    'Renovacion sujeta a evaluacion de resultados de investigacion.'),
(6,  6,  6,  6,  '2023-07-01', NULL,         'acceso completo',        'Convenio indefinido, revisable anualmente por ambas partes.'),
(7,  7,  7,  7,  '2020-01-01', '2022-01-01', 'lectura',                'Convenio vencido, requiere renovacion formal para continuar uso.'),
(8,  8,  8,  8,  '2024-09-01', '2026-09-01', 'lectura y escritura',    'Acceso valido por 2 años con posibilidad de extension.'),
(9,  9,  9,  9,  '2022-11-11', '2025-11-11', 'acceso completo',        'Convenio de colaboracion en radioastronomia, sujeto a revision.'),
(10, 10, 10, 10, '2023-02-20', NULL,         'lectura',                'Uso academico exclusivo, prohibido uso comercial del dataset.'),
(11, 11, 11, 11, '2021-08-08', '2023-08-08', 'lectura y escritura',    'Convenio vencido, en proceso de renovacion con CNES.'),
(12, 12, 12, 12, '2024-04-04', '2028-04-04', 'acceso completo',        'Convenio de largo plazo para seguimiento de cometas y binarios.'),
(13, 13, 13, 13, '2025-01-01', '2026-07-01', 'lectura',                'Convenio vencido recientemente, en negociacion de renovacion.'),
(14, 14, 14, 14, '2023-09-09', NULL,         'lectura y escritura',    'Convenio indefinido para uso de datos de supernovas.'),
(15, 15, 15, 15, '2022-02-02', '2024-02-02', 'acceso completo',        'Convenio vencido, requiere nueva firma para continuar.');

-- ---------------------------------------------------------------------
-- 18. Hiperparametros (16) 
-- ---------------------------------------------------------------------
INSERT INTO Hiperparametros (id_experimento, nombre_hiperparametro, valor) VALUES
(1, 'learning_rate', '0.001'),
(1, 'batch_size',    '32'),
(2, 'learning_rate', '0.0005'),
(2, 'batch_size',    '64'),
(3, 'learning_rate', '0.01'),
(3, 'epochs',        '50'),
(4, 'learning_rate', '0.001'),
(4, 'dropout',       '0.3'),
(5, 'learning_rate', '0.002'),
(5, 'batch_size',    '16'),
(6, 'learning_rate', '0.0001'),
(6, 'batch_size',    '128'),
(7, 'learning_rate', '0.003'),
(7, 'epochs',        '100'),
(8, 'learning_rate', '0.0007'),
(8, 'batch_size',    '32');

-- ---------------------------------------------------------------------
-- 19. Utiliza (18) 
-- ---------------------------------------------------------------------
INSERT INTO Utiliza (id_recurso_computacional, id_experimento, fecha_asignacion, fecha_liberacion) VALUES
(1,  1,  '2025-01-21', '2025-01-21'),
(2,  2,  '2025-01-26', '2025-01-26'),
(3,  3,  '2025-02-06', NULL),
(4,  4,  '2025-02-15', '2025-02-15'),
(5,  5,  '2025-02-25', '2025-02-25'),
(6,  6,  '2025-03-09', '2025-03-09'),
(7,  7,  '2024-11-26', '2024-11-26'),
(8,  8,  '2025-03-19', '2025-03-19'),
(9,  9,  '2025-03-25', '2025-03-25'),
(10, 10, '2025-04-05', '2025-04-05'),
(11, 11, '2025-04-14', '2025-04-14'),
(12, 12, '2025-04-22', '2025-04-22'),
(13, 13, '2026-08-01', NULL),
(14, 14, '2024-12-16', '2024-12-16'),
(15, 15, '2025-05-24', '2025-05-24'),
(1,  16, '2025-06-01', '2025-06-01'),
(5,  20, '2025-06-05', '2025-06-05'),
(3,  18, '2025-06-03', '2025-06-03');