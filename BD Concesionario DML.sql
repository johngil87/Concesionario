/* Esta instruccion permite usar la clausula  (delete from nombretabla) ya que por defecto no nos lo permite por seguridad. 
Si queremos volver a  activarla cambiaremos el valor a 1.
*/
# Nos permite eliminar 
set SQL_SAFE_UPDATES=0;
# No nos permite eliminar
set SQL_SAFE_UPDATES=1;



/* TABLA TIPO DOCUMENTO */

-- Mostrar Datos
select * from tipo_documento;

-- Insertar Datos
INSERT INTO tipo_documento (t_documento, desc_documento) VALUES ('CC', 'Cedula de Ciudadania');
INSERT INTO tipo_documento (t_documento, desc_documento) VALUES ('CE', 'Cedula de Extranjeria');
INSERT INTO tipo_documento (t_documento, desc_documento) VALUES ('NIP', 'Numero de Identificacion Personal');
INSERT INTO tipo_documento (t_documento, desc_documento) VALUES ('NIT', 'Numero de Identificacion Tributaria');

-- Actualizar en cascada
update tipo_documento set t_documento = 'Ti' where t_documento = 'CC';

-- Eliminar Datos en cascada
delete from tipo_documento;

/* TABLA ROLES */

-- Mostrar Datos
select * from roles;

-- Insertar Datos
INSERT INTO roles (rol_usu) VALUES ('Administrador');
INSERT INTO roles (rol_usu) VALUES ('Cliente');

-- Actualizar en cascada
update roles set rol_usu = 'empleado' where rol_usu = 'Administrador';

-- Eliminar Datos en cascada
delete from roles;

/* TABLA USUARIOS */

-- Mostrar Datos
select * from usuarios;

select * from usuarios where documento_usu = '1000571915' and  fkpk_t_documento = 'CE';

-- Insertar Datos
INSERT INTO usuarios (documento_usu, p_nombre_usu, s_nombre_usu, p_apellido_usu, s_apellido_usu, telefono, correo, usuario, contras, fkpk_rol_usu, fkpk_t_documento)
VALUES ('1000571915', 'Carlos', 'Andres', 'Melo', 'Martinez', '3144192293', 'carlosandres98707@gmail.com','carlos07', '1234', 'Administrador', 'CC');
INSERT INTO usuarios (documento_usu, p_nombre_usu,  p_apellido_usu,  telefono, correo, usuario, contras, fkpk_rol_usu, fkpk_t_documento)
VALUES ('2257812', 'Mikel', 'Smith', '3002276584', 'mikel05@hotmail.com', 'mikelito', '10547', 'Administrador', 'CE');
INSERT INTO usuarios (documento_usu, p_nombre_usu,  p_apellido_usu,  telefono, correo, usuario, contras, fkpk_rol_usu, fkpk_t_documento)
VALUES ('100571915', 'Paula', 'Andrea', '2554848', 'paulira@hotmail.com', 'pao', '108484', 'Administrador', 'CE');
INSERT INTO usuarios (documento_usu, p_nombre_usu,  p_apellido_usu,  telefono, correo, usuario, contras, fkpk_rol_usu, fkpk_t_documento)
VALUES ('2257812', 'Gerardo', 'Ramirez', '3152779103', 'gerardo32@gmail.com', 'gerardo15', 'soygerardoxd',  'Cliente', 'NIT');
INSERT INTO usuarios (documento_usu, p_nombre_usu, s_nombre_usu, p_apellido_usu, s_apellido_usu, telefono, correo, usuario, contras, fkpk_rol_usu, fkpk_t_documento)
VALUES ('00158842', 'Maria', 'Alejandra', 'Rodriguez', 'Galindo', '3228604154', 'marima@gmail.com', 'alejac', '582356', 'Cliente', 'NIP');
INSERT INTO usuarios (documento_usu, p_nombre_usu, s_nombre_usu, p_apellido_usu, s_apellido_usu, telefono, correo, usuario, contras, fkpk_rol_usu, fkpk_t_documento)
VALUES ('00158842', 'Rauw', 'Alejandro', 'Ozuna', 'Ramiro', '3158702260', 'mraubaby@gmail.com', 'soyrauw', 'obaby', 'Cliente', 'CC');

-- Eliminar Datos en cascada
delete from usuarios ;

/* TABLA ADMINISTRADORES */

-- Mostrar Datos
select * from administradores;

/* Iner Join para verificar usuario contraseña y codigo del administrador.Esta sentencia la usaremos en el formulario del
administrador para el login correspondiente, si las filas devueltas son igual a cero quiere decir que el administrador no 
existe o que ha ingresado algun dato erroneamente y no le permitira ingresar. Caso contrario si los  tres datos coinciden y 
existen en la base de datos.
 */
select usuario,contras from administradores
inner join usuarios on administradores.fkpk_usu_documen = usuarios.documento_usu
and administradores.fkpk_tipo_documen = usuarios.fkpk_t_documento  where codigo_admin ='000001' and usuario='carlos07' and contras='1234' ;


-- Insertar Datos

/* En este instert traemos todos los valores de la tabla usuario que coincidan con el rol Administrador y los insertamos en nuestra tabla
de administradores.De esta forma evitamos insertar uno a uno cada administrador registrado en la tabla usuarios. Nota: Usamos la sentencia
on duplicate key update ya que cada que ejecutemos nuestra sentencia nos volvera a insertar a los administradores que ya se an colocado en la 
tabla y esto nos arrojaria un error, lo que hace dicho comando es actualizar los datos que ya se encuentran en la tabla y los que no se encuentren
los inserta automaticamente.
*/
INSERT INTO administradores ( fkpk_usu_documen, fkpk_tipo_documen) 
 select documento_usu, fkpk_t_documento from usuarios where fkpk_rol_usu = "Administrador" on duplicate key update
 fkpk_usu_documen = documento_usu, fkpk_tipo_documen = fkpk_t_documento;
 
 /* Esta sentencia tambien nos hubiera servido para lo anterior, pero el problema con esta es que nos cambia el valor del codigo de administrador
 y entonces cada que la ejecutemos tendremos un nuevo codigo para cada administrador. Entonces al momento de hacer el login 
 se pueden presentar errores al momento de ingresar el codigo ya que este se estaria actualizando cada que se ingrese un nuevo
 administrador.
 */
 -- replace into administradores ( fkpk_usu_documen, fkpk_tipo_documen) 
 -- select documento_usu, fkpk_t_documento from usuarios where fkpk_rol_usu = "Administrador";

-- Eliminar Datos
Delete from administradores ;

/* TABLA CLIENTES*/

-- Mostrar Datos
select * from clientes;

/* Iner Join para verificar usuario y contraseña  del cliente.Esta sentencia la usaremos en el formulario del
cliente para el login correspondiente, si las filas devueltas son igual a cero quiere decir que el cliente no 
existe o que ha ingresado algun dato erroneamente y no le permitira ingresar. Caso contrario si los  dos datos coinciden y 
existen en la base de datos.
 */
select usuario,contras from clientes
inner join usuarios on clientes.fkpk_usu_documen =  usuarios.documento_usu
and  clientes.fkpk_tipo_documen = usuarios.fkpk_t_documento  where  usuario='soyrauw' and contras='obaby' ;

-- Insertar Datos

/* En este instert traemos todos los valores de la tabla usuario que coincidan con el rol Cliente y los insertamos en nuestra tabla
de clientes.De esta forma evitamos insertar uno a uno cada cliente registrado en la tabla usuarios. Nota: Usamos la sentencia
on duplicate key update ya que cada que ejecutemos nuestra sentencia nos volvera a insertar a los clientes que ya se an colocado en la 
tabla y esto nos arrojaria un error, lo que hace dicho comando es actualizar los datos que ya se encuentran en la tabla y los que no se encuentren
los inserta automaticamente.
*/
INSERT INTO clientes ( fkpk_usu_documen, fkpk_tipo_documen) 
select documento_usu, fkpk_t_documento from usuarios where fkpk_rol_usu = "Cliente" on duplicate key update
 fkpk_usu_documen = documento_usu, fkpk_tipo_documen = fkpk_t_documento;

-- Eliminar Datos
Delete from clientes;



/* TABLA SUCURSALES*/

-- Mostrar Datos
select * from sucursales;

/* Esta sentencia la ejecutaremos en el codigo para evitar que se pueda registrar un administrador en dos sucursales. Ya que si existen
registrados en la tabla  la sentencia nos arrojara uno. Entonces en el codigo de la aplicacion no permitirmeros que se registre un mismo administrador
en esta tabla si ya pertenece a una sucursal.Y si el resultado de la consulta es igual a cero, el administrador podra ser ingresado con normalidad.
*/
select * from sucursales where fkpk_admin_usu_documen='1000571915' and fkpk_admin_tipo_documen='CE';

-- Insertar Datos
INSERT INTO sucursales(codigo_sucursal, nom_sucursal, desc_sucursal, fkpk_admin_usu_documen, fkpk_admin_tipo_documen) 
VALUES ('ACVS552', 'La septima', 'queda en la septima', '1000571915', 'CC');
INSERT INTO sucursales(codigo_sucursal, nom_sucursal, desc_sucursal, fkpk_admin_usu_documen, fkpk_admin_tipo_documen) 
VALUES ('ACVS553', 'La  juanita', 'queda en la bosa', '100571915', 'CE');

-- Actualizar en cascada
update sucursales set codigo_sucursal = 'popo' where codigo_sucursal = 'ACVS552';

-- Eliminar Datos en cascada
Delete from sucursales;

/* TABLA VEHICULOS*/

-- Mostrar Datos
select * from vehiculos;

-- Insertar Datos
/* Estado vehiculo:
1. vehiculo a la venta
2. vehiculo vendido
solo mostramos los vehiculos con estado tipo 1 al cliente con eso evitamos que en la factura generada se presenten dos vehiculos con una misma placa
*/
INSERT INTO vehiculos (placa_vehiculo, marca_vehiculo, linea_vehiculo, modelo_vehiculo, color_vehiculo,imagen_vehiculo, estado_vehiculo, fk_cod_sucursal) 
VALUES ('ABS158', 'Mazda', 'CX5', 2017, 'Blanco', 'Imagenes/mazdaCX5.jpg', 1, 'ACVS552');
INSERT INTO vehiculos (placa_vehiculo, marca_vehiculo, linea_vehiculo, modelo_vehiculo, color_vehiculo,imagen_vehiculo, estado_vehiculo, fk_cod_sucursal) 
VALUES ('ZSA256', 'Renaul', 'Sandero', 2021, 'gris Claro', 'Imagenes/renaultSandero.jpg', 1, 'ACVS552');

-- Actualizar en cascada
update vehiculos set placa_vehiculo = 'ajuac' where placa_vehiculo = 'ABS158';

-- Eliminar Datos
Delete from vehiculos;

/* TABLA FACTURAS*/

-- Mostrar Datos
select * from facturas;

-- Insertar Datos
/* Solo insertamos en la factura los vehiculos que tengan estado 1 para que la placa no se pueda repetir.
Una vez ingresado y comprado en la factura, el vehiculo cambiara a estado 2 y no podra aparecer nuevamente en la factura
*/ 
INSERT INTO facturas (fecha_compra, precio_vehiculo, fk_placa_vehiculo, fkpk_clien_docum, fkpk_client_tipo_docum) 
VALUES ('2021-03-12', '125000000', 'ABS158', '00158842', 'CC');

/* Con este Inner Join verificamos que la placa del vehiculo exista en la tabla facturas y si existe actualizamos el valor de estado vehiculo en la tabla vehiculos a 2
cpm ello se evita que se vuelva a insertar la misma placa ya que el vehiculo cambia a estado 2
*/

# Actaulizar tabla vehiculos
update  vehiculos 
inner join facturas on vehiculos.placa_vehiculo = facturas.fk_placa_vehiculo
set estado_vehiculo = 2  ;

-- Eliminar Datos
Delete from vehiculos;




