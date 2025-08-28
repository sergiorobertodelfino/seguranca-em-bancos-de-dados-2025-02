-- Seleciona o banco de dados Fatec
use fatec;

-- Remove a tabela produtos
drop table if exists produtos;

-- Cria a tabela produtos
create table produtos (
    codigo smallint unsigned not null,
    nome varchar (100) not null,
    preco decimal (6, 2) unsigned not null,
    quantidade tinyint not null,
    validade date,
    primary key (codigo),
    unique key (nome)
);

-- Exibe a estrutura da tabela produtos
desc produtos;
