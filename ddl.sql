CREATE TABLE Clientes (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL,
    nit VARCHAR(9) NOT NULL,
    dpi VARCHAR(13) NOT NULL,
    telefono VARCHAR(20) NOT NULL
);


CREATE TABLE Cliente_Direcciones (
    id SERIAL PRIMARY KEY,
    id_client INT NOT NULL REFERENCES Clientes(id),
    direccion VARCHAR(255) NOT NULL
);


CREATE TABLE Productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(150) NOT NULL,
    cantidad INT NOT NULL DEFAULT 0,
    precio_actual NUMERIC(8, 2) NOT NULL DEFAULT 0
        CHECK (precio_actual >= 0)   -- Evitar valores negativos
);


CREATE TABLE Historial_Membresias (
    id SERIAL PRIMARY KEY,
    id_client INT NOT NULL REFERENCES Clientes(id),
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE NOT NULL
);


CREATE TABLE Estados (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(20) NOT NULL
);


CREATE TABLE Pedidos (
    id SERIAL PRIMARY KEY,
    id_cliente INT NOT NULL REFERENCES Clientes(id),
    id_direccion INT NOT NULL REFERENCES Cliente_Direcciones(id),
    id_estado INT NOT NULL REFERENCES Estados(id),
    monto_total NUMERIC(8, 2) NOT NULL
        CHECK (monto_total >= 0) -- Evitar valores negativos
);


CREATE TABLE Detalles_Pedido (
    id SERIAL PRIMARY KEY,
    id_pedido INT NOT NULL REFERENCES Pedidos(id),
    id_producto INT NOT NULL REFERENCES Productos(id),
    cantidad INT NOT NULL,
    precio NUMERIC(8, 2) NOT NULL CHECK (precio >= 0) -- Evitar valores negativos
);



CREATE TABLE Bitacora_Productos (
    id SERIAL PRIMARY KEY,
    id_producto INT NOT NULL REFERENCES Productos(id),
    campo_modificado VARCHAR(50) NOT NULL, -- nombre, descripcion, cantidad, etc.
    valor_anterior VARCHAR(255) NOT NULL,
    valor_nuevo VARCHAR(255) NOT NULL,
    fecha_modificacion TIMESTAMP NOT NULL
);


CREATE TABLE Bitacora_Inventario (
    id SERIAL PRIMARY KEY,
    id_producto INT NOT NULL REFERENCES Productos(id),
    cantidad_antes INT NOT NULL,
    cantidad_despues INT NOT NULL,
    fecha_modificacion TIMESTAMP NOT NULL
);


CREATE TABLE Historial_Estados_Pedido (
    id SERIAL PRIMARY KEY,
    id_pedido INT NOT NULL REFERENCES Pedidos(id),
    id_estado_anterior INT NOT NULL REFERENCES Estados(id),
    id_estado_nuevo INT NOT NULL REFERENCES Estados(id),
    fecha_cambio TIMESTAMP NOT NULL
);