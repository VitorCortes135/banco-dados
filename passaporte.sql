create table Cidade (
id SERIAL primary key,
Nome varchar(100) not null,
Estado varchar(2) not null )

insert into Cidade (Nome,Estado) values 
('São Paulo', 'SP'),
('Rio de Janeiro', 'RJ' ),
('Belo Horizonte', 'MG'),
('Curitiba', 'PR'),
('Fortaleza', 'CE')

alter table usuario 
add column CidadeId INT 
 
 
 
 select * from usuario 
 
 update usuario 
 set cidadeid = 3
 where id = 1
 
 update usuario 
 set Cidadeid = 3 
where id = 2

update usuario 
set cidadeid = 2
where id = 3

update usuario 
set cidadeid = 1
where id = 4

update usuario 
set cidadeid = 3
where id = 5

update usuario 
set cidadeid = 2
where id = 6


select u.id,u.nome, u.cpf, c.nome as NomeCidade,
c.estado
from usuario u 
left join cidade c
on u.cidadeId = c.Id


create table Passaporte(
id Serial primary key,
Numero varchar(20) not null unique,
usuarioId int unique,
foreign key (usuarioId) references usuario(id))

insert into Passaporte (Numero, usuarioId) values ('BR100001',1);
insert into Passaporte (Numero, usuarioId) values ('BR100002',2);
insert into Passaporte (Numero, usuarioId) values ('BR100003',3);
insert into Passaporte (Numero, usuarioId) values ('BR100004',4);
insert into Passaporte (Numero, usuarioId) values ('BR100005',5);
insert into Passaporte (Numero, usuarioId) values ('BR100006',6);
insert into Passaporte (Numero, usuarioId) values ('BR100007',7);
insert into Passaporte (Numero, usuarioId) values ('BR100008',8);
insert into Passaporte (Numero, usuarioId) values ('BR100009',9);
insert into Passaporte (Numero, usuarioId) values ('BR1000010',10);



select u.nome,
u.cpf,
p.numero,
p.usuarioid
from usuario u 
inner join passaporte p
on u.id = p.usuarioid


select p.id, p.valortotal  ,u.id as usuarioId, u.nome as nomeUsuario
from pedido p
inner join usuario u
on p.usuarioid = u.id 

CREATE TABLE Produto (
Id SERIAL PRIMARY KEY,
Nome VARCHAR(150) NOT NULL,
Descricao TEXT,
Preco DECIMAL(10,2) NOT NULL,
Estoque INT DEFAULT 0,
Ativo BOOLEAN DEFAULT TRUE,
CriadoEm TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
AtualizadoEm TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Produto (Nome, Descricao, Preco, Estoque)
VALUES
('Mouse Gamer', 'Mouse RGB 7200 DPI', 150.00, 25),
('Teclado Mecânico', 'Teclado switch blue', 350.00, 15),
('Monitor 24"', 'Monitor Full HD IPS', 899.90, 10),
('Headset Gamer', 'Headset com microfone', 250.75, 20),
('Notebook i5', 'Notebook 16GB RAM SSD 512GB', 4500.00, 5),
('Cadeira Gamer', 'Cadeira ergonômica reclinável', 1200.50, 8),
('Webcam HD', 'Webcam 1080p', 89.90, 30),
('Mousepad XXL', 'Mousepad extra grande', 45.00, 40),
('SSD 1TB', 'SSD NVMe Gen4', 560.00, 12),
('Fonte 650W', 'Fonte modular 80 Plus Bronze', 310.20, 18);


CREATE TABLE PedidoProduto (
    Id SERIAL PRIMARY KEY,
    PedidoId INTEGER NOT NULL,
    ProdutoId INTEGER NOT NULL,
    Quantidade INTEGER NOT NULL,
    ValorUnitario NUMERIC(10,2) NOT NULL,
    ValorTotal NUMERIC(10,2) NOT NULL,
        FOREIGN KEY (PedidoId) REFERENCES Pedido(Id),
        FOREIGN KEY (ProdutoId) REFERENCES Produto(Id)
);

INSERT INTO PedidoProduto
(PedidoId, ProdutoId, Quantidade, ValorUnitario, ValorTotal)
VALUES
(1, 8, 3, 45.00, 135.00),
(1, 1, 1, 115.75, 115.75),
(2, 7, 1, 89.90, 89.90),
(3, 8, 4, 45.00, 180.00),
(3, 1, 2, 150.00, 300.00),
(3, 7, 1, 80.00, 80.00),
(4, 8, 2, 45.00, 90.00),
(4, 1, 1, 30.50, 30.50),
(5, 3, 1, 899.90, 899.90),
(5, 8, 2, 45.00, 90.00),
(5, 1, 1, 10.09, 10.09),
(6, 8, 1, 45.00, 45.00),
(7, 8, 2, 45.00, 90.00),
(7, 1, 1, 150.00, 150.00),
(7, 7, 2, 35.10, 70.20),
(8, 9, 1, 560.00, 560.00),
(8, 8, 2, 45.00, 90.00),
(8, 1, 1, 130.40, 130.40),
(9, 8, 2, 45.00, 90.00),
(9, 1, 2, 30.00, 60.00),
(10, 8, 1, 45.00, 45.00),
(10, 1, 3, 7.63, 22.89);

select ped.id as pedidoId, ped.dataPedido, prod.nome, ped.valortotal 
from pedidoProduto pp
inner join pedido ped
on ped.id = pp.pedidoId
inner join produto prod
on prod.id = pp.produtoId
where ped.id = 1
 