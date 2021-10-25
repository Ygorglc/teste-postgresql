select * from aluno;

select * from curso;

select * from aluno_curso;

select* from aluno where id = 1;

select * from aluno where nome = 'Diogo';


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

/*Uso do AS para mudar o nome da coluna ao mostrar*/
select nome as "Nome do aluno", idade as "Idade do documento" from aluno; 

/*Uso do JOIN para mesclar o select*/
select * 
	from aluno
	join aluno_curso on aluno_curso.aluno_id = aluno.id
	join curso on curso.id = aluno_curso.curso_id
	
select aluno.nome, curso.nome as "Curso"
	from aluno
	join aluno_curso on aluno_curso.aluno_id = aluno.id
	join curso on curso.id = aluno_curso.curso_id


	
/*Uso do JOIN para mesclar o select, com LEFT ele adiciona todos os dados existentes a esquerda,
 *  mas permite que os dados da direita sejam null*/
select aluno.nome, curso.nome as "Curso"
	from aluno
	left join aluno_curso on aluno_curso.aluno_id = aluno.id
	left join curso on curso.id = aluno_curso.curso_id
	
/*Uso do JOIN para mesclar o select, com RIGHT ele adiciona todos os dados existentes a direita,
 *  mas permite que os dados da esquerda sejam null*/
select aluno.nome, curso.nome as "Curso"
	from aluno
	join aluno_curso on aluno_curso.aluno_id = aluno.id
	join curso on curso.id = aluno_curso.curso_id
	
/*Uso do JOIN para mesclar o select, com FULL,
 *  ele permite que os dados independente da esquerda ou direita serem Null aparecerem*/
select aluno.nome, curso.nome as "Curso"
	from aluno
	join aluno_curso on aluno_curso.aluno_id = aluno.id
	join curso on curso.id = aluno_curso.curso_id
	
/*Uso do JOIN para mesclar o select, com CROSS ele adiciona todos os dados existentes dos dois lados e mescla os dois*/
select aluno.nome, curso.nome as "Curso"
	from aluno
	join aluno_curso on aluno_curso.aluno_id = aluno.id
	join curso on curso.id = aluno_curso.curso_id

/*Usando o ORDER By para ordenar o select, para a forma inversa se adiciona o DESC*/
	
select * from aluno order by id;

select * from aluno order by id desc;


/* USANDO o LIMIT, ele faz com que seja limitada a quantidade de buscar de acordo com o número especificado,
 * adicionando o OFFSET para escolher onde começa as buscar*/
select * from aluno limit 1;

select * from aluno limit 1 offset 1;

/*o DISTINCT faz com que não sejam repetidos valores ou outros atributos iguais*/
select distinct nome from aluno;


/*Agrupando consultas*/
select nome, id, count(id) from aluno group by nome, id;

/*Filtrando consultas agrupadas, o HAVING fara essa filtragem quando houver um grupo*/ 
select nome, count(id) 
	from aluno
	group by nome 
	having count(id)>1;

/*Funções de agregação*/

/*o COUNT cona a quantidades de ites da coluna*/
select count(id) from aluno;

/*o SUM soma os valores dentro da coluna*/
select sum(id) from aluno;

/*o MAX retorna o maior valor da coluna*/
select max(id) from aluno;

/*o MIN retorna o menor valor da coluna*/
select min(id) from aluno;

/*o AVG retorna a média dos valores da coluna*/
select avg(id) from aluno;


#Fim
