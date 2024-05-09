CREATE DATABASE TallerMecanico;

USE TallerMecanico;

CREATE TABLE Sucursales (
    id_sucursal INT ,
    nombre VARCHAR(100),
    direccion VARCHAR(255),
    telefono VARCHAR(15)
);

CREATE TABLE Clientes (
    id_cliente INT ,
    nombre VARCHAR(100),
    telefono VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE Automovil (
    id_automovil INT ,
    id_cliente INT,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    año INT
);

CREATE TABLE Empleados (
    id_empleado INT ,
    id_sucursal INT,
    nombre VARCHAR(100),
    telefono VARCHAR(15),
    email VARCHAR(100),
    cargo VARCHAR(50)
);

CREATE TABLE Facturas (
    id_factura INT ,
    id_cliente INT,
    id_empleado INT,
    fecha DATE,
    total DECIMAL(10, 2)
);

CREATE TABLE Proveedores (
    id_proveedor INT ,
    nombre VARCHAR(100),
    telefono VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE Repuestos (
    id_repuesto INT ,
    nombre VARCHAR(100),
    precio DECIMAL(10, 2)
);
