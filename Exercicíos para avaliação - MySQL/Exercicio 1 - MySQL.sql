create database db_farmacia;

use db_farmacia;

create table tb_categorias(
id bigint not null auto_increment,
descricao varchar(255) not null,
ativo boolean,
primary key (id)
);

insert into tb_categorias (descricao, ativo) values ("Antitérmico", true);
insert into tb_categorias (descricao, ativo) values ("Antihistamínico", true);
insert into tb_categorias (descricao, ativo) values ("Antibiótico", true);
insert into tb_categorias (descricao, ativo) values ("higiene pessoal", true);
insert into tb_categorias (descricao, ativo) values ("produtos de beleza", true);

select * from tb_categorias;

create table tb_produtos(
id bigint not null auto_increment,
nome varchar(255) not null,
quantidade int,
preco decimal(7,2),
datacadastro timestamp,
categorias_id bigint,
primary key(id),
foreign key (categorias_id) references tb_categorias(id)
);

insert into tb_produtos(nome, quantidade, preco, datacadastro, categorias_id)
value("Desodorante rexona", 100, 18.90, current_date(), 4);

insert into tb_produtos(nome, quantidade, preco, datacadastro, categorias_id)
value("Dipirona", 200, 10.90, current_date(), 1);

insert into tb_produtos(nome, quantidade, preco, datacadastro, categorias_id)
value("Shmapoo Ausie", 50, 55.89, current_date(), 5);

insert into tb_produtos(nome, quantidade, preco, datacadastro, categorias_id)
value("Creme hidratante", 25, 89.90, current_date(), 5);

insert into tb_produtos(nome, quantidade, preco, datacadastro, categorias_id)
value("Predimisona", 200, 9.90, current_date(), 3);

select * from tb_produtos where preco >50;
select * from tb_produtos where preco between 3 and 60;
select * from tb_produtos where nome like "%D%";

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id;

select * from tb_produtos inner join tb_categorias on tb_categorias.id = tb_produtos.categorias_id where tb_categorias.id = 5;