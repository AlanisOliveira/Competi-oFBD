create table if not exists cargos(
	titulo_id serial primary key,
	nome_titulo varchar,
	salario numeric,
	horas_trabalho int -- carga horária normal para o cargo
);

create table if not exists empregados(
	funcionario_id serial primary key,
	primeiro_nome varchar,
	sobrenome varchar,
	nome_do_meio varchar,
	cargo int references cargos -- cargo do empregado
);

create table if not exists folha_de_ponto(
	funcionario_id int references empregados,
	hora_inicio timestamp, -- início real do dia de trabalho
	hora_fim timestamp -- fim real do dia de trabalho
);

-- MENU
create table if not exists nivel_menu_1(
	menu_n1_id serial primary key,
	nome_menu_n1 varchar unique);

create table if not exists refeicoes(
	refeicao_id serial primary key,
	nome_refeicao varchar unique,
	custo_refeicao numeric not null);

create table if not exists nivel_menu_2(
	menu_n2_id serial primary key,
	menu_n1 int references nivel_menu_1 (menu_n1_id),
	refeicao int references refeicoes (refeicao_id),
	nome_menu_n2 varchar);

-- PEDIDOS
create table if not exists descontos(
	desconto_id serial primary key,
	valor_desconto numeric,
	nome_desconto varchar unique);

create table if not exists pedidos(
	pedido_id serial primary key,
	garcom int references empregados (funcionario_id) not null,
	data_pedido timestamp default current_timestamp,
	desconto int references descontos (desconto_id) default 1,
	status varchar default 'Pedido aberto');

create table if not exists detalhes_pedidos(
	pedido_id int references pedidos (pedido_id) on delete cascade on update cascade,
	refeicao_id int references refeicoes (refeicao_id) not null,
	quantidade int default 1
	);

create table if not exists contas(
	conta_id serial primary key,
	pedido_id int references pedidos (pedido_id) unique,
	valor_pago numeric default 0,
	data_pagamento timestamp default current_timestamp
	);
