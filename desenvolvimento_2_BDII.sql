use atividades_bdii;

create table dono(
id_dono int auto_increment primary key,
nome_dono varchar(50) not null
);

create table animal(
id_animal int auto_increment primary key,
nome_animal varchar(50) not null,
dono_id int,
constraint foreign key (dono_id) references dono (id_dono)
);

insert into dono(nome_dono) values ('João'),
				   ('Maria'),      
		             	   ('José');

                                      

insert into animal(nome_animal, dono_id) values ('Caramelo','2'),
						('Linguiça',null),
						('beethoven','2'),
                                                ('Brabo','1'),
                                                ('Bigode',null),
                                                ('Mel','2'),
                                                ('Pirata','1');


DELIMITER //

CREATE PROCEDURE ExibirTabela(IN dono VARCHAR(255))
BEGIN
    SET @sql = CONCAT('SELECT * FROM ', dono);
    PREPARE stmt FROM @sql;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
END //

DELIMITER ;

CALL ExibirTabela('dono');
