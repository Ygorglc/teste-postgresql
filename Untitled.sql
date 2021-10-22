CREATE TABLE aluno2 (
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

);

select* from aluno where id = 1;

update aluno 
	set nome = 'Arlindo' ,
	cpf = '01987654321',
	observacao = 'Recomendo',
	idade = 34,
	dinheiro = 100.0,
	altura = 1.70,
	ativo = false,
	data_nascimento = '1984-08-27',
	hora_aula = '17:30:00',
	matriculado_em = '2021-02-08 16:00:00'

select * from aluno where nome = 'Diogo';

delete from aluno where nome = 'Arlindo';

select nome, idade from aluno; 

select * from aluno where nome like '%i%o%';

select * from aluno where nome != 'Diogo';

select * from aluno where nome like'__ogo';

select * from aluno where nome like'__og_';

select * from aluno where cpf is null;

select * from aluno where cpf is not null;

select * from aluno where idade < 50;

select * from aluno where idade between 20 and 50;

select * from aluno where nome like 'D%' and cpf is not null ;

select * from aluno where nome like 'D%' or nome like 'A%';

select nome as "Nome do aluno", idade as "Idade do documento" from aluno; 






