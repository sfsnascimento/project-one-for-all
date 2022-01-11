SELECT
    COUNT(DISTINCT(cancoes.cancao_id)) AS cancoes,
	  COUNT(DISTINCT(artista.artista_id)) AS artistas,
    COUNT(DISTINCT(album.album_id)) AS albuns
FROM SpotifyClone.artista, SpotifyClone.album, SpotifyClone.cancoes;