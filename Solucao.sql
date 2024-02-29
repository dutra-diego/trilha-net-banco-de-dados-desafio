SELECT Nome, Ano FROM Filmes


SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De volta para o Futuro'

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano >= 2000

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC

SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M'

SELECT Id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

SELECT Nome, Genero FROM Filmes, FilmesGenero, Generos WHERE(Filmes.Id = FilmesGenero.IdFilme) AND (FilmesGenero.IdGenero = Generos.Id)

SELECT  Nome, Genero FROM Filmes INNER JOIN FilmesGenero ON (Filmes.Id = FilmesGenero.IdFilme) INNER JOIN Generos ON (FilmesGenero.IdGenero = Generos.Id ) WHERE Genero = 'Mistério'

SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes INNER JOIN ElencoFilme ON  (Filmes.Id = ElencoFilme.IdFilme) INNER JOIN Atores ON (ElencoFilme.IdAtor = Atores.Id) 