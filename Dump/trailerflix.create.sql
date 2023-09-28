CREATE TABLE `genero` (
	`id_genero` numeric(17) NOT NULL,
	`descripcion` varchar(100) NOT NULL,
	PRIMARY KEY (`id_genero`)
);

CREATE TABLE `reparto` (
	`id_reparto` numeric(17) NOT NULL,
	`nombre` varchar(100) NOT NULL,
	PRIMARY KEY (`id_reparto`)
);

CREATE TABLE `categoria` (
	`id_categoria` numeric(17) NOT NULL,
	`descripcion` varchar(100) NOT NULL,
	PRIMARY KEY (`id_categoria`)
);

CREATE TABLE `catalogo` (
	`id_catalogo` numeric(17) NOT NULL,
	`poster` varchar(255) NOT NULL,
	`titulo` varchar(100) NOT NULL,
	`id_categoria` numeric(17) NOT NULL,
	`resumen` varchar(255) NOT NULL,
	`temporadas` int NOT NULL,
	`trailer` varchar(255) NOT NULL,
	PRIMARY KEY (`id_catalogo`),
	CONSTRAINT `catalogo_fk0` FOREIGN KEY (`id_categoria`) REFERENCES `categoria`(`id_categoria`)
);


CREATE TABLE `catalogo_genero` (
	`id_catalogo_genero` numeric(17) NOT NULL,
	`id_catalogo` numeric(17) NOT NULL,
	`id_genero` numeric(17) NOT NULL,
	PRIMARY KEY (`id_catalogo_genero`),
	CONSTRAINT `catalogo_genero_fk0` FOREIGN KEY (`id_catalogo`) REFERENCES `catalogo`(`id_catalogo`),
	CONSTRAINT `catalogo_genero_fk1` FOREIGN KEY (`id_genero`) REFERENCES `genero`(`id_genero`)
);

CREATE TABLE `catalogo_reparto` (
	`id_catalogo_reparto` numeric(17) NOT NULL,
	`id_catalogo` numeric(17) NOT NULL,
	`id_reparto` numeric(17) NOT NULL,
	PRIMARY KEY (`id_catalogo_reparto`),
	CONSTRAINT `catalogo_reparto_fk0` FOREIGN KEY (`id_catalogo`) REFERENCES `catalogo`(`id_catalogo`),
	CONSTRAINT `catalogo_reparto_fk1` FOREIGN KEY (`id_reparto`) REFERENCES `reparto`(`id_reparto`)
);
