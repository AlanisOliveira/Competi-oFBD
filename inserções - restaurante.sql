INSERT INTO cargos (nome_titulo, salario, horas_trabalho) VALUES
('Gerente', 5000.00, 40),
('Cozinheiro', 3000.00, 40),
('Garçom', 2500.00, 30),
('Auxiliar de Cozinha', 2200.00, 40),
('Bartender', 2700.00, 35);
INSERT INTO empregados (primeiro_nome, sobrenome, nome_do_meio, cargo) VALUES
('João', 'Silva', 'Carlos', 1),
('Maria', 'Pereira', 'Luiza', 2),
('Carlos', 'Oliveira', 'José', 3),
('Ana', 'Souza', 'Clara', 4),
('Pedro', 'Barbosa', 'Almeida', 5);
INSERT INTO folha_de_ponto (funcionario_id, hora_inicio, hora_fim) VALUES
(1, '2023-11-14 08:00', '2023-11-14 16:00'),
(2, '2023-11-14 09:00', '2023-11-14 17:00'),
(3, '2023-11-14 10:00', '2023-11-14 14:00');

INSERT INTO nivel_menu_1 (nome_menu_n1) VALUES
('Entradas'),
('Pratos Principais'),
('Sobremesas'),
('Bebidas');

INSERT INTO refeicoes (nome_refeicao, custo_refeicao) VALUES
('Feijoada', 25.00),
('Pizza Margherita', 30.00),
('Sorvete de Chocolate', 10.00),
('Caipirinha', 15.00);

INSERT INTO nivel_menu_2 (menu_n1, refeicao, nome_menu_n2) VALUES
(1, 1, 'Feijoada Executiva'),
(2, 2, 'Pizza Família');

INSERT INTO descontos (valor_desconto, nome_desconto) VALUES
(5.00, 'Desconto de Aniversário'),
(10.00, 'Desconto ifood');

INSERT INTO pedidos (garcom, desconto, status) VALUES
(1, 1, 'Pedido aberto'),
(2, 2, 'Pedido fechado');

INSERT INTO detalhes_pedidos (pedido_id, refeicao_id, quantidade) VALUES
(1, 1, 2),
(2, 2, 1);

INSERT INTO contas (pedido_id, valor_pago) VALUES
(1, 50.00),
(2, 30.00);



