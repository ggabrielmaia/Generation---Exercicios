create database db_escolas;

use db_escolas;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255) not null,
notasMedias decimal not null,
faltas bigint not null,
passouDeAno varchar(255) not null,
primary key (id)
);

INSERT INTO tb_estudantes(nome, notasMedias, faltas, passouDeAno) values ("Julia", 7.9, 2, "Sim");
INSERT INTO tb_estudantes(nome, notasMedias, faltas, passouDeAno) values ("Pedro", 7, 2, "Sim");
INSERT INTO tb_estudantes(nome, notasMedias, faltas, passouDeAno) values ("Luan", 4.1, 6, "Não");
INSERT INTO tb_estudantes(nome, notasMedias, faltas, passouDeAno) values ("Lucas", 3, 0, "Não");
INSERT INTO tb_estudantes(nome, notasMedias, faltas, passouDeAno) values ("João", 9, 0, "Sim");
INSERT INTO tb_estudantes(nome, notasMedias, faltas, passouDeAno) values ("José", 8.7, 7, "Sim");
INSERT INTO tb_estudantes(nome, notasMedias, faltas, passouDeAno) values ("Ruan", 6, 0, "Sim");
INSERT INTO tb_estudantes(nome, notasMedias, faltas, passouDeAno) values ("Sabrina", 3, 7, "Não");


select * from tb_estudantes where notasMedias > 7;

select * from tb_estudantes where notasMedias < 7;

update tb_estudantes set notasMedias = 6 where id = 4;
