# ex livraria

create database livraria;

create table autor (
    cpf         int(11)         not null,
    nome        varchar(50)     not null,
    endereco    varchar(50)     not null,
    estado      char(2)         not null,
    telefone    int(10)         not null,
    primary key(cpf));

create table editora (
    cnpj        int(15)         not null,
    nome        varchar(50)     not null,
    endereco    varchar(50)     not null,
    cidade      varchar(50)     not null,
    estado      char(2)         not null,
    telefone    int(10)         not null,
    primary key(cnpj));

create table categoria(
    codigo        int(11)         not null,
    descricao     vachar(50)      not null,
    primary key (codigo));

create table livro(
    isbn        varchar(20)  not null,
    titulo      varchar(50)  not null,
    edicao      varchar(10)  not null,
    nrpaginas   int(3)       not null,
    cpfautor    int(11)      not null,
    cnpjeditora int(15)      not null,
    codcategoria int(5)      not null,
    primary key (isbn);
    foreign key (cpfautor) references autor(cpf),
    foreign key (cnpjditora) references editora(cnpj),
    foreign key (codcategoria) references categoria(codigo));

create table emprestimo(
    codigo          int(5)          not null,
    dataretirada    date()          not null,
    codaluno        int(5)          not null,
    isbnlivro       varchar(20)     not null,
    datadevolucao   date()          not null,
    multa           float(5,2)      not null,
    primary key (codigo);
    foreign key (codaluno) references aluno(cpf),
    foreign key (isbnlivro) references livro(isbn));

create table aluno (
    codigo      int(5)          not null,
    nome        varchar(50)     not null,
    endereco    varchar(50)     not null,
    estado      char(2)         not null,
    telefone    int(10)         not null,
    primary key(codigo));