select count(*) as TotalUsuarios
from Usuario
where ativo = true

select max(preco)
from produtos

select min(preco)
from produtos 

select avg(Salario)
from funcionario 


select avg(salario) as MediaSalarial
from funcionario 

select sum(ValorTotal) as SomarValorTotalPedidos
from pedido p 


insert  into Funcionario (Nome,Cargo,Salario,DataAdmissao)
values('Lucas','Porteiro',1900,'2025-10-5')

insert into Funcionario (Nome,Cargo,Salario,DataAdmissao)
values('Pedro','Aprendiz',700,'2025-01-01'),

insert into Funcionario (Nome,Cargo,Salario,DataAdmissao)
values('Arthur','Tecnico',2000,'2025-03-10')


create table Funcionario (
id serial primary key,
Nome varchar(100) not null,
Cargo varchar (50) not null,
Salario decimal(10,2) not null,
DataAdmissao date not null

)

create table Produtos (
id serial primary key,
Nome varchar(100) not null,
preco decimal(10,2) not null,
estoque int default 0)

insert into produtos (Nome,preco,estoque)

values ('hamburguer', '27.50','16'),

insert into produtos (Nome,preco,estoque)
values ('pizza calabresa', '45.50','10'),

insert into produtos (Nome,preco,estoque)
values ('coca lata', '6.50','20'),

insert into produtos (Nome,preco,estoque)
values ('coca lata', 6.50,20)