-- 1 
SELECT
Nome, Ano
FROM Filmes

--2
SELECT Nome, Ano, Duracao
FROM Filmes
ORDER BY Ano

--3
SELECT Nome, Ano, Duracao 
FROM Filmes WHERE Nome = 'De volta para o futuro'

--4
SELECT Nome, Ano, Duracao 
FROM Filmes WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao 
FROM Filmes WHERE Ano > 2000

--6 
SELECT Nome, Ano, Duracao 
FROM Filmes WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao

--7 (ordenado pela quantidade, decrescente, para ficar igual à imagem)
SELECT Ano, COUNT(*) AS Quantidade 
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8 
SELECT Id, PrimeiroNome, UltimoNome, Genero 
FROM Atores
WHERE Genero = 'M'

--9
SELECT Id, PrimeiroNome, UltimoNome, Genero 
FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT f.Nome, g.Genero
FROM Filmes f
JOIN FilmesGenero fg
ON f.Id = fg.IdFilme 
JOIN Generos g
ON g.Id = fg.IdGenero

--11
SELECT f.Nome, g.Genero
FROM Filmes f
JOIN FilmesGenero fg
ON f.Id = fg.IdFilme 
JOIN Generos g
ON g.Id = fg.IdGenero
WHERE G.Genero = 'Mistério'

--12
SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, e.Papel
FROM Filmes f
JOIN ElencoFilme e
ON e.IdFilme = f.Id
JOIN Atores a
ON a.Id = e.IdAtor