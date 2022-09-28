/****** Script do comando SelectTopNRows de SSMS  ******/
SELECT [Nome], [Ano] FROM [Filmes].[dbo].[Filmes]

SELECT [Nome], [Ano], [Duracao] FROM [Filmes].[dbo].[Filmes] order by [Ano]

SELECT [Nome], [Ano], [Duracao] FROM [Filmes].[dbo].[Filmes] WHERE [Nome] LIKE 'De Volta para%' 

SELECT [Nome], [Ano], [Duracao] FROM [Filmes].[dbo].[Filmes] WHERE [Ano] = 1997

SELECT [Nome], [Ano], [Duracao] FROM [Filmes].[dbo].[Filmes] WHERE [Ano] > 2000

SELECT [Nome], [Ano], [Duracao] FROM [Filmes].[dbo].[Filmes] WHERE [Duracao] > 100 AND [Duracao] < 150 ORDER BY [Duracao]

SELECT [Ano], COUNT([Ano]) AS Quantidade FROM [Filmes].[dbo].[Filmes] GROUP BY [Ano] ORDER BY [Quantidade] DESC

SELECT [PrimeiroNome], [UltimoNome] FROM [Filmes].[dbo].[Atores] WHERE [Genero] = 'M'

SELECT [PrimeiroNome], [UltimoNome] FROM [Filmes].[dbo].[Atores] WHERE [Genero] = 'F' ORDER BY [PrimeiroNome]

SELECT f.[Nome], g.[Genero] 
FROM [Filmes].[dbo].[Filmes] AS f
INNER JOIN [Filmes].[dbo].[FilmesGenero] AS fg ON f.Id = fg.IdFilme
INNER JOIN [Filmes].[dbo].[Generos] AS g ON g.[Id] = fg.IdGenero

SELECT f.[Nome], g.[Genero] 
FROM [Filmes].[dbo].[Filmes] AS f
INNER JOIN [Filmes].[dbo].[FilmesGenero] AS fg ON f.Id = fg.IdFilme
INNER JOIN [Filmes].[dbo].[Generos] AS g ON g.[Id] = fg.IdGenero
WHERE g.[Genero] = 'Mistério'

SELECT f.[Nome], a.[PrimeiroNome], a.[UltimoNome], ef.[Papel]
FROM [Filmes].[dbo].[Filmes] AS f
INNER JOIN [Filmes].[dbo].[ElencoFilme] AS ef ON f.Id = ef.IdFilme
INNER JOIN [Filmes].[dbo].[Atores] AS a ON a.Id = ef.IdAtor