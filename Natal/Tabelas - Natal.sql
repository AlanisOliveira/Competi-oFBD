--Evento de natal - Avanti 
-- Criação das tabelas conforme a estrutura acima
CREATE TABLE eventos_natal (
  evento_id SERIAL PRIMARY KEY,
  nome_evento VARCHAR(255),
  data_evento DATE,
  bairro VARCHAR(255),
  tipo_evento VARCHAR(100)
);

CREATE TABLE lojas_presentes (
  loja_id SERIAL PRIMARY KEY,
  nome_loja VARCHAR(255),
  endereco VARCHAR(255),
  tipo_artigo VARCHAR(100)
);

CREATE TABLE lista_desejos (
  desejo_id SERIAL PRIMARY KEY,
  nome_crianca VARCHAR(255),
  idade INT,
  presente_desejado VARCHAR(255),
  entregue BOOLEAN
);

CREATE TABLE decoracao_natalina (
  decoracao_id SERIAL PRIMARY KEY,
  local_decoracao VARCHAR(255),
  tipo_decoracao VARCHAR(100),
  data_instalacao DATE
);

CREATE TABLE participantes_evento (
  participante_id SERIAL PRIMARY KEY,
  nome_participante VARCHAR(255),
  evento_id INT REFERENCES eventos_natal(evento_id),
  tipo_participante VARCHAR(100)
);

CREATE TABLE vendas_presentes (
  venda_id SERIAL PRIMARY KEY,
  loja_id INT REFERENCES lojas_presentes(loja_id),
  data_venda DATE,
  quantidade INT,
  valor_total NUMERIC
);

CREATE TABLE evento_decoracao (
  decoracao_id INT REFERENCES decoracao_natalina(decoracao_id),
  evento_id INT REFERENCES eventos_natal(evento_id),
  PRIMARY KEY (decoracao_id, evento_id)
);
