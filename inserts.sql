drop table curso;
drop table aluno;

create table curso (

	id INTEGER primary key,
	nome VARCHAR(255) not null

);


create table aluno_curso (
	aluno_id INTEGER,
	curso_id INTEGER,
	primary key (aluno_id, curso_id),
	
	foreign key (aluno_id) references  aluno (id)

)
/*insert into curso (id, nome) values (null, null);*/
insert into curso (id, nome) values (1,'Java');
insert into curso (id, nome) values (2,'C');
insert into curso (id, nome) values (3,'Python');


select * from curso;


insert into aluno_curso (aluno_id, curso_id) values (1,1);
insert into aluno_curso (aluno_id, curso_id) values (2,2);
insert into aluno_curso (aluno_id, curso_id) values (3,3);
insert into aluno_curso (aluno_id, curso_id) values (4,1);

















/*Fim*/