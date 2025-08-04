# ex imobiliaria

create database imobiliaria;

create table proprietario (
    cpf         int(11)         not null,
    nome        varchar(50)     not null,
    endereco    varchar(50)     not null,
    cidade      varchar(50)     not null,
    estado      char(2)         not null,
    telefone    int(10)         not null,
    primary key(cpf));

create table corretor (
    cpf         int(11)          not null,
    nome        varchar(50)      not null,
    endereco    varchar(50)      not null,
    cidade      varchar(50)      not null,
    estado      char(2)          not null,
    telefone    int(10)          not null,
    cpfcorretor int(11)          not null,
    primary key(cpf));

create table inquilino(
    cpf         int(11)             not null,
    nome        varchar(50)         not null,
    endereco    varchar(50)         not null,
    cidade      varchar(50)         not null,
    estado      char(2)             not null,
    telefone    int(15)             not null, 
    cpfcorretor int(11)             not null,
    primary key (cpf),
    foreign key (cpfcorretor) references corretor(cpf));

create table imovel (
    codigo          int(11)         not null,
    descricao       varchar(50)     not null,
    endereco        varchar(50)     not null,
    cidade          varchar(50)     not null,
    estado          char(2)         not null,
    tipo            varchar(50)     not null,
    valor           float (10,2)    not null,
    cpfinquilino    int(11)         not null,
    cpfproprietario int(11)         not null,
    primary key(cpf),
    foreing key (cpfinquilino) references inquilino(cpf),
    foreing key (cpfproprietario) references proprietario(cpf));