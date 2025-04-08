
-- Los 4 que se dejaron pleanteados en el diseño 
INSERT INTO Estados (id, nombre) VALUES
  (1, 'Completado'),
  (2, 'Empaquetado'),
  (3, 'Cancelado'),
  (4, 'En Camino');


-- 15 registros
INSERT INTO Clientes (id, username, password, nit, dpi, telefono) VALUES
  (1, 'juan23',      'passJuan',   '123456789', '1234567890123', '555-0101'),
  (2, 'maria_l',     'passMaria',  '987654321', '9876543210987', '555-0102'),
  (3, 'carla88',     'passCarla',  '111222333', '1112223334444', '555-0103'),
  (4, 'pedro_g',     'passPedro',  '999888777', '9998887776666', '555-0104'),
  (5, 'luis99',      'passLuis',   '222333444', '2223334445556', '555-0105'),
  (6, 'ana_rojas',   'passAna',    '333444555', '3334445556667', '555-0106'),
  (7, 'carlos_s',    'passCarlos', '444555666', '4445556667778', '555-0107'),
  (8, 'susan_m',     'passSusan',  '555666777', '5556667778889', '555-0108'),
  (9, 'diego_k',     'passDiego',  '666777888', '6667778889990', '555-0109'),
  (10, 'karla_z',    'passKarla',  '777888999', '7778889990001', '555-0110'),
  (11, 'miguel_p',   'passMiguel', '888999000', '8889990001112', '555-0111'),
  (12, 'sofia_d',    'passSofia',  '999000111', '9990001112223', '555-0112'),
  (13, 'andres_v',   'passAndres', '123123123', '1231231234567', '555-0113'),
  (14, 'valeria_q',  'passValeria','321321321', '3213213216543', '555-0114'),
  (15, 'ricardo_x',  'passRicardo','456456456', '4564564567890', '555-0115');

-- 20 registros
INSERT INTO Cliente_Direcciones (id, id_client, direccion) VALUES
  (1, 1, 'Zona 1, Ciudad Guatemala'),
  (2, 1, 'Colonia Reforma, Ciudad Guatemala'),
  (3, 2, 'Avenida Las Américas, Antigua'),
  (4, 3, 'Zona 5, Ciudad Guatemala'),
  (5, 4, 'Barrio San Juan, Ciudad Guatemala'),
  (6, 5, 'Calle Real, Quetzaltenango'),
  (7, 6, 'Zona 10, Ciudad Guatemala'),
  (8, 7, 'Avenida Central, Ciudad Guatemala'),
  (9, 8, 'Sector 15, Mixco'),
  (10, 9, 'Zona 3, Ciudad Guatemala'),
  (11, 10, 'Colonia Los Alpes, Ciudad Guatemala'),
  (12, 11, 'Avenida La Reforma, Ciudad Guatemala'),
  (13, 12, 'Zona 2, Ciudad Guatemala'),
  (14, 13, 'Calle 12, Ciudad Guatemala'),
  (15, 14, 'Barrio El Centro, Ciudad Guatemala'),
  (16, 15, 'Zona 8, Ciudad Guatemala'),
  (17, 3, 'Avenida Siempre Viva 742, Ciudad Guatemala'),
  (18, 7, 'Colonia Loma Linda, Ciudad Guatemala'),
  (19, 8, 'Calle 7, Ciudad Guatemala'),
  (20, 12, 'Avenida Universidad, Ciudad Guatemala');

-- 20 productos registrados
INSERT INTO Productos (id, nombre, descripcion, cantidad, precio_actual) VALUES
  (1, 'Cepillo de Dientes de Bambú', 'Cepillo ecológico con mango 100% bambú', 150, 15.00),
  (2, 'Jabón Orgánico sin Empaque', 'Jabón hecho a mano sin empaque de plástico', 80, 25.00),
  (3, 'Bolsa Reutilizable de Tela', 'Bolsa resistente para compras, 100% tela orgánica', 200, 10.00),
  (4, 'Pajilla de Bambú', 'Pajilla ecológica, reutilizable, fabricada en bambú', 300, 5.50),
  (5, 'Pajilla de Acero Inoxidable', 'Pajilla duradera, lavable, de acero inoxidable', 180, 7.50),
  (6, 'Desodorante Natural en Barra', 'Desodorante sin aluminio y 100% natural en barra', 90, 12.00),
  (7, 'Champú Sólido Ecológico', 'Champú en barra, sin empaques plásticos y ecológico', 60, 20.00),
  (8, 'Acondicionador Sólido', 'Acondicionador en barra para cabellos sanos', 60, 18.00),
  (9, 'Crema Facial Orgánica', 'Crema hidratante elaborada con ingredientes orgánicos', 70, 30.00),
  (10, 'Jabón Líquido Orgánico', 'Jabón líquido 100% natural, sin empaques', 50, 22.00),
  (11, 'Toalla de Algodón Orgánico', 'Toalla suave y resistente, 100% algodón orgánico', 40, 35.00),
  (12, 'Esponja Natural de Luffa', 'Esponja biodegradable para baño, extraíble', 100, 8.00),
  (13, 'Pasta Dental Natural', 'Pasta dental sin fluoruro y sin envase plástico', 120, 10.00),
  (14, 'Gel de Ducha Natural', 'Gel de ducha con ingredientes 100% naturales', 90, 16.00),
  (15, 'Aceite Corporal Orgánico', 'Aceite para el cuidado de la piel, sin aditivos químicos', 50, 28.00),
  (16, 'Bálsamo Labial Natural', 'Protector labial a base de cera natural', 200, 5.00),
  (17, 'Limpiador Multiusos Natural', 'Limpiador ecológico para el hogar sin químicos agresivos', 100, 14.00),
  (18, 'Detergente Ecológico en Barra', 'Detergente en barra, bajo en espuma y ecológico', 80, 18.00),
  (19, 'Exfoliante Natural', 'Exfoliante corporal con ingredientes naturales', 75, 20.00),
  (20, 'Crema de Manos Orgánica', 'Crema hidratante para manos, sin empaque plástico', 150, 12.00);

-- 10 membresias registradas, variando entre activas y vencidas
INSERT INTO Historial_Membresias (id, id_client, fecha_inicio, fecha_fin) VALUES
  (1, 1, '2025-01-01', '2025-12-31'),   -- Activo
  (2, 2, '2025-03-01', '2025-09-30'),   -- Activo
  (3, 3, '2024-01-01', '2024-12-31'),   -- Vencido
  (4, 5, '2025-02-15', '2025-08-15'),   -- Activo
  (5, 6, '2025-04-01', '2025-10-01'),   -- Activo
  (6, 8, '2025-05-01', '2025-11-01'),   -- Activo
  (7, 10, '2024-06-01', '2024-12-01'),  -- Vencido
  (8, 11, '2025-01-15', '2025-07-15'),  -- Activo
  (9, 13, '2025-03-10', '2025-09-10'),  -- Activo
  (10, 15, '2025-02-01', '2025-08-01');  -- Activo

-- 30 registros, el monto_total se deja en 0.00, pues será ajustado por trigger
INSERT INTO Pedidos (id, id_cliente, id_direccion, id_estado, monto_total) VALUES
  (1, 1, 1, 2, 0.00),    -- Cliente 1 (activo)
  (2, 1, 2, 4, 0.00),
  (3, 2, 3, 2, 0.00),    -- Cliente 2 (activo)
  (4, 3, 4, 3, 0.00),    -- Cliente 3 (membresía vencida)
  (5, 4, 5, 3, 0.00),    -- Cliente 4 (sin membresía)
  (6, 5, 6, 2, 0.00),    -- Cliente 5 (activo)
  (7, 6, 7, 4, 0.00),    -- Cliente 6 (activo)
  (8, 7, 8, 3, 0.00),    -- Cliente 7 (sin membresía)
  (9, 8, 9, 2, 0.00),    -- Cliente 8 (activo)
  (10, 9, 10, 3, 0.00),   -- Cliente 9 (sin membresía)
  (11, 10, 11, 3, 0.00),  -- Cliente 10 (membresía vencida)
  (12, 11, 12, 2, 0.00),  -- Cliente 11 (activo)
  (13, 12, 13, 3, 0.00),  -- Cliente 12 (sin membresía)
  (14, 13, 14, 2, 0.00),  -- Cliente 13 (activo)
  (15, 14, 15, 3, 0.00),  -- Cliente 14 (sin membresía)
  (16, 15, 16, 2, 0.00),  -- Cliente 15 (activo)
  (17, 3, 17, 3, 0.00),   -- Cliente 3 (vencida)
  (18, 7, 18, 3, 0.00),   -- Cliente 7 (sin membresía)
  (19, 8, 19, 4, 0.00),   -- Cliente 8 (activo)
  (20, 12, 20, 3, 0.00),  -- Cliente 12 (sin membresía)
  (21, 1, 1, 1, 0.00),    -- Cliente 1 (activo)
  (22, 2, 3, 4, 0.00),    -- Cliente 2 (activo)
  (23, 5, 6, 2, 0.00),    -- Cliente 5 (activo)
  (24, 6, 7, 1, 0.00),    -- Cliente 6 (activo)
  (25, 8, 9, 4, 0.00),    -- Cliente 8 (activo)
  (26, 10, 11, 3, 0.00),  -- Cliente 10 (vencida)
  (27, 11, 12, 1, 0.00),  -- Cliente 11 (activo)
  (28, 13, 14, 1, 0.00),  -- Cliente 13 (activo)
  (29, 15, 16, 4, 0.00),  -- Cliente 15 (activo)
  (30, 9, 10, 3, 0.00);   -- Cliente 9 (sin membresía)

-- 43 registros
-- Se colocan los precios aunque se tengan en la tabla Productos
-- por lo planteado en el diseño, pues asi se preserva el precio con el que se haya
-- hecho la compra
INSERT INTO Detalles_Pedido (id, id_pedido, id_producto, cantidad, precio) VALUES
  -- Pedido 1:
  (1, 1, 1, 2, 15.00),
  (2, 1, 3, 1, 10.00),
  -- Pedido 2:
  (3, 2, 2, 1, 25.00),
  (4, 2, 4, 2, 5.50),
  -- Pedido 3:
  (5, 3, 5, 1, 7.50),
  -- Pedido 4:
  (6, 4, 1, 1, 15.00),
  (7, 4, 2, 2, 25.00),
  -- Pedido 5:
  (8, 5, 3, 3, 10.00),
  -- Pedido 6:
  (9, 6, 6, 1, 12.00),
  (10, 6, 7, 1, 20.00),
  -- Pedido 7:
  (11, 7, 8, 2, 18.00),
  -- Pedido 8:
  (12, 8, 9, 1, 30.00),
  -- Pedido 9:
  (13, 9, 10, 1, 22.00),
  -- Pedido 10:
  (14, 10, 11, 1, 35.00),
  -- Pedido 11:
  (15, 11, 12, 2, 8.00),
  -- Pedido 12:
  (16, 12, 13, 3, 10.00),
  -- Pedido 13:
  (17, 13, 14, 1, 16.00),
  (18, 13, 15, 1, 28.00),
  -- Pedido 14:
  (19, 14, 16, 2, 5.00),
  -- Pedido 15:
  (20, 15, 17, 1, 14.00),
  -- Pedido 16:
  (21, 16, 18, 2, 18.00),
  (22, 16, 19, 1, 20.00),
  -- Pedido 17:
  (23, 17, 20, 1, 12.00),
  -- Pedido 18:
  (24, 18, 1, 2, 15.00),
  -- Pedido 19:
  (25, 19, 2, 1, 25.00),
  (26, 19, 4, 1, 5.50),
  -- Pedido 20:
  (27, 20, 3, 2, 10.00),
  -- Pedido 21:
  (28, 21, 5, 1, 7.50),
  (29, 21, 6, 1, 12.00),
  -- Pedido 22:
  (30, 22, 7, 2, 20.00),
  -- Pedido 23:
  (31, 23, 8, 1, 18.00),
  -- Pedido 24:
  (32, 24, 9, 2, 30.00),
  -- Pedido 25:
  (33, 25, 10, 1, 22.00),
  (34, 25, 11, 1, 35.00),
  -- Pedido 26:
  (35, 26, 12, 1, 8.00),
  (36, 26, 13, 2, 10.00),
  -- Pedido 27:
  (37, 27, 14, 1, 16.00),
  -- Pedido 28:
  (38, 28, 15, 1, 28.00),
  (39, 28, 16, 3, 5.00),
  -- Pedido 29:
  (40, 29, 17, 2, 14.00),
  (41, 29, 18, 1, 18.00),
  -- Pedido 30:
  (42, 30, 19, 2, 20.00),
  (43, 30, 20, 2, 12.00);

-- 7 registros de productos modificados
INSERT INTO Bitacora_Productos (id, id_producto, campo_modificado, valor_anterior, valor_nuevo, fecha_modificacion) VALUES
  (1, 1, 'precio_actual', '15.00', '16.00', '2025-04-10 10:00:00'),
  (2, 2, 'descripcion', 'Jabón hecho a mano sin empaque de plástico', 'Jabón artesanal 100% orgánico', '2025-04-11 11:00:00'),
  (3, 3, 'cantidad', '200', '195', '2025-04-12 09:30:00'),
  (4, 4, 'precio_actual', '5.50', '6.00', '2025-04-13 14:20:00'),
  (5, 5, 'cantidad', '180', '170', '2025-04-14 08:15:00'),
  (6, 6, 'precio_actual', '12.00', '11.50', '2025-04-15 12:00:00'),
  (7, 7, 'descripcion', 'Champú en barra para cabello, sin plásticos', 'Champú sólido ecológico para todo tipo de cabello', '2025-04-16 15:45:00');

-- Cambios en inventario
INSERT INTO Bitacora_Inventario (id, id_producto, cantidad_antes, cantidad_despues, fecha_modificacion) VALUES
  (1, 1, 150, 160, '2025-04-09 10:00:00'),
  (2, 2, 80, 85, '2025-04-09 11:00:00'),
  (3, 3, 200, 190, '2025-04-09 12:00:00'),
  (4, 4, 300, 310, '2025-04-09 13:00:00'),
  (5, 5, 180, 175, '2025-04-09 14:00:00'),
  (6, 6, 90, 95, '2025-04-09 15:00:00'),
  (7, 7, 60, 58, '2025-04-09 16:00:00');

-- 30 registros sobre cambiso en el historial de pedidos
INSERT INTO Historial_Estados_Pedido (id, id_pedido, id_estado_anterior, id_estado_nuevo, fecha_cambio) VALUES
  (1, 1, 2, 4, '2025-04-11 10:00:00'),
  (2, 2, 4, 1, '2025-04-12 09:00:00'),
  (3, 3, 2, 1, '2025-04-13 11:30:00'),
  (4, 4, 2, 3, '2025-04-10 08:00:00'),
  (5, 5, 2, 3, '2025-04-10 09:00:00'),
  (6, 6, 2, 4, '2025-04-11 12:00:00'),
  (7, 7, 4, 1, '2025-04-12 14:00:00'),
  (8, 8, 2, 3, '2025-04-10 15:00:00'),
  (9, 9, 2, 4, '2025-04-11 16:00:00'),
  (10, 10, 2, 3, '2025-04-11 17:00:00'),
  (11, 11, 2, 3, '2025-04-12 08:00:00'),
  (12, 12, 2, 1, '2025-04-12 09:30:00'),
  (13, 13, 2, 3, '2025-04-12 10:00:00'),
  (14, 14, 2, 4, '2025-04-13 11:00:00'),
  (15, 15, 2, 3, '2025-04-13 12:00:00'),
  (16, 16, 2, 4, '2025-04-13 13:00:00'),
  (17, 17, 2, 3, '2025-04-14 09:00:00'),
  (18, 18, 2, 3, '2025-04-14 10:00:00'),
  (19, 19, 4, 1, '2025-04-14 11:00:00'),
  (20, 20, 2, 3, '2025-04-14 12:00:00'),
  (21, 21, 2, 1, '2025-04-15 10:00:00'),
  (22, 22, 2, 4, '2025-04-15 11:00:00'),
  (23, 23, 2, 1, '2025-04-15 12:00:00'),
  (24, 24, 4, 1, '2025-04-15 13:00:00'),
  (25, 25, 4, 1, '2025-04-15 14:00:00'),
  (26, 26, 2, 3, '2025-04-15 15:00:00'),
  (27, 27, 2, 1, '2025-04-15 16:00:00'),
  (28, 28, 2, 1, '2025-04-15 17:00:00'),
  (29, 29, 4, 1, '2025-04-15 18:00:00'),
  (30, 30, 2, 3, '2025-04-15 19:00:00');