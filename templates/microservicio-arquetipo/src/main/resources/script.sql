CREATE DATABASE farmacias_promos;

CREATE TABLE proveedor (
id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(60) NOT NULL
);

CREATE TABLE cliente (
id INT(10) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP,
nombres VARCHAR(60) NOT NULL,
apaterno VARCHAR(60) NOT NULL,
amaterno VARCHAR(60) NOT NULL,
dni VARCHAR(8) NOT NULL,
celular VARCHAR(15) NOT NULL,
correo VARCHAR(100) NOT NULL,
comprobante VARCHAR(25) NOT NULL,
id_proveedor INT(10) UNSIGNED NOT NULL,
CONSTRAINT fk_proveedor FOREIGN KEY (id_proveedor) REFERENCES proveedor(id)
);

INSERT INTO proveedor (nombre) VALUES ('Abbott'),('Roche'); 