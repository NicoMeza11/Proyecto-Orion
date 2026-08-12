
USE orionDatabase;

-- 1. Organizacion 
INSERT INTO Organizacion (nombre_org, pais, correo, tipo, sitio_web) VALUES
('NASA', 'EEUU', 'contact@nasa.gov', 'Agencia Espacial', 'www.nasa.gov'),
('ESA', 'Francia', 'info@esa.int', 'Agencia Espacial', 'www.esa.int'),
('ESO', 'Alemania', 'contact@eso.org', 'Instituto', 'www.eso.org'),
('ALMA Obs', 'Chile', 'info@alma.cl', 'Instituto', 'www.almaobservatory.org'),
('JAXA', 'Japon', 'contact@jaxa.jp', 'Agencia Espacial', 'www.jaxa.jp'),
('CNES', 'Francia', 'info@cnes.fr', 'Agencia Espacial', 'www.cnes.fr'),
('CSA', 'Canada', 'contact@csa.ca', 'Agencia Espacial', 'www.asc-csa.gc.ca'),
('ASI', 'Italia', 'info@asi.it', 'Agencia Espacial', 'www.asi.it'),
('DLR', 'Alemania', 'contact@dlr.de', 'Agencia Espacial', 'www.dlr.de'),
('U. de Chile', 'Chile', 'contacto@uchile.cl', 'Universidad', 'www.uchile.cl'),
('PUC Chile', 'Chile', 'contacto@uc.cl', 'Universidad', 'www.uc.cl'),
('U. Concepcion', 'Chile', 'info@udec.cl', 'Universidad', 'www.udec.cl'),
('U. Antofagasta', 'Chile', 'info@uantof.cl', 'Universidad', 'www.uantof.cl'),
('U. La Serena', 'Chile', 'info@userena.cl', 'Universidad', 'www.userena.cl'),
('AURA Obs', 'EEUU', 'contact@aura.edu', 'Instituto', 'www.aura-astronomy.org');

-- 2. Cluster 
INSERT INTO Cluster (nombre_descripcion) VALUES
('Cluster Alpha-01'),
('Cluster Alpha-02'),
('Cluster Beta-01'),
('Cluster Beta-02'),
('Cluster Gamma-01'),
('Cluster Gamma-02'),
('Cluster Delta-01'),
('Cluster Delta-02'),
('Cluster Epsilon-1'),
('Cluster Epsilon-2'),
('Cluster Zeta-01'),
('Cluster Zeta-02'),
('Cluster Eta-01'),
('Cluster Theta-01'),
('Cluster Iota-01');

-- 3. Observacion
INSERT INTO Observacion (fecha, hora, duracion_segundos, latitud, longitud, calidad, longitud_onda, tamano_byte) VALUES
('2024-01-10', '22:15:00', 3600, -23.023400, -67.753800, 'alta', 550.0000, 10737418240),
('2024-01-11', '23:30:00', 1800, -23.023400, -67.753800, 'alta', 650.0000, 5368709120),
('2024-01-12', '01:00:00', 7200, -29.256300, -70.738000, 'media', 450.0000, 21474836480),
('2024-01-13', '03:45:00', 5400, -29.256300, -70.738000, 'alta', 800.0000, 16106127360),
('2024-01-14', '21:00:00', 2700, -30.169000, -70.806300, 'baja', 900.0000, 8053063680),
('2024-01-15', '02:15:00', 4200, -30.169000, -70.806300, 'alta', 1200.0000, 12884901888),
('2024-01-16', '04:00:00', 3000, -24.627500, -70.404400, 'media', 350.0000, 9663676416),
('2024-01-17', '23:00:00', 6000, -24.627500, -70.404400, 'alta', 700.0000, 17179869184),
('2024-01-18', '00:30:00', 4800, 0.000000, 0.000000, 'alta', 1500.0000, 14495514624),
('2024-01-19', '02:00:00', 3600, 0.000000, 0.000000, 'media', 2000.0000, 10737418240),
('2024-01-20', '22:45:00', 1200, -23.023400, -67.753800, 'baja', 500.0000, 3221225472),
('2024-01-21', '01:15:00', 8400, -29.256300, -70.738000, 'alta', 600.0000, 25769803776),
('2024-01-22', '03:00:00', 3900, -30.169000, -70.806300, 'alta', 750.0000, 11811160064),
('2024-01-23', '21:30:00', 4500, -24.627500, -70.404400, 'media', 850.0000, 13421772800),
('2024-01-24', '05:00:00', 6600, 0.000000, 0.000000, 'alta', 1100.0000, 19327352832);

-- 4. Modelo_IA 
INSERT INTO Modelo_IA (fecha_creacion, arquitectura, descripcion, tarea_objetivo, mejor_accuracy) VALUES
('2024-02-01', 'Transformer Hibrido', 'Deteccion de exoplanetas mediante curvas de luz', 'deteccion', 95),
('2024-02-02', 'ResNet-50 Astro', 'Clasificacion morfologica de galaxias', 'clasificacion', 92),
('2024-02-03', 'U-Net Stellar', 'Segmentacion de manchas solares en imagenes UV', 'segmentacion', 88),
('2024-02-04', 'LSTM SolarPredict', 'Prediccion de ráfagas solares', 'prediccion', 85),
('2024-02-05', 'YOLO-AstroV4', 'Deteccion rapida de asteroides cercanos', 'deteccion', 91),
('2024-02-06', 'CNN 3D Spectroscopy', 'Clasificacion espectral de supernovas', 'clasificacion', 94),
('2024-02-07', 'Vision Transformer', 'Deteccion de lentes gravitacionales', 'deteccion', 89),
('2024-02-08', 'Autoencoder Cosmo', 'Segmentacion de estructuras de materia oscura', 'segmentacion', 87),
('2024-02-09', 'Graph Neural Net', 'Prediccion de orbitas debris espacial', 'prediccion', 93),
('2024-02-10', 'EfficientNet Space', 'Clasificacion de cometas de largo periodo', 'clasificacion', 90),
('2024-02-11', 'BERT-AstroSignal', 'Deteccion de senales de radio de fuentes pulsadas', 'deteccion', 96),
('2024-02-12', 'GAN CosmoGen', 'Generacion y segmentacion de campos estelares', 'segmentacion', 84),
('2024-02-13', 'XGBoost SpaceWeather', 'Prediccion de tormentas geomagneticas', 'prediccion', 89),
('2024-02-14', 'DenseNet Astro', 'Clasificacion de cuasares distantes', 'clasificacion', 93),
('2024-02-15', 'Diffusion AstroModel', 'Deteccion de enanas marrones en IR', 'deteccion', 91);

-- 5. Equipo
INSERT INTO Equipo (nombre, area_cientifica, fecha_creacion) VALUES
('ExoSearch Alpha', 'Exoplanetas', '2023-01-15'),
('GalaxyLab', 'Galaxias', '2023-02-20'),
('SolarGuard', 'Fisica Solar', '2023-03-10'),
('CosmoLenses', 'Cosmologia', '2023-04-05'),
('AsteroidTrack', 'Cuerpos Menores', '2023-05-12'),
('SupernovaTeam', 'Astrofisica HighE', '2023-06-18'),
('RadioAstroNet', 'Radioastronomia', '2023-07-22'),
('DarkMatterGroup', 'Materia Oscura', '2023-08-30'),
('SpaceDebrisLab', 'Basura Espacial', '2023-09-14'),
('StellarEvolution', 'Evolucion Estelar', '2023-10-01'),
('QuasarHunter', 'Galaxias Activas', '2023-10-25'),
('InfraredVision', 'Astronomia IR', '2023-11-11'),
('CompactObjects', 'Estrellas Neutrones', '2023-12-01'),
('AstroAcoustics', 'Asteroseismologia', '2024-01-05'),
('ExoAtmospheres', 'Atmósferas Exoplan', '2024-01-20');

-- 6. Servidor
INSERT INTO Servidor (codigo_cluster, estado_operativo, capacidad_almacenamiento, memoria_disponible) VALUES
(1, 1, 10000, 256),
(2, 1, 10000, 256),
(3, 1, 20000, 512),
(4, 0, 20000, 512),
(5, 1, 15000, 384),
(6, 1, 15000, 384),
(7, 1, 30000, 1024),
(8, 1, 30000, 1024),
(9, 0, 12000, 256),
(10, 1, 12000, 256),
(11, 1, 25000, 512),
(12, 1, 25000, 512),
(13, 1, 18000, 384),
(14, 1, 18000, 384),
(15, 1, 40000, 2048);

-- 7. Instrumento
INSERT INTO Instrumento (id_organizacion, codigo_observacion, tipo, estado, rango_longitud) VALUES
(1, 1, 'Telescopio Optico Kepler', 1, 550),
(2, 2, 'Telescopio Espacial Gaia', 1, 650),
(3, 3, 'VLT UT1 Antu', 1, 450),
(4, 4, 'ALMA Antena Array 12m', 1, 800),
(5, 5, 'Satelite Hinode SOT', 0, 900),
(6, 6, 'Telescopio Tarot', 1, 1200),
(7, 7, 'NEOSSat Camera', 1, 350),
(8, 8, 'AGILE Gamma Detector', 1, 700),
(9, 9, 'eROSITA X-Ray Spec', 1, 1500),
(10, 10, 'Telescopio Calan Hanta', 1, 2000),
(11, 11, 'UC IR Spectrograph', 1, 500),
(12, 12, 'UdeC Radio Dish 2m', 1, 600),
(13, 13, 'UAntof Photometer', 1, 750),
(14, 14, 'ULS Solar Camera', 1, 850),
(15, 15, 'Gemini South Instrument', 1, 1100);

-- 8. Investigador
INSERT INTO Investigador (codigo, nombre, apellido, nacimiento, calle, n_calle, ciudad, telefono, correo, grado_academico, especialidad) VALUES
(1, 'Carlos', 'Mendoza', '1980-05-12', 'Av. Providencia', 1234, 'Santiago', '+56911111111', 'carlos.mendoza@orionai.cl', 'Doctor', 'Exoplanetas'),
(2, 'Ana', 'Silva', '1982-08-23', 'Av. Apoquindo', 5678, 'Santiago', '+56922222222', 'ana.silva@orionai.cl', 'Doctora', 'Galaxias'),
(3, 'Roberto', 'Gomez', '1975-11-30', 'Calle Alameda', 901, 'Santiago', '+56933333333', 'roberto.gomez@orionai.cl', 'Doctor', 'Fisica Solar'),
(4, 'Maria', 'Torres', '1984-03-15', 'Av. Vitacura', 2345, 'Santiago', '+56944444444', 'maria.torres@orionai.cl', 'Doctora', 'Cosmologia'),
(5, 'Juan', 'Perez', '1978-09-04', 'Av. Las Condes', 6789, 'Santiago', '+56955555555', 'juan.perez@orionai.cl', 'Doctor', 'Cuerpos Menores'),
(6, 'Lucia', 'Rojas', '1983-01-20', 'Calle Brasil', 345, 'Santiago', '+56966666666', 'lucia.rojas@orionai.cl', 'Doctora', 'Astrofisica HighE'),
(7, 'Diego', 'Morales', '1981-06-18', 'Av. Matta', 1290, 'Santiago', '+56977777777', 'diego.morales@orionai.cl', 'Doctor', 'Radioastronomia'),
(8, 'Patricia', 'Castro', '1985-12-05', 'Calle Italia', 876, 'Santiago', '+56988888888', 'patricia.castro@orionai.cl', 'Doctora', 'Materia Oscura'),
(9, 'Gonzalo', 'Araya', '1979-04-14', 'Av. Grecia', 4321, 'Santiago', '+56999999999', 'gonzalo.araya@orionai.cl', 'Doctor', 'Basura Espacial'),
(10, 'Elena', 'Fuentes', '1986-07-22', 'Calle Lyon', 543, 'Santiago', '+56910101010', 'elena.fuentes@orionai.cl', 'Doctora', 'Evolucion Estelar'),
(11, 'Fernando', 'Vargas', '1977-10-11', 'Av. Tobalaba', 987, 'Santiago', '+56920202020', 'fernando.vargas@orionai.cl', 'Doctor', 'Galaxias Activas'),
(12, 'Camila', 'Contreras', '1988-02-28', 'Calle Suecia', 654, 'Santiago', '+56930303030', 'camila.contreras@orionai.cl', 'Doctora', 'Astronomia IR'),
(13, 'Sebastian', 'Navarro', '1980-03-09', 'Av. Bilbao', 321, 'Santiago', '+56940404040', 'sebastian.navarro@orionai.cl', 'Doctor', 'Estrellas Neutrones'),
(14, 'Sofia', 'Espinosa', '1983-05-17', 'Calle Pedro Valdivia', 789, 'Santiago', '+56950505050', 'sofia.espinosa@orionai.cl', 'Doctora', 'Asteroseismologia'),
(15, 'Javier', 'Soto', '1976-08-01', 'Av. Macul', 456, 'Santiago', '+56960606060', 'javier.soto@orionai.cl', 'Doctor', 'Atmósferas Exoplan'),
(1, 'Mateo', 'Lara', '1995-01-10', 'Calle San Martin', 101, 'Santiago', '+56970707070', 'mateo.lara@orionai.cl', 'Magister', 'Exoplanetas'),
(2, 'Valentina', 'Pino', '1996-03-12', 'Av. Manuel Montt', 202, 'Santiago', '+56980808080', 'valentina.pino@orionai.cl', 'Licenciada', 'Galaxias'),
(3, 'Nicolas', 'Bravo', '1994-05-14', 'Calle Condell', 303, 'Santiago', '+56990909090', 'nicolas.bravo@orionai.cl', 'Magister', 'Fisica Solar'),
(4, 'Isabella', 'Sanches', '1997-07-16', 'Av. Italia', 404, 'Santiago', '+56911223344', 'isabella.sanches@orionai.cl', 'Licenciada', 'Cosmologia'),
(5, 'Benjamin', 'Vera', '1995-09-18', 'Calle Rancagua', 505, 'Santiago', '+56922334455', 'benjamin.vera@orionai.cl', 'Magister', 'Cuerpos Menores'),
(6, 'Camila', 'Reyes', '1996-11-20', 'Av. Bustamante', 606, 'Santiago', '+56933445566', 'camila.reyes@orionai.cl', 'Licenciada', 'Astrofisica HighE'),
(7, 'Tomas', 'Paredes', '1994-12-22', 'Calle Santa Isabel', 707, 'Santiago', '+56944556677', 'tomas.paredes@orionai.cl', 'Magister', 'Radioastronomia'),
(8, 'Antonia', 'Delgado', '1998-02-24', 'Av. Vicuna Mackenna', 808, 'Santiago', '+56955667788', 'antonia.delgado@orionai.cl', 'Licenciada', 'Materia Oscura'),
(9, 'Gabriel', 'Aguilar', '1995-04-26', 'Calle Marin', 909, 'Santiago', '+56966778899', 'gabriel.aguilar@orionai.cl', 'Magister', 'Basura Espacial'),
(10, 'Martina', 'Miranda', '1997-06-28', 'Av. Portugal', 1010, 'Santiago', '+56977889900', 'martina.miranda@orionai.cl', 'Licenciada', 'Evolucion Estelar'),
(11, 'Lucas', 'Campos', '1996-08-30', 'Calle Tarapaca', 1111, 'Santiago', '+56988990011', 'lucas.campos@orionai.cl', 'Magister', 'Galaxias Activas'),
(12, 'Amanda', 'Vega', '1994-10-02', 'Av. Matta', 1212, 'Santiago', '+56999001122', 'amanda.vega@orionai.cl', 'Licenciada', 'Astronomia IR'),
(13, 'Joaquin', 'Fuentes', '1995-12-04', 'Calle Carmen', 1313, 'Santiago', '+56900112233', 'joaquin.fuentes@orionai.cl', 'Magister', 'Estrellas Neutrones'),
(14, 'Florencia', 'Cortez', '1997-01-06', 'Av. Santa Rosa', 1414, 'Santiago', '+56911335577', 'florencia.cortez@orionai.cl', 'Licenciada', 'Asteroseismologia'),
(15, 'Agustin', 'Garrido', '1996-03-08', 'Calle Lira', 1515, 'Santiago', '+56922446688', 'agustin.garrido@orionai.cl', 'Magister', 'Atmósferas Exoplan');

-- 9. Senior
INSERT INTO Senior (id_investigador, codigo, h_index, numero_publicaciones, anos_experiencia) VALUES
(1, 101, 35, 80, 18),
(2, 102, 28, 62, 15),
(3, 103, 42, 110, 22),
(4, 104, 25, 50, 12),
(5, 105, 30, 75, 16),
(6, 106, 22, 45, 11),
(7, 107, 38, 95, 20),
(8, 108, 20, 40, 10),
(9, 109, 31, 70, 17),
(10, 110, 19, 38, 9),
(11, 111, 27, 58, 14),
(12, 112, 21, 42, 10),
(13, 113, 33, 82, 16),
(14, 114, 24, 48, 13),
(15, 115, 36, 90, 19);

-- 10. Junior
INSERT INTO Junior (id_investigador) VALUES
(16), (17), (18), (19), (20),
(21), (22), (23), (24), (25),
(26), (27), (28), (29), (30);

-- 11. Recurso_Computacional
INSERT INTO Recurso_Computacional (codigo_servidor, tipo, capacidad, memoria, estado) VALUES
(1, 'GPU NVIDIA A100', 80, 40, 1),
(2, 'GPU NVIDIA H100', 80, 80, 1),
(3, 'TPU v4', 32, 128, 1),
(4, 'CPU AMD EPYC', 128, 256, 1),
(5, 'GPU NVIDIA V100', 32, 32, 1),
(6, 'GPU NVIDIA A100', 80, 40, 1),
(7, 'TPU v5e', 64, 256, 1),
(8, 'CPU Intel Xeon', 64, 128, 1),
(9, 'GPU NVIDIA H100', 80, 80, 0),
(10, 'GPU NVIDIA RTX 4090', 24, 24, 1),
(11, 'TPU v4', 32, 128, 1),
(12, 'CPU AMD EPYC', 64, 128, 1),
(13, 'GPU NVIDIA A100', 80, 40, 1),
(14, 'GPU NVIDIA V100', 32, 32, 1),
(15, 'GPU NVIDIA H100', 80, 80, 1);

-- 12. Experimento
INSERT INTO Experimento (id_modelo, id_investigador, desempeno_accuracy, estado, fecha_hora_inicio, fecha_hora_fin) VALUES
(1, 1, 95, 1, '2024-03-01 08:00:00', '2024-03-01 18:00:00'),
(2, 2, 92, 1, '2024-03-02 09:00:00', '2024-03-02 20:00:00'),
(3, 3, 88, 1, '2024-03-03 10:00:00', '2024-03-03 16:00:00'),
(4, 4, 85, 1, '2024-03-04 11:00:00', '2024-03-04 22:00:00'),
(5, 5, 91, 1, '2024-03-05 08:30:00', '2024-03-05 14:30:00'),
(6, 6, 94, 1, '2024-03-06 09:15:00', '2024-03-06 19:15:00'),
(7, 7, 89, 1, '2024-03-07 12:00:00', '2024-03-07 23:00:00'),
(8, 8, 87, 1, '2024-03-08 07:00:00', '2024-03-08 17:00:00'),
(9, 9, 93, 1, '2024-03-09 13:00:00', '2024-03-09 21:00:00'),
(10, 10, 90, 1, '2024-03-10 14:00:00', '2024-03-10 23:30:00'),
(11, 11, 96, 1, '2024-03-11 08:00:00', '2024-03-11 12:00:00'),
(12, 12, 84, 1, '2024-03-12 10:00:00', '2024-03-12 20:00:00'),
(13, 13, 89, 1, '2024-03-13 11:30:00', '2024-03-13 18:30:00'),
(14, 14, 93, 1, '2024-03-14 09:00:00', '2024-03-14 15:00:00'),
(15, 15, 91, 1, '2024-03-15 15:00:00', '2024-03-15 22:00:00');

-- 13. Convenio
INSERT INTO Convenio (id_organizacion, id_investigador, fecha_inicio, fecha_fin) VALUES
(1, 1, '2023-01-01', '2026-01-01'),
(2, 2, '2023-02-01', '2026-02-01'),
(3, 3, '2023-03-01', '2026-03-01'),
(4, 4, '2023-04-01', '2026-04-01'),
(5, 5, '2023-05-01', '2026-05-01'),
(6, 6, '2023-06-01', '2026-06-01'),
(7, 7, '2023-07-01', '2026-07-01'),
(8, 8, '2023-08-01', '2026-08-01'),
(9, 9, '2023-09-01', '2026-09-01'),
(10, 10, '2023-10-01', '2026-10-01'),
(11, 11, '2023-11-01', '2026-11-01'),
(12, 12, '2023-12-01', '2026-12-01'),
(13, 13, '2024-01-01', '2027-01-01'),
(14, 14, '2024-02-01', '2027-02-01'),
(15, 15, '2024-03-01', '2027-03-01');

-- 14. Hiperparametros
INSERT INTO Hiperparametros (id_experimento, hiperparametros) VALUES
(1, 1001), (2, 1002), (3, 1003), (4, 1004), (5, 1005),
(6, 1006), (7, 1007), (8, 1008), (9, 1009), (10, 1010),
(11, 1011), (12, 1012), (13, 1013), (14, 1014), (15, 1015);

-- 15. Investigacion
INSERT INTO Investigacion (id_experimento, codigo, titulo, objetivo_principal, estado, fecha_inicio) VALUES
(1, 1, 'Deteccion Estrellas Enanas V1', 'Identificar enanas rojas', 1, '2024-01-10'),
(2, 2, 'Clasificación Galaxias Espirales', 'Agrupar por morfología', 1, '2024-01-15'),
(3, 3, 'Analisis de Manchas Solares', 'Segmentar regiones activas', 1, '2024-01-20'),
(4, 4, 'Prediccion Ráfagas Solares C', 'Pronóstico de eyecciones', 1, '2024-01-25'),
(5, 5, 'Rastreo Asteroides Cercanos', 'Calcular trayectoria NEO', 1, '2024-02-01'),
(6, 6, 'Clasificación Espectral SN', 'Analizar curva espectral', 1, '2024-02-05'),
(7, 7, 'Lentes Gravitacionales V2', 'Detectar arcos de luz', 1, '2024-02-10'),
(8, 8, 'Mapeo Materia Oscura Fil', 'Segmentar filamentos', 1, '2024-02-15'),
(9, 9, 'Orbitas Basura Espacial', 'Predecir colisiones', 1, '2024-02-20'),
(10, 10, 'Analisis Cometas Periodo', 'Clasificar cometas', 1, '2024-02-25'),
(11, 11, 'Senales Radio Pulsar AI', 'Filtrar interferencia', 1, '2024-03-01'),
(12, 12, 'Generación Campos Estelares', 'Sintetizar fotometría', 1, '2024-03-05'),
(13, 13, 'Clima Espacial Predictor', 'Predecir tormentas', 1, '2024-03-08'),
(14, 14, 'Espectros Cuasares Lejanos', 'Clasificar red shift', 1, '2024-03-10'),
(15, 15, 'Atmósferas Exoplanetarias', 'Detectar vapor agua', 1, '2024-03-12');

-- 16. Utiliza
INSERT INTO Utiliza (id_recurso_computacional, id_experimento, fecha_asignacion, fecha_liberacion) VALUES
(1, 1, '2024-03-01', '2024-03-01'),
(2, 2, '2024-03-02', '2024-03-02'),
(3, 3, '2024-03-03', '2024-03-03'),
(4, 4, '2024-03-04', '2024-03-04'),
(5, 5, '2024-03-05', '2024-03-05'),
(6, 6, '2024-03-06', '2024-03-06'),
(7, 7, '2024-03-07', '2024-03-07'),
(8, 8, '2024-03-08', '2024-03-08'),
(9, 9, '2024-03-09', '2024-03-09'),
(10, 10, '2024-03-10', '2024-03-10'),
(11, 11, '2024-03-11', '2024-03-11'),
(12, 12, '2024-03-12', '2024-03-12'),
(13, 13, '2024-03-13', '2024-03-13'),
(14, 14, '2024-03-14', '2024-03-14'),
(15, 15, '2024-03-15', '2024-03-15');

-- 17. Dataset
INSERT INTO Dataset (id_dataset, id_convenio, nombre, tamano, fecha_creacion, cantidad_datos, formato_registro) VALUES
(1, 1, 'Dataset Kepler Exo-01', 500, '2024-01-15', 10000, 'FITS'),
(2, 2, 'Dataset Gaia Gal-02', 1200, '2024-01-20', 25000, 'HDF5'),
(3, 3, 'Dataset Solar UV-03', 800, '2024-01-25', 15000, 'CSV'),
(4, 4, 'Dataset ALMA Radio-04', 2100, '2024-02-01', 40000, 'FITS'),
(5, 5, 'Dataset Hinode Sun-05', 300, '2024-02-05', 8000, 'JSON'),
(6, 6, 'Dataset Tarot Supernova-06', 950, '2024-02-10', 18000, 'FITS'),
(7, 7, 'Dataset NEOSSat Asteroids-07', 400, '2024-02-15', 9500, 'HDF5'),
(8, 8, 'Dataset AGILE Gamma-08', 1500, '2024-02-20', 30000, 'CSV'),
(9, 9, 'Dataset eROSITA XRay-09', 1800, '2024-02-25', 35000, 'FITS'),
(10, 10, 'Dataset Calan Survey-10', 650, '2024-03-01', 12000, 'FITS'),
(11, 11, 'Dataset UC Infrared-11', 1100, '2024-03-02', 22000, 'HDF5'),
(12, 12, 'Dataset UdeC Dish-12', 750, '2024-03-03', 14000, 'CSV'),
(13, 13, 'Dataset UAntof Field-13', 890, '2024-03-04', 16000, 'FITS'),
(14, 14, 'Dataset ULS Corona-14', 530, '2024-03-05', 11000, 'JSON'),
(15, 15, 'Dataset Gemini Deep-15', 3200, '2024-03-06', 50000, 'FITS');

-- 18. Compone
INSERT INTO Compone (id_dataset, codigo_observacion) VALUES
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 11), (12, 12), (13, 13), (14, 14), (15, 15);

-- 19. Version_dataset
INSERT INTO Version_dataset (numero_version, id_dataset, codigo_investigacion, desc_actualizaciones) VALUES
(1, 1, 1, 'Version inicial de curva de luz filtrada'),
(1, 2, 2, 'Correccion de ruido astrometrico y paralaje'),
(1, 3, 3, 'Calibracion UV y eliminacion de artefactos'),
(1, 4, 4, 'Filtrado de frecuencia submilimetrica'),
(1, 5, 5, 'Ajuste de contraste en imagenes solares'),
(1, 6, 6, 'Normalizacion de espectros de supernovas'),
(1, 7, 7, 'Eliminacion de trazas estelares de fondo'),
(1, 8, 8, 'Depuracion de eventos gamma espurios'),
(1, 9, 9, 'Filtrado de fotones de alta energia'),
(10, 10, 10, 'Alineacion de coordenadas celestes'),
(1, 11, 11, 'Reduccion de fotometria infrarroja'),
(1, 12, 12, 'Limpieza de interferencia radioeléctrica'),
(1, 13, 13, 'Corrección atmosférica para datos fotométricos'),
(1, 14, 14, 'Sincronizacion de marcas de tiempo solares'),
(1, 15, 15, 'Sustracion de fondo de cielo en Gemini');
