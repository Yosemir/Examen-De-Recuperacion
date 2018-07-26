--stored procedure
create procedure sp_insert
@nomPerso varchar(50),
@apeperso varchar(50),
@tipodoc varchar(1),
@dniperso varchar(9),
@nroCelularperso varchar(9),
@direcPerso varchar(100),
@tipoPerson varchar (3)
as
begin 
insert into personal (nomPerso,apeperso,tipoDoc,dniperso,nroCelularperso,direcPerso,tipoPerson) values (@nomPerso,@apeperso,@tipodoc,@dniperso,@nroCelularperso,@direcPerso,@tipoPerson);
end 
go

exec sp_insert @nomPerso = 'sadasd',@apeperso = 'asdafs',@tipodoc ='DNI',@dniperso ='12345678',@nroCelularperso ='132456789',@direcPerso ='SADASFASF',@tipoPerson ='CON'
go

create procedure sp_update
@idcperso int,
@nomPerso varchar(50),
@apeperso varchar(50),
@tipodoc varchar(1),
@dniperso varchar(9),
@nroCelularperso varchar(9),
@direcPerso varchar(100),
@tipoPerson varchar (3)
as
begin 
update personal set nomPerso=@nomPerso,apeperso=@apeperso,tipoDoc=@tipodoc,dniperso=@dniperso,nroCelularperso=@nroCelularperso,direcperso=@direcPerso,tipoPerson=@tipoPerson where idcperso=@idcperso
end
go

exec sp_update @nomPerso = 'Yosemir',@apeperso = 'Lermo',@tipodoc ='DNI',@dniperso ='12345678',@nroCelularperso ='132456789',@direcPerso ='SADASFASF',@tipoPerson ='CON' where @idcperso
go

create procedure sp_select
as
begin 
select * from personal
end
go

create procedure sp_delete
@idcperso int 
as
begin 
delete from personal where idcperso = @idcperso
end

exec sp_delete @idcperso ='1'


--Vistas
select nomPerso,apeperso,dniperso,direcPerso,nroPlaca,marcaBuses,nomRutas,nomSucur from Personal 
inner join buses on buses.idBuses = personal.buses_idbuses 
inner join rutas on rutas.idrutas = buses.rutas_idrutas
inner join sucursales on sucursales.idSuscur = rutas.sucursales_idSuscur