
-- paso 1

SELECT * FROM registrocursos;

SELECT COUNT(*) FROM registrocursos;

-- paso 2
-- paso 2 a
SET SQL_SAFE_UPDATES = 0;

-- paso 2 b
DELETE r1 FROM RegistroCursos r1
JOIN RegistroCursos r2 
WHERE
    r1.EstudianteID = r2.EstudianteID AND
    r1.CursoID = r2.CursoID AND
    r1.Semestre = r2.Semestre AND
    r1.ID_RegistroCursos > r2.ID_RegistroCursos;

-- paso 2 c

SET SQL_SAFE_UPDATES = 1;

-- paso 3

SELECT COUNT(*) FROM registrocursos;

