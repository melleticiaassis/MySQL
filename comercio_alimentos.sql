
create database comercio_alimentos;

use comercio_alimentos;

create table cliente (
    id int primary key auto_increment,
    nome varchar(45),
    telefone varchar(45),
    email varchar(45)
);

create table vendedor (
    id int primary key auto_increment,
    nome varchar(45)
);

create table pagamento (
    id int primary key auto_increment,
    forma_pagamento varchar(45)
);

create table categoria (
    id int primary key auto_increment,
    nome varchar(45)
);

create table fornecedores (
    id int primary key auto_increment,
    cnpj varchar(45),
    nome varchar(45)
);

create table produto (
    id int primary key auto_increment,
    nome varchar(45),
    preço decimal(10,2),
    qtd_estoque varchar(45),
    categoria_id int,
    fornecedores_id int
);

create table venda (
    id int primary key auto_increment,
    valor_total decimal(10,2),
    data datetime,
    cliente_id int,
    vendedor_id int,
    pagamento_id int
);

create table venda_has_produto (
    venda_id int,
    produto_id int,
    primary key (venda_id, produto_id)
);

show tables;
