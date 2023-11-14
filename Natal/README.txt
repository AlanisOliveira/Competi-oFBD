Cada evento (eventos_natal) pode ter várias decorações (decoracao_natalina) associadas através da tabela evento_decoracao.
As vendas (vendas_presentes) estão relacionadas às lojas (lojas_presentes), indicando onde cada venda ocorreu.
Os participantes (participantes_evento) estão associados aos eventos (eventos_natal) que eles frequentam ou participam.

Possíveis consultas:
Listas de desejos das crianças que ainda não foram entregues:
SELECT nome_crianca, presente_desejado FROM lista_desejos WHERE entregue = FALSE;

Listar os participantes e eventos relacionados:
SELECT p.nome_participante, e.nome_evento
FROM participantes_evento p
INNER JOIN eventos_natal e ON p.evento_id = e.evento_id;

Eventos com decorações de luzes:
SELECT e.nome_evento, d.tipo_decoracao
FROM evento_decoracao ed
INNER JOIN eventos_natal e ON ed.evento_id = e.evento_id
INNER JOIN decoracao_natalina d ON ed.decoracao_id = d.decoracao_id
WHERE d.tipo_decoracao = 'Luzes';

Lojas que venderam brinquedos e o total vendido: 

SELECT l.nome_loja, SUM(v.quantidade) AS total_brinquedos_vendidos
FROM vendas_presentes v
INNER JOIN lojas_presentes l ON v.loja_id = l.loja_id
WHERE l.tipo_artigo = 'Brinquedos'
GROUP BY l.nome_loja;

Bairros com artistas de participantes:

SELECT DISTINCT e.bairro
FROM eventos_natal e
INNER JOIN participantes_evento p ON e.evento_id = p.evento_id
WHERE p.tipo_participante = 'Artista';

Listas eventos sem decoração de natal:

SELECT e.nome_evento
FROM eventos_natal e
WHERE NOT EXISTS (
  SELECT 1 FROM evento_decoracao ed WHERE ed.evento_id = e.evento_id
);

Evento de natal organizado por tipo e bairro:

SELECT tipo_evento, bairro, COUNT(*) AS numero_eventos
FROM eventos_natal
GROUP BY tipo_evento, bairro;


