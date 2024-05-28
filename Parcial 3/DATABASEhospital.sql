CREATE DATABASE hospital;
USE hospital;

CREATE TABLE pacientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    genero ENUM('M', 'F') NOT NULL,
    direccion VARCHAR(255),
    telefono VARCHAR(15)
);

CREATE TABLE doctores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    especialidad VARCHAR(100) NOT NULL,
    telefono VARCHAR(15)
);

CREATE TABLE citas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_paciente INT,
    id_doctor INT,
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    motivo TEXT,
    FOREIGN KEY (id_paciente) REFERENCES pacientes(id),
    FOREIGN KEY (id_doctor) REFERENCES doctores(id)
);




CREATE TABLE habitaciones (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL,
    tipo ENUM('Individual', 'Doble', 'Suite') NOT NULL,
    estado ENUM('Disponible', 'Ocupada') NOT NULL
);

INSERT INTO pacientes (nombre, apellido, fecha_nacimiento, genero, direccion, telefono) VALUES
('Juan', 'Pérez', '1985-06-15', 'M', 'Calle Falsa 123', '555-1234'),
('Ana', 'Gómez', '1990-09-20', 'F', 'Avenida Siempre Viva 742', '555-5678');

INSERT INTO doctores (nombre, apellido, especialidad, telefono) VALUES
('Carlos', 'Lopez', 'Cardiología', '555-8765'),
('María', 'Martinez', 'Pediatría', '555-4321');

INSERT INTO citas (id_paciente, id_doctor, fecha, hora, motivo) VALUES
(1, 1, '2024-06-01', '10:00:00', 'Chequeo general'),
(2, 2, '2024-06-02', '11:00:00', 'Consulta de pediatría');

INSERT INTO habitaciones (numero, tipo, estado) VALUES
(101, 'Individual', 'Disponible'),
(102, 'Doble', 'Ocupada');


---Todo dentro de esta misma db

---Realizar los log los cuales guardan la informacion de errores del servidor 
----y problemas causados por alguna funcion

----Crecion de indices 