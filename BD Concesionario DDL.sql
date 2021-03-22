create database Consecionario;
use  Consecionario;

-- CREAR TABLAS

create table tipo_documento (
t_documento varchar(3) not null,
desc_documento varchar(40) not null,
primary key(t_documento)
);

create table roles (
rol_usu varchar (20) not null,
primary key (rol_usu)
);

create table usuarios (
documento_usu varchar(20) not null,
p_nombre_usu  varchar(15) not null,
s_nombre_usu  varchar(15),
p_apellido_usu  varchar(15) not null,
s_apellido_usu  varchar(15),
telefono bigint(15),
correo varchar(35),
usuario varchar(20) not null unique,
contras varchar (20) not null unique,
fkpk_rol_usu varchar(20) not null,
fkpk_t_documento varchar(3) not null,
primary key (documento_usu,fkpk_t_documento)
);

create table administradores (
codigo_admin int(6) zerofill  auto_increment unique ,
fkpk_usu_documen varchar(20) not null,
fkpk_tipo_documen varchar(3) not null,
primary key(fkpk_usu_documen,fkpk_tipo_documen)
);

create table clientes (
fkpk_usu_documen varchar(20) not null,
fkpk_tipo_documen varchar(3) not null,
primary key(fkpk_usu_documen,fkpk_tipo_documen)
);

create table sucursales (
codigo_sucursal varchar(8) not null,
nom_sucursal varchar(20) not null,
desc_sucursal varchar(45) not null,
fkpk_admin_usu_documen varchar(20) not null ,
fkpk_admin_tipo_documen varchar(3) not null ,
primary key(codigo_sucursal)
);

/* Profe aca necesitamos su ayuda con respecto a subir imagenes en la BD esque no savemos como se insertan. Buscando por internet decia 
que el dato tiene que ser de tipo blod y asi lo colocamos, obiamente ese campo no lo queremos dejar nulo sino que lo cambiamos para hacer otras 
pruebas entonces aver si nos puedes ayudar con esa parte por favor

Nota: el campo estado vehiculo permitira dos valores:
1 si el vehiculo esta a la venta
2 si el vehiculo fue vendido

con ello solo mostramos los vehiculos que no se han vendido y los otros los mantenemos en la bd sin borrarlos
*/
create table vehiculos (
placa_vehiculo varchar(8) not null,
marca_vehiculo varchar(15) not null,
linea_vehiculo varchar(15) not null,
modelo_vehiculo int(4) not null,
color_vehiculo varchar(15) not null,
imagen_vehiculo varchar(200) not null ,
estado_vehiculo tinyint not null,
fk_cod_sucursal  varchar(8) not null,
primary key(placa_vehiculo)
);

create table facturas (
cod_factura int(11) auto_increment not null,
fecha_compra date not null,
precio_vehiculo bigint(15) not null,
fk_placa_vehiculo varchar(8)not null,
fkpk_clien_docum varchar(20) not null,
fkpk_client_tipo_docum varchar(3) not null,
primary key(cod_factura)

);

-- ALTERAR TABLAS

alter table usuarios
add constraint fkpk_tipodoc_usuarios
foreign key (fkpk_t_documento)
references tipo_documento(t_documento)
on delete cascade
on update cascade;

alter table usuarios
add constraint fkpk_rol_usuarios
foreign key (fkpk_rol_usu)
references roles(rol_usu)
on delete cascade
on update cascade;


alter table administradores
add constraint fkpk_usu_tipo_admin foreign key (fkpk_usu_documen,fkpk_tipo_documen)
references usuarios(documento_usu,fkpk_t_documento)
on delete cascade;

alter table clientes
add constraint fkp_usu_tipo_cli  foreign key (fkpk_usu_documen,fkpk_tipo_documen)
references usuarios(documento_usu,fkpk_t_documento)
on delete cascade;

alter table sucursales
add constraint fkp_usu_tipo_sucu  foreign key (fkpk_admin_usu_documen,fkpk_admin_tipo_documen)
references administradores(fkpk_usu_documen,fkpk_tipo_documen)
on delete cascade;

alter table vehiculos
add constraint fk_codi_sucur_vehi foreign key(fk_cod_sucursal)
references sucursales(codigo_sucursal)
on delete cascade
on update cascade;
;

alter table facturas
add constraint fk_pla_vehi_factu foreign key (fk_placa_vehiculo)
references vehiculos(placa_vehiculo)
on delete cascade
on update cascade;

alter table facturas
add constraint fk_usu_tipo_cli_factu foreign key (fkpk_clien_docum,fkpk_client_tipo_docum)
references clientes(fkpk_usu_documen,fkpk_tipo_documen)
on delete cascade;


-- ELIMINAR TABLAS

drop table tipo_documento;

drop table roles;

drop table usuarios;

drop table administradores;

drop table clientes;

drop table sucursales;

drop table vehiculos;

drop table facturas;









