--1.Listar nome e email de todos os usuarios ativos
select Nome, Email 
 from  usuario u 
where ativo = true 

select * from Usuario

select * from pedido p

--3.Mostre o nome do usuario e o valor total de cada pedido. 

select u.nome, p.valorTotal 
from pedido p 
inner join usuario u 
on p.usuarioid = u.id 

-- media de valor total dos pedidos feitos somente pelos usuarios ativos 
select avg(valortotal)
from pedido p 
inner join usuario u 
on p.usuarioid = u.id 
where  u.ativo = true 

--2.Liste apenas o Id, a data do pedidon e o valor total dos pedidos acima de 500
select id,DataPedido,valortotal 
  from pedido 
where  valortotal  >500


--4.Contar quantos usuarios estão cadastrados no sistema
select count(*) as TotalUsuarios
from Usuario

where ativo = true


--5.Mostre o maior valor  de pedido registrado
select max(valortotal) 
 from pedido p 

 --6.Calcule o valor medio dos pedidos 
 select avg(valortotal)
 from pedido p 
 
 --7.Calcule a soma total dos valores de todos os pedidos
 select sum(ValorTotal)
 from pedido p 

 --ex do joao
 
 select avg(valortotal)
 from pedido p 
 where usuarioid = 1
 
 --calcula o valor de todos os pedidos feitos em pix
 --ignorando letras maiusculas e minusculas
 select sum(valortotal)
 from pedido p 
 inner join formapagamento f 
 on p.formapagamentoid  = f.id 
 where f.nome ilike 'Pix'
 
 
 --8.Liste o nome do usuário,a data do pedido e o status apenas dos pedidos com status "pendente"
 select u.nome,
 p.DataPedido,
 S.nome as Status
 from pedido p 
 inner join usuario u 
 on u.id =p.usuarioid 
 inner join status s 
 on p.statusid =s.id 
 where p.statusid = 2 
 
--9.Liste o nome do usuário,o valor total e a forma de pagamento apenas dos pedidos pagos com cartão. 
 select u.Nome as NomeUsuario,
 p.ValorTotal,
 fp.Nome as FormaPagamento
 from pedido p 
 inner join usuario u 
 on  p.usuarioid =u.id 
 inner join formapagamento fp
 on p.formapagamentoid = fp.id 
 where fp.nome ilike '%Cartão%'

 --10.Liste o nome do usuário, a data do pedido e o valor total apenas dos pedidos acima de 1000 reais
 select usuarioid, dataPedido, valorTotal 
 from pedido p 
 where valortotal >= 1000
 
 --11.Mostre o nome dos usuários ativos que realizaram pedidos
 select nome
 from usuario u 
 where Ativo = true 
 
 
 
 --12.Liste o nome do usuário, o status do pedido e a observação apenas dos pedidos que possuem observação preenchida
 select usuario.nome, status.nome as Status, pedido.observacao 
 from pedido 
 inner join usuario 
 on pedido.usuarioid = usuario.id 
 inner join status  
 on pedido.statusid = status.id where pedido.observacao  is not null
 
 
 --13.atualize o telefone e o email da usuária "Maria Oliveira"
 update usuario 
 set telefone = 12345678988 
 where id = 2
 
 update usuario 
 set email = 'oliveira.maria@gmail.com'
 where id = 2