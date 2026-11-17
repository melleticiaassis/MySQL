create database lava_rapido;
use lava_rapido;

create table cliente (
    idcliente int primary key auto_increment,
    nome varchar(100),
    telefone varchar(20),
    cpf varchar(20),
    carro_idcarro int
);

create table carro (
    idcarro int primary key auto_increment,
    descricao varchar(100),
    placa varchar(10),
    modelo int,
    ano int
);

create table funcionario (
    idfuncionario int primary key auto_increment,
    nome varchar(100),
    matricula int
);

create table tipo_lavagem (
    idtipolavagem int primary key auto_increment,
    descricao varchar(50),
    valor numeric(10,2)
);

create table lavagem (
    idlavagem int primary key auto_increment,
    data date,
    cliente_idcliente int,
    funcionario_idfuncionario int,
    tipo_lavagem_idtipo_lavagem int
);

show tables;
