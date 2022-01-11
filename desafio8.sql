SELECT a.nome AS 'artista', al.album
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON a.artista_id = al.artista_id AND a.nome = 'Walter Phoenix';