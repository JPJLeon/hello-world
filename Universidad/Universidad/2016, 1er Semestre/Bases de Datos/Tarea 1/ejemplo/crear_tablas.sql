-- Table: alumnos

-- DROP TABLE alumnos;

CREATE TABLE alumnos
(
  id serial NOT NULL,
  nombre character varying(50) NOT NULL,
  username character varying(30) NOT NULL,
  password character varying(30) NOT NULL,
  fecha_nacimiento date,
  rol character varying(12),
  CONSTRAINT pk_alumnos PRIMARY KEY (id )
)

-- Table: notas

-- DROP TABLE notas;

CREATE TABLE notas
(
  id serial NOT NULL,
  alumno_id integer NOT NULL,
  nota integer NOT NULL,
  CONSTRAINT pk_notas PRIMARY KEY (id ),
  CONSTRAINT fk_nota FOREIGN KEY (alumno_id)
      REFERENCES alumnos (id) MATCH SIMPLE
      ON UPDATE NO ACTION ON DELETE CASCADE
)
