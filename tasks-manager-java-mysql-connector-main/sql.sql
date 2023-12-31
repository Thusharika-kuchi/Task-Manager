/* DATABASE */
CREATE DATABASE IF NOT EXISTS tasks_manager DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
USE tasks_manager;
/* TABLE TASKS */
CREATE TABLE tasks (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(50) NOT NULL,
  content VARCHAR(255) NOT NULL,
  is_completed BOOLEAN NOT NULL,
  date_created DATETIME NOT NULL,
  PRIMARY KEY (id)
) ENGINE = InnoDB;

/* CRUD QUERIES */
/* Create one */
INSERT INTO
  tasks (
    id,
    title,
    content,
    is_completed,
    date_created
  )
VALUES
  (
    NULL,
    'Prueba',
    'bla bla bla bla',
    '0',
    '2022-04-25 18:55:43.000000'
  );

/* Read all */
SELECT
  *
FROM
  tasks;

/* Read one by id */
SELECT
  *
FROM
  tasks
WHERE
  id = 1;

/* Update one by id */
UPDATE
  tasks
SET
  title = 'Prueba changed',
  content = 'bla changed',
  is_completed = '1'
WHERE
  id = 1;

/* Delete one by id */
DELETE FROM
  tasks
WHERE
  id = 1;