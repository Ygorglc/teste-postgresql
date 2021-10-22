/*CREATE TABLE aluno2 (
	id serial,
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
*/


select * from aluno;

insert into aluno (
	nome,
	cpf,
	observacao,
	idade,
	dinheiro,
	altura,
	ativo,
	data_nascimento,
	hora_aula,
	matriculado_em
)

values (
	'Diogo',
	'12345678901',
	'Lorem ipsum abolt fesmxv adndiwjkas asidfodjgsnd iiajk k iaios',
	35,
	100.5,
	1.85,
	TRUE,
	'1984-08-27',
	'17:30:00',
	'2021-02-08 16:00:00'	

)
