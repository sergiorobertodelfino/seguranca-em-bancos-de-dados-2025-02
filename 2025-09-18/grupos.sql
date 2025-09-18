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

-- Criar um Grupo
create role administrador;
create role usuario;

-- Visualizar os Grupos Criados
select user, host from mysql.user;

-- Visualizar as Permissões de um Grupo
show grants for administrador;
show grants for usuario;

-- Atribuir Permissões para um Grupo
grant all
on *.*
to administrador;

grant insert, select, update
on fatec.*
to usuario;

-- Visualizar as Permissões de um Grupo
show grants for administrador;
show grants for usuario;

-- Adicionar o Usuário em um Grupo
grant administrador, usuario
to sergio@localhost;

grant usuario
to patricia@'%';

-- Visualizar os Grupos de um Usuário
show grants for sergio@localhost;
show grants for patricia@'%';