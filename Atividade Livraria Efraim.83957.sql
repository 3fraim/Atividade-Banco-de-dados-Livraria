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
 
 -- Trazer todos os dados. 1Questão
 select * from livraria.livros;
 
 -- Trazer o nome do livro e nome da editora. 2Questão
 select livro, editora from livraria.livros;
 
 -- Trazer o nome do livro, editora e autores do sexo masculino 3Questão
 select livro, editora, sexo, autor from livraria.livros where sexo like 'masculino';

-- Trazer o nome do livro, número de páginas do livro e autores do sexo feminino 4Questão
select livro, Npag, autor, sexo from livraria.livros where sexo like 'feminino';

-- Trazer o nome do autor, editora e ano de publicação do livros que tenham sido publicados a partir do ano 2017; 5Questão
select autor, editora, AnoP, livro from livraria.livros where AnoP >='2017';

-- Trazer o nome dos autores do sexo masculino com livrospublicados pela editora Sextante ou pela editora Alta Books; 6Questão
 select autor, editora, sexo from livraria.livros where sexo = 'masculino' and editora = 'sextante' or editora = 'alta books';
 
 -- Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor com capa comum; 7Questão
 select livro, autor, Npag, editora, AnoP, Vcapa from livraria.livros;
 
 -- Trazer o nome do livro, do autor, número de páginas, editora, ano de publicação e valor no kindle; 8Questão
 select livro, autor, Npag, editora, AnoP, Vkindle from livraria.livros;
 
 -- Trazer o nome dos autores com livros publicados pela editora Sextante; 9Questão
 select autor, editora, livro from livraria.livros where editora = 'sextante';
 
 -- Trazer o nome do livro, autores, valor com capa comum e valor no Kindle. 10Questão
 select livro, autor, Vcapa, Vkindle from livraria.livros;