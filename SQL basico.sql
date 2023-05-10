select @@version;

create database db_quitanda;

use db_quitanda;

create table tb_produtos (
	id bigint auto_increment,
	nome varchar(255) not null,
	quantidade int,
	preco decimal not null,
	primary key (id)
);
insert into tb_produtos (nome,quantidade,preco) value ("melancia",100,12.00);
insert into tb_produtos (nome,quantidade,preco) value ("laranja",80,8.00);
insert into tb_produtos (nome,quantidade,preco) value ("morango",120,15.00);
insert into tb_produtos (nome,quantidade,preco) value ("banana",30,5.00);
insert into tb_produtos (nome,quantidade,preco) value ("manga",50,4.00);
insert into tb_produtos (nome,quantidade,preco) value ("kiwi",105,14.00);

select * from tb_produtos;

select nome from tb_produtos;

select nome,preco from tb_produtos;

select * from tb_produtos where id = 2;

select * from tb_produtos where preco>= 10.00;

select * from tb_produtos where preco >= 10.00 and quantidade <= 100;

update tb_produtos set preco = 5.00 where id = 1; 

delete from tb_produtos where id = 2;

alter table tb_produtos modify preco decimal(6,2);

alter table tb_produtos add observacao varchar(255);

alter table tb_produtos drop observacao;

alter table tb_produtos change nome nomeproduto varchar(255);






