create database db_pizzaria;
use db_pizzaria;

create table tb_categoria(
id bigint not null auto_increment,
sabor varchar(255),
acompanhaRefrigerante boolean,
primary key (id)
);

INSERT INTO tb_categoria (sabor, acompanhaRefrigerante) VALUES ("Salgado", true);
INSERT INTO tb_categoria (sabor, acompanhaRefrigerante) VALUES ("Doce", true);
INSERT INTO tb_categoria (sabor, acompanhaRefrigerante) VALUES ("Doce", false);
INSERT INTO tb_categoria (sabor, acompanhaRefrigerante) VALUES ("Salgado", false);
INSERT INTO tb_categoria (sabor, acompanhaRefrigerante) VALUES ("Meio-a-meio", false);

create table tb_pizza(
	id bigint auto_increment,
	saborDoRecheio varchar(255) not null,
    frete decimal (4,2) not null,
    quantidade int not null,
    preco decimal (4,2) not null,
    categoria_id bigint,
	primary key (id),
    foreign key (categoria_id) references tb_categoria (id)
);

INSERT INTO tb_pizza (saborDoRecheio, frete, quantidade, preco, categoria_id) VALUES ("Portuguesa", 7.00, 2, 30.00, 1);
INSERT INTO tb_pizza (saborDoRecheio, frete, quantidade, preco, categoria_id) VALUES ("Calabresa", 8.00, 2, 27.90, 4); 
INSERT INTO tb_pizza (saborDoRecheio, frete, quantidade, preco, categoria_id) VALUES ("Banana com chocolate", 5.00, 1, 37.90, 2); 
INSERT INTO tb_pizza (saborDoRecheio, frete, quantidade, preco, categoria_id) VALUES ("4 Queijos", 10.00, 1, 40.00, 1); 
INSERT INTO tb_pizza (saborDoRecheio, frete, quantidade, preco, categoria_id) VALUES ("Beijinho", 15.00, 2, 42.99, 3); 
INSERT INTO tb_pizza (saborDoRecheio, frete, quantidade, preco, categoria_id) VALUES ("Nutella / Queijo", 3.00, 2, 53.90, 5); 

select * from tb_pizza;

-- pizzas com preço maior que 45 reais
select * from tb_pizza where preco > 45.00;

-- pizzas com preço entre 29 e 60 reais
select * from tb_pizza where preco between 29.00 and 60.00;

-- select com produtos com a letra "c"
select * from tb_pizza where saborDoRecheio like "%c%";

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id; 

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where tb_categoria.id = 1;
