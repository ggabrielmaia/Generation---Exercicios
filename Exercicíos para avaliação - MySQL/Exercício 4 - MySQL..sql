create database db_cidade_das_frutas;
use db_cidade_das_frutas;

create table tb_categoria(
id bigint not null auto_increment,
organica boolean not null,
tamanho varchar(255) not null,
primary key (id)
);

INSERT INTO tb_categoria (organica, tamanho) values (true, "Grande");
INSERT INTO tb_categoria (organica, tamanho) values (true, "Medio");
INSERT INTO tb_categoria (organica, tamanho) values (true, "Pequeno");
INSERT INTO tb_categoria (organica, tamanho) values (false, "Grande");
INSERT INTO tb_categoria (organica, tamanho) values (false, "Medio");
INSERT INTO tb_categoria (organica, tamanho) values (false, "Pequeno");

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
quantidadeDisponivel int not null,
precoKg decimal(5,2),
precisaDeSacola boolean not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produtos (nome, quantidadeDisponivel, precoKg, precisaDeSacola, categoria_id) values ("Morango", 50, 30.90, false, 3);
INSERT INTO tb_produtos (nome, quantidadeDisponivel, precoKg, precisaDeSacola, categoria_id) values ("Pêra", 20, 15.99, true, 5);
INSERT INTO tb_produtos (nome, quantidadeDisponivel, precoKg, precisaDeSacola, categoria_id) values ("Melancia", 49, 11.90, true, 4);
INSERT INTO tb_produtos (nome, quantidadeDisponivel, precoKg, precisaDeSacola, categoria_id) values ("Jaca", 12, 35.10, true, 4);
INSERT INTO tb_produtos (nome, quantidadeDisponivel, precoKg, precisaDeSacola, categoria_id) values ("Uva", 100, 44.50, false, 3);
INSERT INTO tb_produtos (nome, quantidadeDisponivel, precoKg, precisaDeSacola, categoria_id) values ("Maçã", 112, 10.00, true, 2);
INSERT INTO tb_produtos (nome, quantidadeDisponivel, precoKg, precisaDeSacola, categoria_id) values ("Melão", 23, 27.30, true, 1);
INSERT INTO tb_produtos (nome, quantidadeDisponivel, precoKg, precisaDeSacola, categoria_id) values ("Lixia", 32, 55.00, false, 6);


select * from tb_produtos;

-- produtos com o valor maior que 50,00 reais
select * from tb_produtos where precoKg > 50;

-- produtos com o valor entre 3 e 60 reais
select * from tb_produtos where precoKg between 3 and 60;

-- select para produtos com a letra "c"
select * from tb_produtos where nome like "%c%";

-- inner join categoria/produto
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- select classe específica
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;