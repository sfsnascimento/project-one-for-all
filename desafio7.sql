SELECT a.nome AS 'artista', al.album, COUNT(s.artista_id) AS 'seguidores'
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON a.artista_id = al.artista_id
INNER JOIN SpotifyClone.seguidor AS s
ON a.artista_id = s.artista_id
GROUP BY a.nome, al.album
ORDER BY seguidores DESC, a.nome, al.album;