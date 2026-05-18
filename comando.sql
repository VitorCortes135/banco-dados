create table Cliente (
Id serial primary key,
Nome varchar (100)not null,
Email varchar(100),
Genero varchar(1) not null,
DataNascimento date not null    

)

insert into Cliente (Nome,Email,Genero,DataNascimento)
values('jao1232gmail.com', 'joao.','M','1990-05-05')

insert into Cliente (Nome,Email,Genero,DataNascimento)
values('João da Silva', 'Joao123@gmail.com','M','1990-05-08')

insert into Cliente (Nome,Genero,DataNascimento)
values('Pedro Silva','M','1990-04-01')

-- seleciona todas as colunas do cliente
select *
from cliente 
-- seleciona somente nome e email do cliente
select Nome,Email
from cliente


-- seleciona todas as colunas onde o Nome do cliente é 'Pedro Silva'
select *
from cliente 
where Nome = 'Pedro Silva'


select *
from cliente 
order by DataNascimento  desc 

update cliente 
set Email = 'Joao123@gmail.com'
where id = 2
-- atualiza email do id =2
update cliente 
set genero  = 'F'
where id = 2

delete from cliente 
where id = 3


create table Produtos (
id serial primary key,
Nome varchar(100) not null,
preco decimal(10,2) not null,
estoque int default 0)

insert into produtos (Nome,preco,estoque)
values ('hamburguer', '27.50','16')

insert into produtos (Nome,preco,estoque)
values ('pizza calabresa', '45.50','10')

insert into produtos (Nome,preco,estoque)
values ('coca lata', '6.50','20')

insert into produtos (Nome,preco,estoque)
values ('coca lata', 6.50,20)

select *
from produtos

select nome,preco
from produtos

update produtos
set preco = '7.0'
where id = 3

delete from produtos 
where id=4


create table Funcionario (
id serial primary key,
Nome varchar(100) not null,
Cargo varchar (50) not null,
Salario decimal(10,2) not null,
DataAdmissao date not null

)

insert into Funcionario (Nome,Cargo,Salario,DataAdmissao)
values('Pedro','Aprendiz',700,'2025-01-01')

insert into Funcionario (Nome,Cargo,Salario,DataAdmissao)
values('Arthur','Tecnico',2000,'2025-03-10')


create table Funcionario (
id serial primary key,
Nome varchar(100) not null,
Cargo varchar (50) not null,
Salario decimal(10,2) not null,
DataAdmissao date not null

)

insert into Funcionario (Nome,Cargo,Salario,DataAdmissao)
values('Pedro','Aprendiz',700,'2025-01-01')

insert into Funcionario (Nome,Cargo,Salario,DataAdmissao)
values('Arthur','Tecnico',2000,'2025-03-10')

insert  into Funcionario (Nome,Cargo,Salario,DataAdmissao)
values('Lucas','Porteiro',1900,'2025-10-5')

select *
from funcionario


