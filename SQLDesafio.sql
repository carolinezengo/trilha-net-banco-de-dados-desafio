/* 1-Selecionar Nome e ano do filme*/
SELECT Nome, Ano FROM Filmes;

/* 2-Selecionar Nome e ano do filme ordem Crescente*/
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;


/* 3- Selecionar Nome, ano e duração do filme do nome Devolta para futuro*/
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro' ;

/* 4- Selecionar Nomes dos filme do ano 1997*/
SELECT Nome FROM Filmes WHERE Ano = 1997 ;

/* 5- Selecionar Nomes, Ano, Duração dos filmes apartir dos anos 2000*/
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano >= 2000 ;

/* 6- Selecionar Nomes, Ano, Duração dos filmes com duração maior 100 e menor 150 por ordem crescente duração*/
SELECT Nome, Ano,Duracao FROM Filmes WHERE Duracao > 100 AND Duracao< 150 ORDER BY Duracao ASC;

/* 7- Selecionar Ano e Quantidade de filmes agrupado pelo ano em ordem decrescente */
SELECT Ano,Count(*) Quantidade FROM Filmes WHERE Ano <> '' GROUP BY Ano ORDER BY Quantidade DESC ;

/* 8- Buscar Primeiro e Ultimo Nome dos atores Masculino*/
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero ='M' ;

/* 9-Buscar Primeiro e Ultimo Nome dos atores do genero feminino ordenador pelo primeiro nome */
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero ='F' ORDER BY PrimeiroNome ;

/* 10-Uma busca com nome e genero dos filmes*/
SELECT Filmes.Nome,Generos.Genero FROM FilmesGenero INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id INNER JOIN FILMES ON FilmesGenero.IdFilme = Filmes.Id;

/* 11-Uma busca com nome e genero dos filmes do genero Misterio*/
SELECT Filmes.Nome,Generos.Genero FROM FilmesGenero INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id INNER JOIN FILMES ON FilmesGenero.IdFilme = Filmes.Id WHERE Generos.Genero = 'Mistério';

/* 12-Uma busca nome do filme, nome do ator e qual o pael  */
SELECT  Filmes.Nome,Atores.PrimeiroNome,Atores.UltimoNome, ElencoFilme.Papel FROM ElencoFilme INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id INNER JOIN Filmes ON ElencoFilme.IdFilme = Filmes.Id; 