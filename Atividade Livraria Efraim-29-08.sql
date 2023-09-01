-- Criando o Banco.
Create database livraria; 

-- Mostrar os bancos.
show databases;

-- acessando o banco.
use livraria;

-- Criando a tabela.
create table livraria.livros (
id int auto_increment primary key,
livro varchar(255) not null, 
autor varchar(255) not null, 
sexo varchar(255) not null, 
Npag varchar(255) not null, 
editora varchar(255) not null, 
Vcapa float not null, 
Vkindle float not null, 
AnoP varchar(255) not null
);

-- Inserindo dados.
insert into livraria.livros (livro, autor, sexo, Npag, editora, Vcapa, Vkindle, AnoP)
values
 ('Pai rico pai pobre', 'Robert t. kiyosaki', 'masculino', '336', 'alta books', '61.53', '58.45', '2018'),
  ('mindset', 'carol s. dweck', 'feminino', '312', 'objetiva', '38.99', '14.95', '2017'),
 ('como fazer amigos e influenciar pessoas', 'Dale carnegie', ' masculino', '256', 'sextante', '38.99', '32.24', '2019'),
 ('A cabana', 'william P. Young', 'masculino', '240', 'arqueiro', '35.99', '17.99', '2008'),
 ('o poder do habito', 'charles duhlgg', 'masculino', '408', 'onjetiva', '42.99', '29.90', '2012'),
 ('codigo limpo', 'robert C. martin', 'masculino', '425', 'alta books', '91.99', '87.99', '2009'),
 ('essencialismo', 'gregMckeown', 'masculino', '272', 'sextante', '53.58', '33.24', '2015'),
 ('me poupe!', 'nathalia arcuri', 'feminino', '176', 'sextante', '32.86', '17.09', '2018'),
 ('comece pelo porque', 'simon sinek', 'masculino', '256', 'sextante', '50.58', '24.90', '2018'),
 ('o alquimista', 'Paulo coelho', 'masculino', '206', 'paralela', '24.70', '14.70', '2017');
 
 -- Trazer o nome do livro, autor e valor Kindle somente de livros com valores menores que R$ 40,00;
 select livro, autor, VKindle from livraria.livros where VKindle <= 40; 
 
 -- Trazer o nome do livro e autor onde o ano de publicação seja maior que 2017, a editora seja Sextante e o sexo do autor seja feminino;
 select livro, autor, AnoP from livraria.livros where AnoP >= 2017 and sexo = 'feminino' and editora = 'sextante';
 
 -- Trazer o nome do livro e editora de livros com mais de 200 páginas;
 select livro, editora, Npag from livraria.livros where Npag >=200;

-- Trazer o nome do livro, número de páginas do livro e autores que começam com a letra "C";
select livro, Npag, autor from livraria.livros where autor like 'c%';

-- Trazer o nome do autor, editora e ano de publicação dos livros que tenham autores do sexo masculino e tenham sido publicados pela editora Alta Books;
select autor, editora, AnoP, livro from livraria.livros where sexo ='masculino' and editora = 'alta books';

-- Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum com valores acima de R$ 50,00;
 select livro, autor, editora, Npag, AnoP, Vcapa from livraria.livros where Vcapa >= '50';
 
 -- Trazer o nome do livro, editora e valor capa comum onde o nome do autor comece com Nathalia;
 select livro, autor, editora, Vcapa from livraria.livros where autor like 'nathalia%';
 
 -- Trazer o nome do livro, autor, número de páginas dos livros publicados até 2017;
 select livro, autor, Npag, AnoP from livraria.livros where AnoP <= 2017;
 
 -- Trazer o nome dos autores com livros publicados pela editora Sextante com mais de 200 páginas;
 select autor, editora, livro, Npag from livraria.livros where editora = 'sextante' and Npag >='200';
 
 -- Trazer o nome do livro, autores, valor com capa comum com valor maior que R$ 30,00 na editora Sextante;
 select livro, autor, Vcapa, editora from livraria.livros where Vcapa >= '30' and editora = 'sextante';