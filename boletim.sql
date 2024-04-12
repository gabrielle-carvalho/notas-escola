create database escola;
use escola;
create table aluno(
id int auto_increment primary key,
nome varchar (40)
);

create table disciplinas (
id int auto_increment primary key,
nome varchar (40)
);

create table notas(
id int auto_increment primary key,
aluno_id int,
disciplina_id int,
nota float

);

insert into aluno (nome)
		values("João"),
			("Maria"),
            ("Pedro"),
            ("Ana");
        
      
insert into disciplinas (nome)
		values("Matemática"),
			("História"),
            ("Ciências"),
             ("Inglês");



insert into notas (aluno_id	,disciplina_id,	nota)
		values(1,	1,	8.5),
			(2	,1	,7.0),
            (1,	2,	9.0),
			(3,	2,	6.5),
			(2,	3,	7.5),
             (4,	4,	8.0);


SELECT a.nome, AVG(n.nota) AS media_notas
FROM aluno a
INNER JOIN notas n ON a.id = n.aluno_id
GROUP BY a.id, a.nome
HAVING AVG(n.nota) >= 8.0;
