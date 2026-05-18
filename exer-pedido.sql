CREATE TABLE Pedido (
    Id SERIAL PRIMARY KEY,
    NomeCliente VARCHAR(100) NOT NULL,
    DataPedido TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    ValorTotal DECIMAL(10,2) NOT NULL,
    Status VARCHAR(20) NOT NULL DEFAULT 'Pendente',
    FormaPagamento VARCHAR(30) NOT NULL,
    Observacao VARCHAR(200)
)

INSERT INTO Pedido 
(NomeCliente, DataPedido, ValorTotal, Status, FormaPagamento, Observacao)
VALUES
('Carlos Silva', '2026-05-01 10:15:00', 150.75, 'Pendente', 'Cartão de Crédito', 'Entrega rápida'),
('Ana Souza', '2026-05-01 14:20:00', 89.90, 'Pago', 'PIX', NULL),
('João Pereira', '2026-05-02 09:05:00', 230.00, 'Enviado', 'Boleto', 'Cliente pediu nota fiscal'),
('Mariana Lima', '2026-05-02 16:40:00', 45.50, 'Cancelado', 'Dinheiro', 'Pedido cancelado pelo cliente'),
('Fernanda Rocha', '2026-05-03 11:30:00', 320.99, 'Pago', 'Cartão de Débito', NULL),
('Lucas Martins', '2026-05-03 18:10:00', 75.00, 'Pendente', 'PIX', 'Aguardando confirmação'),
('Patricia Gomes', '2026-05-04 08:45:00', 540.25, 'Enviado', 'Cartão de Crédito', 'Entrega agendada'),
('Ricardo Alves', '2026-05-04 13:15:00', 120.00, 'Pago', 'Boleto', NULL),
('Juliana Costa', '2026-05-05 17:55:00', 260.40, 'Pendente', 'PIX', 'Cliente prefere contato por WhatsApp'),
('Bruno Ferreira', '2026-05-05 20:25:00', 99.99, 'Pago', 'Cartão de Crédito', NULL),
('Camila Ribeiro', '2026-05-06 10:00:00', 410.80, 'Enviado', 'Cartão de Débito', 'Entregar após 18h'),
('Eduardo Santos', '2026-05-06 15:35:00', 59.90, 'Pendente', 'Dinheiro', NULL),
('Larissa Mendes', '2026-05-07 09:50:00', 780.00, 'Pago', 'PIX', 'Compra em atacado'),
('Gustavo Nunes', '2026-05-07 12:40:00', 33.25, 'Cancelado', 'Boleto', 'Pagamento não realizado'),
('Beatriz Oliveira', '2026-05-08 19:15:00', 145.60, 'Enviado', 'Cartão de Crédito', NULL)

select *
from pedido
order by ValorTotal asc 

update  pedido 
set observacao = 'Urgente'
where id = 7

update pedido
set status = 'pago'
where id = 1

delete 
from pedido 
where ValorTotal <100

select nomeCliente, dataPedido,ValorTotal
from pedido
where dataPedido >= '2026-05-01'
and dataPedido < '2026-06-01'
order by ValorTotal asc 

select *from pedido
where FormaPagamento = 'PIX'
order by DataPedido asc 

SELECT *
FROM Pedido
ORDER BY ValorTotal DESC
LIMIT 2

select * 
from pedido 
where observacao like '%Urgente%'
-- busca por uma palavra especifica 
