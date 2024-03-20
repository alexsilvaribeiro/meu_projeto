/*
Uma loja tem um banco de dados que contém todo o controle de vendas de produtos e de cadastro de clientes. 
Pensando nisso, crie uma função para somar todos os clientes que foram cadastrados na loja durante um dia.
*/



create table cadastro_cliente (
id smallint PRIMARY KEY AUTO_INCREMENT,
nome varchar(25),
endereco varchar(25),
cep int(8),
data_cadastro varchar(11)
);

create table controle_vendas (
id smallint PRIMARY KEY AUTO_INCREMENT,
fk_id_cadastro_cliente smallint NOT NULL,
nome_produto varchar (25),
valor_produto float,
data_venda varchar(10),
quantidade int,
CONSTRAINT fk_cadastro_cliente FOREIGN KEY (fk_id_cadastro_cliente) REFERENCES cadastro_cliente(id) 
);


insert into cadastro_cliente (nome, cep, data_cadastro) values ('Alex', 12345678, '01/01/2024'),
															   ('Mel', 87654321, '01/01/2024'),
                                                               ('Sha', 57157157, '01/01/2024'),
                                                               ('joão', 12312345, '02/01/2024'),
                                                               ('maria', 98798765, '02/01/2024');
select * from cadastro_cliente;




DELIMITER //
CREATE FUNCTION soma_cadastro_clientes(data_parametro varchar(11)) 
RETURNS int
DETERMINISTIC
BEGIN
    DECLARE qte_clientes int;
    set @qte_clientes = 0;
    
    -- ------------------------------------------------------------------------------------------
    SELECT SUM(data_cadastro) into qte_clientes
	FROM cadastro_cliente
	WHERE data_cadastro = data_parametro;

    -- ------------------------------------------------------------------------------------------
    
    RETURN qte_clientes;
END //
DELIMITER 



SELECT soma_cadastro_clientes('01/01/2024') AS resultado;



