-- Apaga o banco de dados fatec
drop database if exists fatec;

-- Cria o banco de dados fatec
create database fatec;

-- Seleciona o banco fatec
use fatec;

-- Cria a tabela categorias
create table categorias (
    codigo tinyint unsigned not null,
    nome varchar (100) not null,
    primary key (codigo),
    unique key (nome)
);

-- Exibe a estrutura da tabela categorias
describe categorias;

-- Cria a tabela produtos
create table produtos (
    codigo smallint unsigned not null,
    nome varchar (100) not null,
    preco decimal (6, 2) unsigned not null,
    quantidade tinyint unsigned not null,
    data_de_validade date,
    categoria_codigo tinyint unsigned not null,
    primary key (codigo),
    unique key (nome),
    foreign key (categoria_codigo) references categorias (codigo)
);

-- Exibe a estrutura da tabela produtos
describe produtos;

-- Exibe o comando de criação da tabela categorias e produtos
show create table categorias;
show create table produtos;
