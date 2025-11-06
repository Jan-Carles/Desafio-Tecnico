--LEAF: folha
--INNER: interto
--ROOT: raiz

--Só é folha (LEAF) quando o pointer é NULL
--Só é nó interno (INNER) se o pointer não for NULL
--Raiz (ROOT) só ver na imagem da árvore
--Parece uma árvore B
SELECT DISTINCT
  resultado.node_id,
  resultado.categoria AS tipo_no --criando uma coluna temporária só para exibir os ROOT, INNER e LEAF
FROM (
  SELECT 
    n.node_id,
    CASE
      WHEN n.node_id = 50 THEN 'ROOT' -- Se o node_id for 50, é nó raiz (ROOT)
      WHEN n.pointer IS NOT NULL THEN 'INNER' --Se pointer não for NULL, é nó interno(INNER)
      WHEN n.pointer IS NULL THEN 'LEAF' --Se o pointer for NULL, é folha (LEAF)
      ELSE NULL
    END AS categoria
	FROM nodes AS n --Renomeando
) AS resultado 
ORDER BY resultado.node_id; --Ordena de forma crescente

