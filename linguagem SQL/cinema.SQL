# ex cinema

create database cinema2;

create table cliente (
    cpf         int(11)         not null,
    nome        varchar(50)     not null,
    endereco    varchar(50)     not null,
    cidade      varchar(50)     not null,
    estado      char(2)         not null,
    telefone    int(10)         not null,
    primary key(cpf));

create table ingresso (
    numero       int(10)          not null,
    poltrona    varchar(5)       not null,
    tipo        varchar(50)      not null,
    valor       float(5,2)       not null,
    cpfcliente  int(11)          not null,
    codsessao   int(11)          not null,
    primary key(numero),
    foreign key (cpfcliente) references cliente(cpf));

create table cinema(
    cnpj        int(11)             not null,
    nome        varchar(50)         not null,
    endereco    varchar(50)         not null,
    cidade      varchar(50)         not null,
    estado      char(2)             not null,
    telefone    int(15)             not null, 
    cpfcorretor int(11)             not null,
    primary key (cpf));

create table sessao (
    codigo          int(11)         not null,
    descricao       varchar(50)     not null,
    data            date()          not null,
    horario         time()          not null,
    sala            int(2)          not null,
    capacidade      int(3)          not null,
    cnpjcinema      int(11)         not null,
    primary key(codigo),
    foreing key (cnpjcinema) references cinema(cnpj));