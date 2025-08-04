# ex entrega

create database entrega2;

create table cliente (
    cpf         int(11)         not null,
    nome        varchar(50)     not null,
    endereco    varchar(50)     not null,
    cidade      varchar(50)     not null,
    estado      char(2)         not null,
    telefone    int(10)         not null,
    primary key(cpf));

create table pedido (
    codigo       int(10)        not null,
    data         date()         not null,
    imposto      float(10,2)    not null,
    total        float(10,2)    not null,
    cpfcliente   int(11)        not null,
    primary key(codigo),
    foreign key (cpfcliente) references cliente(cpf));

create table itempedido(
    codigo         int(11)             not null,
    descricao      varchar(50)         not null,
    qtde           int(5)              not null,
    preco          float(6,2)          not null,
    codpedido      int(10)             not null,
    codproduto     int(5)              not null, 
    primary key (codigo),
    foreing key (codpedido) references pedido(codigo),
    foreing key (codproduto) references produto(codigo));

create table categoria(
    codigo        int(11)         not null,
    descricao     vachar(50)      not null,
    primary key (codigo));

create table produto(
    codigo         int(11)             not null,
    descricao      varchar(50)         not null,
    qtde           int(5)              not null,
    preco          float(6,2)          not null,
    codcategoria   int(5)           not null,
    primary key (codigo),
    foreing key (codcategoria) references categoria(codigo));