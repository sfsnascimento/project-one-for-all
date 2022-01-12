SELECT cancao AS 'nome_musica',
	CASE
		WHEN cancao LIKE '%Streets' THEN 'Without My Code Review'
        WHEN cancao LIKE '%Her Own' THEN 'Dance With Trybe'
        WHEN cancao LIKE '%Inner Fire' THEN 'Troubles Of My Project'
        WHEN cancao LIKE '%Silly' THEN "Let's Be Nice"
        WHEN cancao LIKE '%Circus' THEN 'Magic Pull Request'
	END AS novo_nome
FROM SpotifyClone.cancoes
ORDER BY novo_nome
LIMIT 5 OFFSET 35;