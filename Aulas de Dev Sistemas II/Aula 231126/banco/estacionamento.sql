-- Execute no phpMyAdmin (aba SQL) ou no MySQL Command Line Client
create database if not exists estacionamento;
use estacionamento;

create table if not exists carro(
  placa char(7) not null primary key,
  cor varchar(20),
  descricao varchar(100)
);

-- dados de exemplo (opcional)
insert ignore into carro(placa,cor,descricao) values
 ('JKK1900','Azul','Carro 1'),
 ('JKE2013','Preto','Carro 2');
