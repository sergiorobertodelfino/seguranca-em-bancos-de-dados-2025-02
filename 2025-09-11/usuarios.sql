-- Apaga o banco de dados
drop database if exists fatec;

-- Cria um banco de dados
create database fatec;

-- Seleciona a base de dados
use fatec;

-- Cria uma tabela
create table categorias (
    codigo tinyint unsigned not null,
    nome varchar (100) not null,
    primary key (codigo),
    unique key (nome)
);

-- Remove um usuário
drop user if exists sergio@localhost;
drop user if exists patricia@'%';

-- Cria um usuário
create user sergio@localhost
identified by 'Senha@123';

create user patricia@'%'
identified by 'Fatec#456';

-- Exibe os usuários
select user, host
from mysql.user;
