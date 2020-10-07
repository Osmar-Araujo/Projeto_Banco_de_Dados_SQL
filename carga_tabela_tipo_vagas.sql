insert into tipos_vagas (
	tip_id, 
	tip_descricao_vaga, 
	tip_preco_hora, 
	tip_preco_demais_horas, 
	tip_preco_cheio, 
	tip_preco_mensal,
	tip_preco_mensal_veigde)
values (
	tip_vaga_seq.nextval,
	'comum',
	10.00,
	1.00,
	null,
	null,
	null
);

insert into tipos_vagas (
	tip_id, 
	tip_descricao_vaga, 
	tip_preco_hora, 
	tip_preco_demais_horas, 
	tip_preco_cheio, 
	tip_preco_mensal,
	tip_preco_mensal_veigde)
values (
	tip_vaga_seq.nextval,
	'PNE',
	10.00,
	1.00,
	null,
	null,
	null
);

insert into tipos_vagas (
	tip_id, 
	tip_descricao_vaga, 
	tip_preco_hora, 
	tip_preco_demais_horas, 
	tip_preco_cheio, 
	tip_preco_mensal,
	tip_preco_mensal_veigde)
values (
	tip_vaga_seq.nextval,
	'veículo grande',
	15.00,
	2.00,
	null,
	null,
	null
);

insert into tipos_vagas (
	tip_id, 
	tip_descricao_vaga, 
	tip_preco_hora, 
	tip_preco_demais_horas, 
	tip_preco_cheio, 
	tip_preco_mensal,
	tip_preco_mensal_veigde)
values (
	tip_vaga_seq.nextval,
	'mensalista',
	null,
	null,
	null,
	150.00,
	null
);

insert into tipos_vagas (
	tip_id, 
	tip_descricao_vaga, 
	tip_preco_hora, 
	tip_preco_demais_horas, 
	tip_preco_cheio, 
	tip_preco_mensal,
	tip_preco_mensal_veigde)
values (
	tip_vaga_seq.nextval,
	'mensalista_veigde',
	null,
	null,
	null,
	null,
	250.00
);