create database db_rh;

use db_rh;

create table tb_funcionarios(
id bigint auto_increment,
nome varchar(255) not null,
salário decimal not null,
função varchar(255) not null,
horárioDeSaida bigint not null,
trabalhaAosSabados varchar(255) not null,
primary key (id)
);

INSERT INTO tb_funcionarios(nome, salário, função, horárioDeSaida, trabalhaAosSabados) values ("Jorge", 1500.00, "Desenvolvedor junior", 18, "Sim");
INSERT INTO tb_funcionarios(nome, salário, função, horárioDeSaida, trabalhaAosSabados) values ("Luana", 2500.00, "Desenvolvedora plena", 17, "Não");
INSERT INTO tb_funcionarios(nome, salário, função, horárioDeSaida, trabalhaAosSabados) values ("Lucas", 8000.00, "Desenvolvedor senior", 16, "Não");
INSERT INTO tb_funcionarios(nome, salário, função, horárioDeSaida, trabalhaAosSabados) values ("Amanda", 1900.00, "Desenvolvedora junior", 18, "Sim");
INSERT INTO tb_funcionarios(nome, salário, função, horárioDeSaida, trabalhaAosSabados) values ("Luan", 1000.00, "Estagiário", 18, "Sim");
delete from tb_funcionarios where id = 6;

select nome from tb_funcionarios where salário > 2000;

select nome from tb_funcionarios where salário < 2000;

update tb_funcionarios set salário = 2000.00 where id = 2;


 