--LEAF: folha
--INNER: interto
--ROOT: raiz

--Só é folha (LEAF) quando o pointer é NULL
--Só é nó interno (INNER) se o pointer não for NULL
--Só é folha (LEAF) se o o pointer for NULL
--Parece uma árvore B
SELECT 
  resultado.node_id,
  resultado.categoria AS tipo_no
FROM (
  SELECT 
    n.node_id,
    CASE
      WHEN n.node_id = 50 THEN 'ROOT'
      WHEN n.pointer IS NOT NULL THEN 'INNER'
      WHEN n.pointer IS NULL THEN 'LEAF'
      ELSE NULL
    END AS categoria
  FROM nodes AS n
  GROUP BY n.node_id, n.pointer
) AS resultado
ORDER BY resultado.node_id;
