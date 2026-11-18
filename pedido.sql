
create database pedidos;
use pedidos;

create table produto (
    id int primary key auto_increment,
    valor decimal(10,2)
);

create table pedido (
    id int primary key auto_increment,
    data date
);

create table item_pedido (
    valor decimal(10,2),
    pedido_id int,
    produto_id int
);

create table venda (
    id int primary key auto_increment,
    data date,
    pedido_id int
);

create table item_venda (
    valor decimal(10,2),
    venda_id int,
    produto_id int
);

show tables;
