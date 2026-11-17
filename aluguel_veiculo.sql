create database aluguel_veiculo;
 use aluguel_veiculos;
 
 create table estado(
	idestado int primary key auto_increment,
    nomeEstado varchar(45)
 );
 
 create table propriedade (
	iddono int primary key auto_increment,
    nomedono varchar(50),
    endereco varchar(100),
    bairro varchar(45),
    CPF varchar(45),
    telefone varchar(45),
    RG varchar(45),
    dataNascimentoProp date
    );
    
    create table categoria (
    idcategoria int primary key auto_increment,
    categoria_veiculo varchar(45)
    );
    
    create table marca(
    idmarca int primary key	auto_increment,
    marca varchar(45)
    );
    
create table municipio (
    idmunicipio int primary key auto_increment,
    nomeDoMunicipio varchar(150),
    estado_idestado int
);

create table veiculo (
    idVeiculo int primary key auto_increment,
    placaVeiculo varchar(10),
    anoVeiculo date,
    Proprietario_iddono int,
    Marca_idveiculo int,
    municipio_idmunicipio int,
    municipio_estado_idestado int,
    Categoria_idCategoria int
);

create table veiculo (
    idVeiculo int primary key auto_increment,
    placaVeiculo varchar(10),
    anoVeiculo date,
    Proprietario_iddono int
);
SHOW TABLES;