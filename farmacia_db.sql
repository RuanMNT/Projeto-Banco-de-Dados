create database farmacia_db;

use farmacia_db;

create table categorias(id bigint auto_increment, nome varchar(255) unique 
not null, descricao varchar(255) not null, primary key (id));

create table produtos(id bigint auto_increment, categoria_id bigint,
nome varchar(255) unique not null, preco real, validade date,
codigo_de_barras bigint(13) unique not null, codigo_interno varchar(8) unique
not null, desconto_possivel real, substancia varchar(255), referencia ENUM('Genérico', 'Similar', 'Ético'),
primary key (id), foreign key (categoria_id) references categorias(id));

insert into categorias (nome, descricao) values ('higiene corporal', 'produtos usados para
higienização corpórea'), ('comprimido', 'remedio oral usado no combate a diversos
males'), ('higiene bocal', 'produtos usados na higienização da boca'), 
('pomada', 'remedio de uso externo usado no tratamento de diversos males');

insert into produtos (categoria_id, nome, preco, validade, codigo_de_barras,
codigo_interno, desconto_possivel, substancia, referencia) values 
(1, 'Sabonete A',1.50,'2018-07-04', '1111111111111', 'SABO0001', 0.09, null,'Similar'), 
(1, 'Sabonete B', 1.65,'2018-10-03','1111111111112', 'SABO0002', 0.15, null, 'Similar'), 
(2, 'Aspirina', 1.00,'2019-01-04','1111111111113', 'COMP0001', null, 'ácido acetilsalicílico', 'Genérico'), 
(4, 'Hipoglos',2.50,'2018-07-03','1111111111114', 'POMA0001', 0.20, 'retinol, colecalciferol, óxido de zinco
e óleo de fígado de bacalhau','Ético');

select * from produtos;
