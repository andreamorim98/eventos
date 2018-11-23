create schema eventos;

use eventos;

create table Cliente (
id integer not null auto_increment primary key,
nome varchar (40) not null,
email varchar (40) not null,
telefone int
);

create table Organizador(
id integer not null auto_increment primary key,
nome varchar(40) not null
);

create table Evento (
id integer not null auto_increment primary key,
nome varchar (30) not null,
descricao varchar (80),
organizador varchar (40) not null,
dataEvento date not null,
constraint fk_organizador foreign key(organizador) references organizador (nome)
);

insert into Cliente (id, nome, email, telefone) values (1, "Juão Paulo", "juaopaulo@gmail.com", "12346789");
insert into Organizador (id, nome) values (1, "Serjão Berranteiro");
insert into Organizador values (2 , "Eliel");
delete from organizador where id = 2;
insert into Evento (id, nome, descricao, organizador, dataEvento) values (1, "Baguncinha Party", "Venha fazer uma baguncinha conosco!", "Serjão Berranteiro", "2018/01/20");

select * from evento;
select * from organizador;