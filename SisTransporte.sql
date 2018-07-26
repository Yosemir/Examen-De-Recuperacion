create database Transporte
go

use Transporte
go

CREATE TABLE Cliente (
    diBoleta int identity(1,1),
    nomClien varchar(100) ,
    apeClien varchar(100) ,
    tipoDoc varchar(1) ,
    docClien varchar(9) ,
    nroBoleta varchar(7) ,
    ruc varchar(11) ,
    fechaReserva datetime ,
    fechaDeViaje datetime ,
    fechaPosterga datetime ,
    tipoServicio char(1) ,
    nroAsientos int ,
    Cantidad int ,
    CONSTRAINT Cliente_pk PRIMARY KEY  (diBoleta)
);
go
-- Table: DetBoleta
CREATE TABLE DetBoleta (
    idDetalle int identity(1,1),
    Cliente_diBoleta int ,
    Personal_idcperso int ,
    CONSTRAINT DetBoleta_pk PRIMARY KEY  (idDetalle)
);
go
-- Table: Personal
CREATE TABLE Personal (
    idcperso int identity(1,1),
    nomPerso varchar(100) ,
    apeperso varchar(100) ,
    tipoDoc varchar(3) ,
    dniperso varchar(9) ,
    nroCelularperso varchar(9) ,
    direcPerso varchar(100) ,
    tipoPerson char(3) ,
    buses_idbuses int ,
    CONSTRAINT Personal_pk PRIMARY KEY  (idcperso)
);
go
-- Table: buses
CREATE TABLE buses (
    idbuses int identity(1,1),
    nroPlaca varchar(12) ,
    modeloBuses varchar(30) ,
    marcaBuses varchar(30) ,
    estBuses char(1) ,
    rutas_idrutas int ,
    CONSTRAINT buses_pk PRIMARY KEY  (idbuses)
);
go
-- Table: rutas
CREATE TABLE rutas (
    idrutas int identity(1,1),
    nomRutas varchar(30) ,
    sucursales_idSuscur int ,
    CONSTRAINT rutas_pk PRIMARY KEY  (idrutas)
);
go
-- Table: sucursales
CREATE TABLE sucursales (
    idSuscur int identity(1,1),
    nomSucur varchar(30) ,
    CONSTRAINT sucursales_pk PRIMARY KEY  (idSuscur)
);
go


