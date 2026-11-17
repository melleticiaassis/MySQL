create database venda_medicamentos;
use venda_medicamentos;


create table cliente (
    idcliente int primary key auto_increment,
    nome varchar(100),
    endereco varchar(100),
    idade int,
    sexo char(1),
    clientecol varchar(45)
);


create table funcionario (
    idfuncionario int primary key auto_increment,
    nome varchar(100),
    cpf varchar(20),
    matricula int
);

create table produto (
    idproduto int primary key auto_increment,
    descricao varchar(100),
    valor numeric(10,2)
);

create table dependente (
    iddependente int primary key auto_increment,
    nome varchar(100),
    cpf varchar(20),
    idcliente int
);

create table venda (
    idvenda int primary key auto_increment,
    data date,
    quantidade int,
    vendacol varchar(45),
    idcliente int,
    idfuncionario int,
    idproduto int
);

show tables;
