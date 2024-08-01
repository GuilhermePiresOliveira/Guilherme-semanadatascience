INSERT INTO aluno(ra) VALUES ('');

SELECT ra as Registro_Academico,id FROM aluno WHERE id = 8;

USE schooltraker;

DESCRIBE aluno;

INSERT diariobordo2(texto,datahora,fk_aluno_id)VALUES('aula top', '2024-08-01 14:24:00','7');

SELECT * FROM 
	diariobordo2
    JOIN 
    aluno
    ON diariobordo2.fk_aluno_id = aluno.id;
    
    SELECT
	d.texto,
    d.datahora,
    a.ra
    FROM
    diariobordo2 AS d
    JOIN
    aluno AS a
    ON d.fk_aluno_id = a.id;
    
SELECT * FROM diariobordo2


    
    
    -- EXERCÍCIO
    

CREATE TABLE Avaliacao (
    nota2 int,
    id int PRIMARY KEY auto_increment,
    nota4 int,
    fk_aluno_id int,
    nota3 int,
    nota1 int
);

 
ALTER TABLE avaliacao ADD CONSTRAINT FK_aluno_Avaliacao_3
    FOREIGN KEY (fk_aluno_id)
    REFERENCES aluno (id)
    ON DELETE CASCADE;
    
ALTER TABLE avaliacao
ADD CONSTRAINT CHECK (nota1 <= 25),
ADD CONSTRAINT CHECK (nota2 <= 25),
ADD CONSTRAINT CHECK (nota3 <= 25),
ADD CONSTRAINT CHECK (nota4 <= 25);


INSERT INTO avaliacao(fk_aluno_id,nota1,nota2,nota3,nota4) VALUES (15,10,20,15,5);
INSERT INTO avaliacao(fk_aluno_id,nota1,nota2,nota3,nota4) VALUES (10,14,24,12,6);
INSERT INTO avaliacao(fk_aluno_id,nota1,nota2,nota3,nota4) VALUES (18,11,25,11,3);
INSERT INTO avaliacao(fk_aluno_id,nota1,nota2,nota3,nota4) VALUES (5,16,23,11,7);
INSERT INTO avaliacao(fk_aluno_id,nota1,nota2,nota3,nota4) VALUES (8,13,2,4,12);

SELECT * FROM avaliacao;

SELECT a.ra,
	av.nota1,
    av.nota2,
    av.nota3,
    av.nota4
    FROM avaliacao av
    JOIN aluno a
    ON av.fk_aluno_id = a.id;


