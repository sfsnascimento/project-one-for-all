SELECT u.usuario, COUNT(h.usuario_id) AS 'qtde_musicas_ouvidas', ROUND(SUM(c.duracao_segundos / 60), 2) AS 'total_minutos'
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico AS h
ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.cancoes AS c
ON c.cancao_id = h.cancao_id
GROUP BY u.usuario_id
ORDER BY u.usuario;