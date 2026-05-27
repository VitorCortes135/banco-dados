--1. Mostrar pedidos com valor entre 100 e 500

select * from pedido p 
where valortotal  between 100 and 500
 

--2. Contar quantos usuários que usam outlook existem cadastrados 
select count(*) as UsuariosCadastrados
from usuario u 
where u.email like '%outlook%'

--3. Mostrar os dados do pedido de maior valor.
select p.usuarioid,datapedido , valortotal , statusid ,formapagamentoid ,observacao 
from pedido p 
where id = 5
 
--4. Mostrar os dados do pedido de menor valor.
select p.usuarioid,datapedido , valortotal , statusid ,formapagamentoid ,observacao 
from pedido p 
where id = 6

--5. Mostrar a média de preço dos produtos que saíram em pedidos.
select avg(p.preco) as MediaPreco 
from produto p 
inner join pedido p2 
on p.id = 


--6. Listar dados do pedido, usuário e produto apenas dos pedidos acima de 300 reais
select p.usuarioid,p.datapedido, p.valortotal,p.statusid,p.formapagamentoid,p.observacao,
u.nome,pp.id 
from pedido p 
inner join produto pp
on p.id = pp.id
inner join usuario u 
on u.id = p.usuarioid 
where p.valortotal  >300

--7. Mostrar o nome do usuario, cidade e estado de usuarios inativos
select u.nome,u.cidadeid,c.estado
from usuario u 
inner join cidade c 
on u.nome  = c.estado  
where ativo = false 


8--Suba o preço do Mouse Gamer e do MousepadXXl em 15%


update produto 
set preco = preco * 1.15
where id = 1

update produto 
set preco = preco * 1.15
where id = 8

--9Mostrar quantidade total de pedidos por usuário
select u.nome,u.id, count(u.id) as totalPedidos
from pedido p 
inner join usuario u 
on p.usuarioid = u.id 
group by u.id 

10-- Mostrar valor total vendido por produto
select prod.nome as produto, sum(pp.valortotal) as totalvendido
from pedidoproduto pp
inner join produto prod
on pp.produtoid = prod.id 
group by prod.nome 
order by totalvendido


--11. Mostrar usuarios que fizeram pedidos acima do valor médio 
select u.nome,p.valortotal as Valortotal
from pedido p 
inner join usuario u 
on p.usuarioid  = u.id 
where p.valortotal > (select avg(valortotal) from pedido p)




--12.Mostrar produtos com preço acima da média dos produtos
select nome as produto, preco 
from produto p2 
where preco  > (select avg(preco) from produto p)



select * from usuario 

select * from pedido 

select * from produto

select * from cidade 

select * from pedidoproduto 
