CREATE TABLE clientes(
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    correo VARCHAR(100) UNIQUE
);

CREATE TABLE empleados(
    id_empleado SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    cargo VARCHAR(50)
);

CREATE TABLE productos(
    id_producto SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    precio NUMERIC(10,2),
    stock INTEGER CHECK (stock >= 0)
);

CREATE TABLE ventas(
    id_venta SERIAL PRIMARY KEY,
    fecha DATE,
    id_cliente INTEGER,
    id_empleado INTEGER,
    FOREIGN KEY (id_cliente)
        REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_empleado)
        REFERENCES empleados(id_empleado)
);

CREATE TABLE detalle_venta(
    id_detalle SERIAL PRIMARY KEY,
    id_venta INTEGER,
    id_producto INTEGER,
    cantidad INTEGER,
    subtotal NUMERIC(10,2),
    FOREIGN KEY (id_venta)
        REFERENCES ventas(id_venta),
    FOREIGN KEY (id_producto)
        REFERENCES productos(id_producto)
);