/*Tabla Canal*/
insert into canal(can_nombre,can_tipo)
values('Facebook','Buscador');

select can_id_canal, can_nombre, can_tipo
from canal;

update canal
set can_nombre = 'Instagram', can_tipo = 'Red Social'
where can_id_canal = 2;

delete from canal where can_id_canal = 1;
/*Tabla Canal*/
show create table canal;
INSERT INTO canal (can_nombre, can_tipo) VALUES
('Instagram', 'Red Social'),
('Facebook', 'Red Social'),
('Google', 'Buscador'),
('Bing', 'Buscador'),
('Correo Directo', 'Email');

/*Tabla Cliente*/
show create table cliente;
INSERT INTO cliente (cli_nombre, cli_apellido, cli_correo, cli_telefono, cli_ciudad, cli_fecha_registro) VALUES
('Juan', 'Pérez', 'juan.perez@email.com', '3001234567', 'Bogotá', '2024-01-15'),
('María', 'Gómez', 'maria.gomez@email.com', '3109876543', 'Medellín', '2024-02-20'),
('Carlos', 'Rodríguez', 'carlos.rodriguez@email.com', '3201112233', 'Cali', '2024-03-05'),
('Ana', 'Martínez', 'ana.martinez@email.com', '3157778899', 'Popayán', '2024-04-10'),
('Luis', 'Torres', 'luis.torres@email.com', '3004445566', 'Barranquilla', '2024-05-18');

/*Tabla Campania*/
show create table campania;
INSERT INTO campania (cam_nombre, cam_presupuesto, cam_fecha_inicio, cam_fecha_final, canal_can_id_canal) VALUES
('Verano Digital 2025', 5000000, '2025-01-01', '2025-02-28', 1),
('Black Friday', 8000000, '2025-11-20', '2025-11-30', 2),
('Lanzamiento Producto X', 3000000, '2025-03-01', '2025-03-31', 3),
('Fidelización Clientes', 2000000, '2025-04-01', '2025-04-30', 4),
('Promo en Tienda', 1500000, '2025-05-01', '2025-05-15', 5);

/*Tabla interaccion*/
show create table interaccion;
INSERT INTO interaccion (int_tipo, int_fecha, campania_cam_id_campania, cliente_cli_id_cliente) VALUES
('clic', '2025-01-10', 1, 1),
('visita', '2025-01-12', 1, 2),
('comentario', '2025-04-05', 4, 3),
('descarga', '2025-11-25', 2, 4),
('clic', '2025-03-15', 3, 5);

/*Tabla conversion*/
show create table conversion;
INSERT INTO conversion (con_tipo, con_valor, con_fecha, cliente_cli_id_cliente) VALUES
('compra', 150000, '2025-01-15', 1),
('registro', 0, '2025-02-01', 2),
('suscripcion', 25000, '2025-04-06', 3),
('compra', 320000, '2025-11-26', 4),
('compra', 89000, '2025-03-16', 5);