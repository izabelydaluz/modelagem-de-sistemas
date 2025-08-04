# ex veiculo

create database revendedora;

create table cliente (
    cpf         int(11)         not null,
    nome        varchar(50)     not null,
    endereco    varchar(50)     not null,
    cidade      varchar(50)     not null,
    estado      char(2)         not null,
    telefone    int(10)         not null,
    primary key(cpf));

create table revenda (
    cnpj        int(11)         not null,
    nome        varchar(50)     not null,
    endereco    varchar(50)     not null,
    cidade      varchar(50)     not null,
    estado      char(2)         not null,
    telefone    int(10)         not null,
    primary key(cnpj));

create table categoria(
    codigo        int(11)         not null,
    descricao     varchar(50)     not null,
    primary key (codigo));

create table marca(
    codigo        int(5)         not null,
    descricao     varchar(50)    not null,
    primary key (codigo));

create table modelo(
    codigo        int(5)         not null,
    descricao     varchar(50)    not null,
    codmarca      int(5),
    primary key (codigo),
    foreing key (codmarca) references marca(codigo));


create table veiculo (
    placa         varchar(11)     not null,
    descricao     varchar(50)     not null,
    ano           int(4)          not null,
    cor           varchar(50)     not null,
    combustivel   varchar(50)     not null,
    acessorios    varchar(50)     not null,
    cnpjrevenda   int(15)         not null,
    cpfcliente    int(11)         not null,
    codcategoria  int(5)          not null,
    codmarca      int(5)          not null,
    primary key(placa),
    foreing key (cnpjrevenda) references revenda(cnpj),
    foreing key (codcategoria) references categoria(codigo),
    foreing key (codmarca) references marca(codigo),
    foreing key (cpfcliente) references cliente(cpf))