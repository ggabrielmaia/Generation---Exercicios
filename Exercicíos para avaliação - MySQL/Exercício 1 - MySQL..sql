create database  db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id bigint not null auto_increment,
classe varchar(255) not null,
mana int not null,
vida int not null,
primary key (id)
);

INSERT INTO tb_classe (classe, mana, vida) values ("Mago", "50", "25");
INSERT INTO tb_classe (classe, mana, vida) values ("Ladrão", "25", "40");
INSERT INTO tb_classe (classe, mana, vida) values ("Suporte", "40", "30");
INSERT INTO tb_classe (classe, mana, vida) values ("Tanque", "10", "80");
INSERT INTO tb_classe (classe, mana, vida) values ("Guerreiro", "20", "70");

create table tb_personagem(
	id bigint auto_increment,
    poderDeAtaque int not null,
    poderDeDefesa int not null,
    raça varchar(30) not null,
    nome varchar(255) not null,
    classe_id bigint,
	primary key (id),
    foreign key (classe_id) references tb_classe (id)
);

INSERT INTO tb_personagem (poderDeAtaque, PoderDeDefesa, raça, nome, classe_id) VALUES ("1700", "1000", "Humano", "Gendalf", 1);
INSERT INTO tb_personagem (poderDeAtaque, PoderDeDefesa, raça, nome, classe_id) VALUES ("2100", "800", "Elfo", "Legolas", 2);
INSERT INTO tb_personagem (poderDeAtaque, PoderDeDefesa, raça, nome, classe_id) VALUES ("1000", "5000", "Dragão", "Smaug", 4);
INSERT INTO tb_personagem (poderDeAtaque, PoderDeDefesa, raça, nome, classe_id) VALUES ("1500", "1500", "Humano", "Aragorn", 5);
INSERT INTO tb_personagem (poderDeAtaque, PoderDeDefesa, raça, nome, classe_id) VALUES ("1200", "2500", "Humano", "Saruman", 1);
INSERT INTO tb_personagem (poderDeAtaque, PoderDeDefesa, raça, nome, classe_id) VALUES ("3000", "700", "Orc", "Melkor", 2);
INSERT INTO tb_personagem (poderDeAtaque, PoderDeDefesa, raça, nome, classe_id) VALUES ("1000", "2700", "Humano", "Galadriel", 3);
INSERT INTO tb_personagem (poderDeAtaque, PoderDeDefesa, raça, nome, classe_id) VALUES ("200", "4000", "Elfo", "Arwen", 3);

select * from tb_personagem;

-- personagens com poder de ataque maior que 2000
select * from tb_personagem where poderDeAtaque > 2000;

-- personagens com poder de defesa entre 1000 e 2000
select * from tb_personagem where poderDeDefesa between 1000 and 2000;

-- mudando a letra para "A", pois não tem nenhum personagem coma letra c
select * from tb_personagem where nome like "%a%";

-- inner join classe/personagem
select * from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

-- select de uma classe específica
select * from tb_personagem right join tb_classe on tb_classe.id = tb_personagem.classe_id where tb_classe.id = 2;
