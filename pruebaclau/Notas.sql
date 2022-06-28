CREATE DATABASE Notas USE Notas;

CREATE TABLE if not exists Personal (
  idpersonal int AUTO_INCREMENT,
  apepaterno varchar(100),
  apematerno varchar(100),
  nombre varchar(100),
  direccion varchar(100),
  fechadeingreso date,
  PRIMARY KEY (idpersonal)
) ENGINE = InnoDB;


CREATE TABLE if not exists Usuario (
  idusuario int AUTO_INCREMENT,
  idpersonal int,
  nombreusuario varchar(100),
  contraseña varchar(100),
  PRIMARY KEY (idusuario),
  FOREIGN KEY (idpersonal) REFERENCES Personal(idpersonal) ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE if not exists Nota (
  idnota int AUTO_INCREMENT,
  idusuario int,
  nota varchar(255),
  fechanota datetime,
  PRIMARY KEY (idnota),
  FOREIGN KEY (idusuario) REFERENCES Usuario(idusuario) ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE if not exists Comentario (
  idcomentario int AUTO_INCREMENT,
  idnota int,
  idusuario int,
  comentario varchar(255),
  fechacomentario datetime,
  PRIMARY KEY (idcomentario),
  FOREIGN KEY (idnota) REFERENCES Nota(idnota) ON DELETE CASCADE
) ENGINE = InnoDB;

CREATE TABLE if not exists Respuesta (
  idrespuesta int AUTO_INCREMENT,
  idcomentario int,
  idusuario int,
  respuesta varchar(255),
  fecharespuesta datetime,
  PRIMARY KEY (idrespuesta),
  FOREIGN KEY (idcomentario) REFERENCES Comentario(idcomentario) ON DELETE CASCADE
) ENGINE = InnoDB;

INSERT INTO
  Personal (
    idpersonal,
    apepaterno,
    apematerno,
    nombre,
    direccion,
    fechadeingreso
  )
VALUES
  (
    '',
    'Manrique',
    'Verdín',
    'Claudia',
    'Calle nueva #15',
    '2022-03-12'
  ),
  (
    '',
    'Gomez',
    'Guerrero',
    'Guillermo',
    'Calle vieja #65',
    '2013-04-02'
  )