-- Uma empresa de vendas tem um banco de dados com informações sobre os seus produtos. 
-- Ela precisa criar um relatório que faça um levantamento diário da quantidade de produtos comprados por dia. 
-- Para ajudar a empresa, crie um procedure para agilizar esse processo.

use atividades_bdii;

create table produto(
id_produto int auto_increment primary key,
nome_produto varchar(50) not null
);

create table vendas(
id_vendas int auto_increment primary key,
dataVenda varchar(50) not null,
quantidadeVendida varchar(50) not null,
produto_id int,
constraint foreign key (produto_id) references produto (id_produto)
);

insert into produto(nome_produto) values('HB20 1.6'),
									    ('Teneré 660cc'),      
									    ('Honda Civic');

                                      

insert into vendas(dataVenda,quantidadeVendida,produto_id) values  	('20/02/2024','2','1'),
																	('21/02/2024','4','2'),
																	('22/02/2024','6','3'),
																	('23/02/2024','3','1'),
																	('24/02/2024','5','2'),
																	('25/02/2024','7','3'),
																	('26/02/2024','8','1');


DELIMITER //

CREATE PROCEDURE produtosVendidosDia(IN vendas VARCHAR(255))
BEGIN
    SET @sql = CONCAT('SELECT * FROM ', vendas);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;

CALL produtosVendidosDia('vendas');
