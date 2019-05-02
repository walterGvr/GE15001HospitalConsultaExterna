
/*-------------------------------------------------CREANDO BASE DE DATOS----------------------------------------------------------------------- */

CREATE DATABASE  ConsultaExterna;
USE ConsultaExterna;

/*------------------------------------------------CREANDO TABLAS-------------------------------*/
CREATE TABLE Paciente (
	codPaciente int, nombrePaciente varchar(50),
	primerApellidoPaciente varchar (50), segundoApellidoPaciente varchar(50),
	apellidoCasadaPaciente varchar(50), fechaNacimientoPaciente date, 
	generoPaciente varchar (5), duiPaciente int
);


CREATE TABLE ConsultaExterna (
	codConsulExterna int, diagConsulExterna varchar (200),
	razonConsultaExterna varchar(200), refConsultaExterna int,
	fechaConsultaExterna date, horaConsultaExterna time,
	codPaciente int
);

CREATE TABLE SignosVitales (
	codSignosVitales int, pasSignosVitales int,
	fcsSignosVitales int, tempSignosVitales int,
	pesoSignosVitales int, estaturaSignosVitales int,
	codPaciente int
);

CREATE TABLE HistoriaClinica (
	codHistoClinico int, numHistoriaClinica int ,codConsultaExterna int
);

CREATE TABLE  Expediente (
	codExpediente int, numExpediente int ,codHistoClinico int
);

/*-----------------------------------------------------------INSERTANDO REGISTROS------------------------------------------------------------------*/
select * from Paciente;
INSERT INTO Paciente (
	codPaciente, nombrePaciente, primerApellidoPaciente, 
	segundoApellidoPaciente, apellidoCasadaPaciente, fechaNacimientoPaciente,
	generoPaciente, duiPaciente
	) 
VALUES 
	(1, 'walter','guevara','escobar','NO','1997-03-04','M', 543210945),
	(2, 'maria','elizabeth','funes','de zarceño','1900-04-08','F', 7765467),
	(3,'henry','anuel','zuñiga','NO','1880-07-12','M', 23456789),
	(4,'merlina','asucena','gomez','NO','1996-05-11','F', 567899),
	(5,'jose','alfredo','ferreira','NO','1994-04-06','M', 9876598),
	(6,'manuel','gilberto','torres','NO','1995-11-10','M',0987698),
	(7,'marilin','meliza','guerra','NO','1880-07-12','F',5647839),
	(8,'paty','paola','ramos','de flores','1997-09-16','F',678987),
	(9,'yessenia','carolina','henriquez','NO','1996-05-11','F',096789),
	(10,'jorge','miguel','arfuñez','NO','1996-05-11','M',234567);


select * from ConsultaExterna;
INSERT INTO  ConsultaExterna (
	codConsulExterna, diagConsulExterna, razonConsultaExterna,
	refConsultaExterna, fechaConsultaExterna, horaConsultaExterna,
	codPaciente
)
VALUES
	(1,'gripe','mocosera',1,'2018-06-03', '14:53:59' , 1),
	(2,'alergia','manchas en la piel',543,'2018-06-03', '15:53:59', 2),
	(3,'conjuntibistis','ojos rojos',53,'2018-06-03','16:53:59', 3),
	(4,'renitis','ddolor en la nariz',89,'2018-06-03', '17:53:59', 4),
	(5,'fractura','brazo quebrado',655,'2018-06-03','18:53:59',5),
	(6,'infeccion en las vias urinarias','dolor al hacer pis',78,'2018-06-03','19:53:59',6),
	(7,'paro cardiaco','dolor en el corazon',567,'2018-06-03','20:53:59',7),
	(8,'pulmonia','tos bien fe',509,'2018-06-03','21:53:59',8),
	(9,'gripe','tos',923,'2018-06-03','22:53:59',9),
	(10,'gripe','calentura',90,'2018-06-03','22:53:59',10);

INSERT INTO SignosVitales (
	codSignosVitales, pasSignosVitales, fcsSignosVitales,
	tempSignosVitales, pesoSignosVitales, estaturaSignosVitales,
	codPaciente
)
VALUES
	(1,190,56,37,180,1.70),
	(2,170,54,40,170,2.01),
	(3,160,25,39,160,1.60),
	(4,144,58,32,170,1.70),
	(5,123,98,37,130,1.80),
	(6,15,27,37,200,1.70),
	(7,176,65,35,120,1.40),
	(8,137,45,32,130,1.50),
	(9,234,23,39,160,1.70),
	(10,123,45,37,110,1.60);


INSERT INTO Expediente (
	codExpediente, numExpediente ,codHistoClinico
)
VALUES
	(1,26,1),
	(2,234,2),
	(3,165,3),
	(4,246,4),
	(5,08,5),
	(6,178,6),
	(7,87,7),
	(8,65,8),
	(9,16,9),
	(10,156,10);

INSERT INTO HistoriaClinica (
	codHistoClinico, numHistoriaClinica, codConsultaExterna
)
VALUES
	(1,173,1),
	(2,189,2),
	(3,63,3),
	(4,25,4),
	(5,256,5),
	(6,63,6),
	(7,26,7),
	(8,26,8),
	(9,28,9),
	(10,984,10);