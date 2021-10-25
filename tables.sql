CREATE TABLE aluno (
	id serial primary key,
	nome VARCHAR(255),
	cpf CHAR(11),
	observacao text,
	idade INTEGER,
	dinheiro NUMERIC(10,2),
	altura real,
	ativo BOOLEAN,
	data_nascimento DATE,
	hora_aula TIME,
	matriculado_em timestamp

)


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