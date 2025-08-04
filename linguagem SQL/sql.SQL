# criar o banco de dados (database)
# criar primeiro a tabela que tenha a FK e dps a de PK


# criar tabelas (entidades)

create table turma(
código      int(5)          not null,
nome        varchar(50)     not null,
primary kay (código));


create table aluno ( 

código      int (5)         not null,      # not null =  pode deixar em branco
nome        varchar(50)     not null,
telefone    int(10)         not null,
codturma    int(5)          not null,
primary key(código),
foreing key (codturma) references turma(codigo));  # references = a tabela ... está conectada com a tabela ...