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
                                                

-- Inner Join: Retorna os itens comuns as duas tabelas:
select nome_dono, nome_animal from animal
inner join dono
on dono.id_dono = animal.dono_id;

-- Left Join: Registros só da tabela ALUNOS
select nome_dono, nome_animal from animal
left join dono
on dono.id_dono = animal.dono_id;

-- Right Join: Registros só da tabela DISCIPLINAS
select nome_dono, nome_animal from animal
right join dono
on dono.id_dono = animal.dono_id;

-- Outer Join, Full Outer join ou Full Join: todos os registros da tabela
select nome_dono, nome_animal from animal
left join dono
on dono.id_dono = animal.dono_id
union
select nome_dono, nome_animal from animal
right join dono
on dono.id_dono = animal.dono_id;
