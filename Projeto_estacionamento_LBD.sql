CREATE TABLE clientes (
    cli_id         NUMBER NOT NULL,
    cli_nome       VARCHAR2(50),
    cli_sobrenome  VARCHAR2(50),
    cli_telefone   VARCHAR2(11),
    cli_celular    VARCHAR2(11)
);

 

ALTER TABLE clientes ADD CONSTRAINT clientes_pk PRIMARY KEY ( cli_id );

 

CREATE TABLE entradas_saidas (
    ent_id                NUMBER NOT NULL,
    ent_datahora_saida    DATE,
    ent_valor_cobrado     NUMBER(8,2),
    ent_datahora_entrada  DATE,
    vagas_vag_id          NUMBER NOT NULL,
    veiculos_vei_id       NUMBER NOT NULL
);

 

ALTER TABLE entradas_saidas ADD CONSTRAINT entradas_saidas_pk PRIMARY KEY ( ent_id );

 

CREATE TABLE tipos_vagas (
    tip_id                  NUMBER NOT NULL,
    tip_descricao_vaga      VARCHAR2(20),
    tip_preco_hora    	    NUMBER(8,2),
    tip_preco_demais_horas   NUMBER(8,2),
    tip_preco_cheio         NUMBER(8,2),
    tip_preco_mensal        NUMBER(8,2),
    tip_preco_mensal_veigde NUMBER(8,2)
);

 

ALTER TABLE tipos_vagas ADD CONSTRAINT tipos_vagas_pk PRIMARY KEY ( tip_id );

 

CREATE TABLE vagas (
    vag_id              NUMBER NOT NULL,
    vag_andar           VARCHAR2(20),
    vag_setor           VARCHAR2(20),    
    tipos_vagas_tip_id  NUMBER NOT NULL
);

 

ALTER TABLE vagas ADD CONSTRAINT vagas_pk PRIMARY KEY ( vag_id );

 

CREATE TABLE veiculos (
    vei_id           NUMBER NOT NULL,
    vei_placa        VARCHAR2(10),
    clientes_cli_id  NUMBER NOT NULL,
    vei_tipo         VARCHAR2(20),
    vei_modelo       VARCHAR2(20),
    vei_marca        VARCHAR2(20),
    vei_cor          VARCHAR2(20)
);

 

ALTER TABLE veiculos ADD CONSTRAINT veiculos_pk PRIMARY KEY ( vei_id );

 

ALTER TABLE entradas_saidas
    ADD CONSTRAINT entradas_saidas_vagas_fk FOREIGN KEY ( vagas_vag_id )
        REFERENCES vagas ( vag_id );

 

ALTER TABLE entradas_saidas
    ADD CONSTRAINT entradas_saidas_veiculos_fk FOREIGN KEY ( veiculos_vei_id )
        REFERENCES veiculos ( vei_id );
 

ALTER TABLE vagas
    ADD CONSTRAINT vagas_tipos_vagas_fk FOREIGN KEY ( tipos_vagas_tip_id )
        REFERENCES tipos_vagas ( tip_id );

 

ALTER TABLE veiculos
    ADD CONSTRAINT veiculos_clientes_fk FOREIGN KEY ( clientes_cli_id )
        REFERENCES clientes ( cli_id )

create sequence clientes_seq nocycle nocache;

create sequence veiculos_seq nocycle nocache;

create sequence tip_vaga_seq nocycle nocache;

create sequence entradas_saidas_seq nocycle nocache;

create sequence vagas_seq nocycle nocache;