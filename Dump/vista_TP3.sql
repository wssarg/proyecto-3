DROP VIEW IF EXISTS vista_TP3;
CREATE VIEW vista_TP3 AS
SELECT 
    c.id_catalogo as id,
    c.poster,
    c.titulo as titulo,
    cat.descripcion as categoria,
    (SELECT GROUP_CONCAT(g.descripcion) FROM catalogo_genero cg JOIN genero g ON g.id_genero = cg.id_genero WHERE cg.id_catalogo = c.id_catalogo) as genero,
    c.resumen as resumen,
    c.temporadas as temporadas,
    (SELECT GROUP_CONCAT(TRIM(r.nombre)) FROM catalogo_reparto cr JOIN reparto r ON r.id_reparto = cr.id_reparto WHERE cr.id_catalogo = c.id_catalogo) as reparto,
    c.trailer as trailer
FROM 
    catalogo c
    JOIN categoria cat ON cat.id_categoria = c.id_categoria
GROUP BY c.id_catalogo;