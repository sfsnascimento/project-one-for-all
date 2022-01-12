SELECT DISTINCT cancao AS 'nome', COUNT(h.usuario_id) AS 'reproducoes'
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h
ON c.cancao_id = h.cancao_id
INNER JOIN SpotifyClone.usuario AS u
ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.plano AS p
ON u.plano_id = p.plano_id
AND (p.plano = 'gratuito' OR p.plano = 'pessoal')
GROUP BY cancao
ORDER BY nome;