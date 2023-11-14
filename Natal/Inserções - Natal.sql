INSERT INTO eventos_natal (nome_evento, data_evento, bairro, tipo_evento) VALUES
('Concerto de Natal', '2023-12-24', 'Centro', 'Concerto'),
('Feira de Natal', '2023-12-10', 'Jardim das Flores', 'Feira'),
('Concurso de Decoração', '2023-12-15', 'Vila Nova', 'Concurso'),
('Parada Natalina', '2023-12-20', 'Bairro Novo', 'Desfile');

INSERT INTO lojas_presentes (nome_loja, endereco, tipo_artigo) VALUES
('Casa do Papai Noel', 'Rua das Flores, 123', 'Brinquedos'),
('Magia de Natal', 'Avenida Central, 45', 'Decorações'),
('Estrela Natalina', 'Praça da Luz, 67', 'Roupas Temáticas'),
('Doce Dezembro', 'Rua do Comércio, 89', 'Doces e Guloseimas');

INSERT INTO lista_desejos (nome_crianca, idade, presente_desejado, entregue) VALUES
('Lucas', 7, 'Carrinho de Controle Remoto', FALSE),
('Mariana', 5, 'Boneca Princesa', FALSE),
('João', 9, 'Jogo de Tabuleiro', FALSE),
('Clara', 6, 'Kit de Pintura', FALSE);

INSERT INTO decoracao_natalina (local_decoracao, tipo_decoracao, data_instalacao) VALUES
('Praça Central', 'Árvore de Natal', '2023-12-01'),
('Rua das Flores', 'Iluminação Natalina', '2023-12-02'),
('Avenida Principal', 'Presépio', '2023-12-03'),
('Parque da Cidade', 'Decoração com Tema de Inverno', '2023-12-04');

INSERT INTO participantes_evento (nome_participante, evento_id, tipo_participante) VALUES
('Ana Clara', 1, 'Visitante'),
('Pedro Gomes', 2, 'Artista'),
('Julia Santos', 3, 'Organizadora'),
('Carlos Eduardo', 4, 'Voluntário');

INSERT INTO vendas_presentes (loja_id, data_venda, quantidade, valor_total) VALUES
(1, '2023-12-05', 10, 500.00),
(2, '2023-12-06', 5, 300.00),
(3, '2023-12-07', 8, 400.00),
(4, '2023-12-08', 15, 750.00);

INSERT INTO evento_decoracao (decoracao_id, evento_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);


