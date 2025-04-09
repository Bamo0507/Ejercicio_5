-- Estados, solamente se manejaran 4
INSERT INTO Estados (nombre) VALUES
  ('Completado'),
  ('Empaquetado'),
  ('Cancelado'),
  ('En Camino');

-- 15 clientes
INSERT INTO Clientes (username, password, nit, dpi, telefono) VALUES
  ('juan23',     'passJuan',   '123456789', '1234567890123', '555-0101'),
  ('maria_l',    'passMaria',  '987654321', '9876543210987', '555-0102'),
  ('carla88',    'passCarla',  '111222333', '1112223334444', '555-0103'),
  ('pedro_g',    'passPedro',  '999888777', '9998887776666', '555-0104'),
  ('luis99',     'passLuis',   '222333444', '2223334445556', '555-0105'),
  ('ana_rojas',  'passAna',    '333444555', '3334445556667', '555-0106'),
  ('carlos_s',   'passCarlos', '444555666', '4445556667778', '555-0107'),
  ('susan_m',    'passSusan',  '555666777', '5556667778889', '555-0108'),
  ('diego_k',    'passDiego',  '666777888', '6667778889990', '555-0109'),
  ('karla_z',    'passKarla',  '777888999', '7778889990001', '555-0110'),
  ('miguel_p',   'passMiguel', '888999000', '8889990001112', '555-0111'),
  ('sofia_d',    'passSofia',  '999000111', '9990001112223', '555-0112'),
  ('andres_v',   'passAndres', '123123123', '1231231234567', '555-0113'),
  ('valeria_q',  'passValeria','321321321', '3213213216543', '555-0114'),
  ('ricardo_x',  'passRicardo','456456456', '4564564567890', '555-0115');

-- 20 direcciones de clientes
INSERT INTO Cliente_Direcciones (id_client, direccion) VALUES
  (1,  'Zona 1, Ciudad Guatemala'),
  (1,  'Colonia Reforma, Ciudad Guatemala'),
  (2,  'Avenida Las Américas, Antigua'),
  (3,  'Zona 5, Ciudad Guatemala'),
  (4,  'Barrio San Juan, Ciudad Guatemala'),
  (5,  'Calle Real, Quetzaltenango'),
  (6,  'Zona 10, Ciudad Guatemala'),
  (7,  'Avenida Central, Ciudad Guatemala'),
  (8,  'Sector 15, Mixco'),
  (9,  'Zona 3, Ciudad Guatemala'),
  (10, 'Colonia Los Alpes, Ciudad Guatemala'),
  (11, 'Avenida La Reforma, Ciudad Guatemala'),
  (12, 'Zona 2, Ciudad Guatemala'),
  (13, 'Calle 12, Ciudad Guatemala'),
  (14, 'Barrio El Centro, Ciudad Guatemala'),
  (15, 'Zona 8, Ciudad Guatemala'),
  (3,  'Avenida Siempre Viva 742, Ciudad Guatemala'),
  (7,  'Colonia Loma Linda, Ciudad Guatemala'),
  (8,  'Calle 7, Ciudad Guatemala'),
  (12, 'Avenida Universidad, Ciudad Guatemala');

-- 20 productos
INSERT INTO Productos (nombre, descripcion, cantidad, precio_actual) VALUES
  ('Cepillo de Dientes de Bambú',       'Cepillo ecológico con mango 100% bambú',             150, 16.00),
  ('Jabón Orgánico sin Empaque',         'Jabón hecho a mano sin empaque de plástico',           80, 25.00),
  ('Bolsa Reutilizable de Tela',         'Bolsa resistente para compras, 100% tela orgánica',    195, 10.00),
  ('Pajilla de Bambú',                   'Pajilla ecológica, reutilizable, fabricada en bambú',    300, 6.00),
  ('Pajilla de Acero Inoxidable',        'Pajilla duradera, lavable, de acero inoxidable',         170, 7.50),
  ('Desodorante Natural en Barra',       'Desodorante sin aluminio y 100% natural en barra',       90, 11.50),
  ('Champú Sólido Ecológico',            'Champú en barra, sin empaques plásticos y ecológico',    60, 20.00),
  ('Acondicionador Sólido',              'Acondicionador en barra para cabellos sanos',            60, 18.00),
  ('Crema Facial Orgánica',              'Crema hidratante elaborada con ingredientes orgánicos',  70, 30.00),
  ('Jabón Líquido Orgánico',             'Jabón líquido 100% natural, sin empaques',               50, 22.00),
  ('Toalla de Algodón Orgánico',         'Toalla suave y resistente, 100% algodón orgánico',       40, 35.00),
  ('Esponja Natural de Luffa',           'Esponja biodegradable para baño, extraíble',             100, 8.00),
  ('Pasta Dental Natural',               'Pasta dental sin fluoruro y sin envase plástico',        120, 10.00),
  ('Gel de Ducha Natural',               'Gel de ducha con ingredientes 100% naturales',           90, 16.00),
  ('Aceite Corporal Orgánico',           'Aceite para el cuidado de la piel, sin aditivos químicos', 50, 28.00),
  ('Bálsamo Labial Natural',             'Protector labial a base de cera natural',               200, 5.00),
  ('Limpiador Multiusos Natural',        'Limpiador ecológico para el hogar sin químicos agresivos',100, 14.00),
  ('Detergente Ecológico en Barra',       'Detergente en barra, bajo en espuma y ecológico',         80, 18.00),
  ('Exfoliante Natural',                 'Exfoliante corporal con ingredientes naturales',         75, 20.00),
  ('Crema de Manos Orgánica',            'Crema hidratante para manos, sin empaque plástico',       150, 12.00);

-- 10 registros de hisotiral de membresia
INSERT INTO Historial_Membresias (id_client, fecha_inicio, fecha_fin) VALUES
  (1, '2025-01-01', '2025-12-31'),
  (2, '2025-03-01', '2025-09-30'),
  (3, '2024-01-01', '2024-12-31'),
  (5, '2025-02-15', '2025-08-15'),
  (6, '2025-04-01', '2025-10-01'),
  (8, '2025-05-01', '2025-11-01'),
  (10, '2024-06-01', '2024-12-01'),
  (11, '2025-01-15', '2025-07-15'),
  (13, '2025-03-10', '2025-09-10'),
  (15, '2025-02-01', '2025-08-01');

-- 30 registros
INSERT INTO Pedidos (id_cliente, id_direccion, id_estado, monto_total) VALUES
  (1, 1, 2, 40.00),
  (1, 2, 4, 36.00),
  (2, 3, 2, 7.50),
  (3, 4, 3, 65.00),
  (4, 5, 3, 30.00),
  (5, 6, 2, 32.00),
  (6, 7, 4, 36.00),
  (7, 8, 3, 30.00),
  (8, 9, 2, 22.00),
  (8, 9, 2, 35.00),
  (9, 10, 3, 16.00),
  (10, 11, 3, 30.00),
  (11, 12, 2, 44.00),
  (12, 13, 3, 10.00),
  (13, 14, 2, 14.00),
  (14, 15, 3, 56.00),
  (15, 16, 2, 12.00),
  (3, 17, 3, 30.00),
  (7, 18, 3, 30.50),
  (8, 19, 4, 20.00),
  (12, 20, 3, 19.50),
  (1, 1, 1, 40.00),
  (2, 3, 4, 18.00),
  (5, 6, 2, 60.00),
  (6, 7, 1, 57.00),
  (8, 9, 4, 28.00),
  (10, 11, 3, 16.00),
  (11, 12, 1, 43.00),
  (13, 14, 1, 46.00),
  (15, 16, 4, 64.00);

-- 43 registros
INSERT INTO Detalles_Pedido (id_pedido, id_producto, cantidad, precio) VALUES
  -- Pedido 1:
  (1, 1, 2, 16.00),
  (1, 3, 1, 10.00),
  -- Pedido 2:
  (2, 2, 1, 25.00),
  (2, 4, 2, 6.00),
  -- Pedido 3:
  (3, 5, 1, 7.50),
  -- Pedido 4:
  (4, 1, 1, 16.00),
  (4, 2, 2, 25.00),
  -- Pedido 5:
  (5, 3, 3, 10.00),
  -- Pedido 6:
  (6, 6, 1, 11.50),
  (6, 7, 1, 20.00),
  -- Pedido 7:
  (7, 8, 2, 18.00),
  -- Pedido 8:
  (8, 9, 1, 30.00),
  -- Pedido 9:
  (9, 10, 1, 22.00),
  -- Pedido 10:
  (10, 11, 1, 35.00),
  -- Pedido 11:
  (11, 12, 2, 8.00),
  -- Pedido 12:
  (12, 13, 3, 10.00),
  -- Pedido 13:
  (13, 14, 1, 16.00),
  (13, 15, 1, 28.00),
  -- Pedido 14:
  (14, 16, 2, 5.00),
  -- Pedido 15:
  (15, 17, 1, 14.00),
  -- Pedido 16:
  (16, 18, 2, 18.00),
  (16, 19, 1, 20.00),
  -- Pedido 17:
  (17, 20, 1, 12.00),
  -- Pedido 18:
  (18, 1, 2, 15.00),
  -- Pedido 19:
  (19, 2, 1, 25.00),
  (19, 4, 1, 5.50),
  -- Pedido 20:
  (20, 3, 2, 10.00),
  -- Pedido 21:
  (21, 5, 1, 7.50),
  (21, 6, 1, 12.00),
  -- Pedido 22:
  (22, 7, 2, 20.00),
  -- Pedido 23:
  (23, 8, 1, 18.00),
  -- Pedido 24:
  (24, 9, 2, 30.00),
  -- Pedido 25:
  (25, 10, 1, 22.00),
  (25, 11, 1, 35.00),
  -- Pedido 26:
  (26, 12, 1, 8.00),
  (26, 13, 2, 10.00),
  -- Pedido 27:
  (27, 14, 1, 16.00),
  -- Pedido 28:
  (28, 15, 1, 28.00),
  (28, 16, 3, 5.00),
  -- Pedido 29:
  (29, 17, 2, 14.00),
  (29, 18, 1, 18.00),
  -- Pedido 30:
  (30, 19, 2, 20.00),
  (30, 20, 2, 12.00);

-- 7 cambios hisotricos sobre productos
INSERT INTO Bitacora_Productos (id_producto, campo_modificado, valor_anterior, valor_nuevo, fecha_modificacion) VALUES
  (1, 'precio_actual', '15.00', '16.00', '2025-04-10 10:00:00'),
  (2, 'descripcion',   'Jabón hecho a mano sin empaque de plástico', 'Jabón artesanal 100% orgánico', '2025-04-11 11:00:00'),
  (3, 'cantidad',      '200', '195', '2025-04-12 09:30:00'),
  (4, 'precio_actual', '5.50', '6.00', '2025-04-13 14:20:00'),
  (5, 'cantidad',      '180', '170', '2025-04-14 08:15:00'),
  (6, 'precio_actual', '12.00', '11.50', '2025-04-15 12:00:00'),
  (7, 'descripcion',   'Champú en barra, sin empaques plásticos y ecológico', 'Champú sólido ecológico para todo tipo de cabello', '2025-04-16 15:45:00');

-- 7 cambios de inventario
INSERT INTO Bitacora_Inventario (id_producto, cantidad_antes, cantidad_despues, fecha_modificacion) VALUES
  (1, 150, 160, '2025-04-09 10:00:00'),
  (2, 80, 85, '2025-04-09 11:00:00'),
  (3, 200, 195, '2025-04-09 12:00:00'),
  (4, 300, 310, '2025-04-09 13:00:00'),
  (5, 180, 170, '2025-04-09 14:00:00'),
  (6, 90, 95, '2025-04-09 15:00:00'),
  (7, 60, 58, '2025-04-09 16:00:00');

-- 30 registros de historial de estados de pedido
INSERT INTO Historial_Estados_Pedido (id_pedido, id_estado_anterior, id_estado_nuevo, fecha_cambio) VALUES
  (1, 2, 4, '2025-04-11 10:00:00'),
  (2, 4, 1, '2025-04-12 09:00:00'),
  (3, 2, 1, '2025-04-13 11:30:00'),
  (4, 2, 3, '2025-04-10 08:00:00'),
  (5, 2, 3, '2025-04-10 09:00:00'),
  (6, 2, 4, '2025-04-11 12:00:00'),
  (7, 4, 1, '2025-04-12 14:00:00'),
  (8, 2, 3, '2025-04-10 15:00:00'),
  (9, 2, 4, '2025-04-11 16:00:00'),
  (10, 2, 3, '2025-04-11 17:00:00'),
  (11, 2, 3, '2025-04-12 08:00:00'),
  (12, 2, 1, '2025-04-12 09:30:00'),
  (13, 2, 3, '2025-04-12 10:00:00'),
  (14, 2, 4, '2025-04-13 11:00:00'),
  (15, 2, 3, '2025-04-13 12:00:00'),
  (16, 2, 4, '2025-04-13 13:00:00'),
  (17, 2, 3, '2025-04-14 09:00:00'),
  (18, 2, 3, '2025-04-14 10:00:00'),
  (19, 4, 1, '2025-04-14 11:00:00'),
  (20, 2, 3, '2025-04-14 12:00:00'),
  (21, 2, 1, '2025-04-15 10:00:00'),
  (22, 2, 4, '2025-04-15 11:00:00'),
  (23, 2, 1, '2025-04-15 12:00:00'),
  (24, 4, 1, '2025-04-15 13:00:00'),
  (25, 4, 1, '2025-04-15 14:00:00'),
  (26, 2, 3, '2025-04-15 15:00:00'),
  (27, 2, 1, '2025-04-15 16:00:00'),
  (28, 2, 1, '2025-04-15 17:00:00'),
  (29, 4, 1, '2025-04-15 18:00:00'),
  (30, 2, 3, '2025-04-15 19:00:00');