create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
especializacao varchar(255) not null,
modoDeEnsino varchar(255) not null,
primary key (id)
);

INSERT INTO tb_categoria (especializacao, modoDeEnsino) values ("Java", "EAD");
INSERT INTO tb_categoria (especializacao, modoDeEnsino) values ("Java", "Presencial");
INSERT INTO tb_categoria (especializacao, modoDeEnsino) values ("Python", "EAD");
INSERT INTO tb_categoria (especializacao, modoDeEnsino) values ("C Sharp", "EAD");
INSERT INTO tb_categoria (especializacao, modoDeEnsino) values ("Excel", "EAD");

create table tb_produtos(
id BIGINT not null auto_increment,
nome varchar(255),
preco decimal(6,2),
duracaoEmMeses int not null,
tempoMaxParaRealizacao varchar(255),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

INSERT INTO tb_produtos (nome, preco, duracaoEmMeses, tempoMaxParaRealizacao, categoria_id) values ("Java - Avançado", 670.00, 3, "6 meses", 2);
INSERT INTO tb_produtos (nome, preco, duracaoEmMeses, tempoMaxParaRealizacao, categoria_id) values ("Python - Saiba tudo sobre como usar para 
criar gráficos e tabelas", 100.00, 1, "6 meses", 3);
INSERT INTO tb_produtos (nome, preco, duracaoEmMeses, tempoMaxParaRealizacao, categoria_id) values ("C Sharp - Como utilizar a linguagem para criação de jogos", 300.00, 4, "6 meses", 4);
INSERT INTO tb_produtos (nome, preco, duracaoEmMeses, tempoMaxParaRealizacao, categoria_id) values ("Excel básico", 10.00, 1, "6 meses", 5);
INSERT INTO tb_produtos (nome, preco, duracaoEmMeses, tempoMaxParaRealizacao, categoria_id) values ("Java - Do básico até o Avançado", 100.00, 2, " 4 meses", 1);

select * from tb_produtos;

-- produtos com o valor maior que 50.00 reais
select * from tb_produtos where preco > 50;

-- produtos com o valor entre 3 e 60 reais
select * from tb_produtos where precoMensal between 3 and 60;

-- select produtos com a letra "j"
select * from tb_produtos where nome like "%j%";

-- inner join categoria/produtos 
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- select categoria especifica
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_categoria.id = 1;
 

	
