create database livraria;
show databases;
use livraria;

create table livros(
  id int auto_increment,
  livro varchar (50),
  autor varchar(255),
  sexoautor varchar(255),
  numpag int,
  editora varchar(255),
  valorcapa varchar(255),
  kindle varchar(225),
  ano varchar(255),
  primary key (id)
);

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) 
values (null, "Pai Rico, Pai Pobre", "Robert T.Kiyoshi", "Masculino", 336, "Alta Books", "61,53", "58,45", "2018");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) 
values (null, "Mindset", "Carol S. Dweck", "Feminino", 312, "Objetiva", "38,99", "14,95", "2017");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) 
values (null, "Como fazer amigos e influenciar pessoas", "Dale Carnage", "Masculino", 256, "Sextante", "38,99", "33,24", "2019");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) 
values (null, "A Cabana", "William P Young", "Masculino", 240, "Arqueiro", "35,99", "17,90", "2008");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) 
values (null, "O Poder do Hábito", "Charles Duhigg", "Masculino", 408, "Objetiva", "42,99", "29,90", "2012");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) 
values (null, "Código Limpo", "Robert C. Martin", "Masculino", 425, "Alta Books", "91,99", "87,39", "2009");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) 
values (null, "Essencialismo", "Greg McKeown", "Masculino", 272, "Sextante", "53,58", "33,24", "2015");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) 
values (null, "Me Poupe!", "Nathalia Arcuri", "Feminino", 176, "Sextante", "32,86", "17,09", "2018");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) 
values (null, "Comece pelo porquê", "Simon Sinek", "Masculino", 256, "Sextante", "50,58", "24,90", "2018");

insert into livros (id, livro, autor, sexoautor, numpag, editora, valorcapa, kindle, ano) 
values (null, "O Alquimista", "Paulo Coelho", "Masculino", 206, "Paralela", "24,70", "14,70", "2017");

-- 1- Trazer o nome do livro, autor e valor Kindle somente de livros com valores menores que R$ 40,00;
select livro, autor, kindle 
from livros
where Id <11 and kindle < '40,00';

-- 2 - Trazer o nome do livro e autor onde o ano de publicação seja maior que 2017, a editora seja Sextante e o sexo do autor seja feminino;
select livro, autor, ano, editora, sexoautor 
from  livros 
where Id <11 and ano > '2017' and editora in ('Sextante') and sexoautor like '%f%';

-- 3 - Trazer o nome do livro e editora de livros com mais de 200 páginas;
select livro, editora, numpag 
from  livros 
where Id <11 and numpag > '200';

-- 4 - Trazer o nome do livro, número de páginas do livro e autores que começam com a letra "C";
select livro, numpag, autor 
from livros 
where Id <11 and autor like 'c%';

-- 5 - Trazer o nome do autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books;
select autor, editora, ano, sexoautor
from livros 
where Id <11 and editora in ('Alta Books') and sexoautor like '%Masculino%';

-- 6 - Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00;
select livro, autor, numpag, editora, ano, valorcapa 
from livros 
where Id <11 and valorcapa > '50,00';

-- 7 - Trazer o nome do livro, editora e valor capa comum onde o nome do autor comece com Nathalia;
select livro, editora, valorcapa, autor
from livros
where Id <11 and autor like '%Nathalia%';

-- 8 - Trazer o nome do livro, autor, número de páginas dos livros publicados até 2017;
select livro, autor, numpag, ano
from livros
where Id <11 and ano <= '2017';

-- 9 - Trazer o nome dos autores com livros publicados pela editora Sextante com mais de 200 páginas;
select autor, editora, numpag
from livros 
where Id <11 and editora in ('Sextante') and numpag > '200';

-- 10 - Trazer o nome do livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante;
select livro, editora, autor, valorcapa 
from livros
where Id <11 and editora in ('Sextante') and valorcapa > '30,00';
