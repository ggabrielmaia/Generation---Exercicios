create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
areaDeFuncionalidade varchar(255) not null,
disponivelParaVenda boolean not null,
primary key (id)
);

INSERT INTO tb_categoria (areaDeFuncionalidade, disponivelParaVenda) values ("Elétrica", false);
INSERT INTO tb_categoria (areaDeFuncionalidade, disponivelParaVenda) values ("Elétrica", true);
INSERT INTO tb_categoria (areaDeFuncionalidade, disponivelParaVenda) values ("Ferramentas", false);
INSERT INTO tb_categoria (areaDeFuncionalidade, disponivelParaVenda) values ("Ferramentas", true);
INSERT INTO tb_categoria (areaDeFuncionalidade, disponivelParaVenda) values ("Pintura/tingir", true);
INSERT INTO tb_categoria (areaDeFuncionalidade, disponivelParaVenda) values ("Pintura/tingir", false);

create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal(6,2) not null,
quantidadeDisponivel int not null,
indicadoApenasParaObra boolean,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produtos (nome, preco, quantidadeDisponivel, indicadoApenasParaObra, categoria_id) values ("30M de fio de cobre", 40.00, 30, true, 2);
INSERT INTO tb_produtos (nome, preco, quantidadeDisponivel, indicadoApenasParaObra, categoria_id) values ("Alicate de corte", 22.90, 50, false, 4);
INSERT INTO tb_produtos (nome, preco, quantidadeDisponivel, indicadoApenasParaObra, categoria_id) values ("Fusível 40 Ohms", 5.89, 0, false, 1);
INSERT INTO tb_produtos (nome, preco, quantidadeDisponivel, indicadoApenasParaObra, categoria_id) values ("Lata de tinta 18 litros", 99.99, 0, true, 6);
INSERT INTO tb_produtos (nome, preco, quantidadeDisponivel, indicadoApenasParaObra, categoria_id) values ("Chave Philips grande", 15.30, 0, false, 3);

select * from tb_produtos;

-- produtos com o valor maior que 50,00 reais
select * from tb_produtos where preco > 50;

-- produtos com o valor entre 3 e 60 reais
select * from tb_produtos where preco between 3 and 60;

-- select produtos com a letra "c"
select * from tb_produtos where nome like "%c%";

-- inner join categoria/produto
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- select categoria desejada
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 3;


