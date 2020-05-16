----------------------------------EX2.1
----------------------------------CRIAR UM BD E POPULAR

CREATE TABLE IF NOT EXISTS Movies(
    movie_id SERIAL,
    movie_name VARCHAR NOT NULL unique,
    release_year DATE NOT NULL,
    PRIMARY KEY (movie_id)
);

CREATE TABLE IF NOT EXISTS Actors(
    actor_id SERIAL,
    actor_name VARCHAR NOT NULL,
    gender VARCHAR NOT NULL,
    PRIMARY KEY (actor_id)
);

CREATE TABLE IF NOT EXISTS Characters(
    character_id SERIAL,
    
    character_name VARCHAR NOT NULL,
    actor_id INT NOT NULL,
    movie_id INT NOT NULL,
    FOREIGN KEY (actor_id) REFERENCES Actors(actor_id),
    FOREIGN KEY (movie_id) REFERENCES Movies(movie_id),
    PRIMARY KEY (character_id)
);

INSERT INTO Movies
(movie_name, release_year)
Values
('Django Unchained', '2013-01-18'),
('Inception', '2010-08-06'),
('Pulp Fiction', '1995-02-18');

INSERT INTO Actors
(actor_name, gender)
Values
('Leonardo DiCaprio', 'Male'),
('Samuel L. Jackson', 'Male'),
('Uma Turman', 'Female');

INSERT INTO Characters
(character_name, actor_id, movie_id)
Values
('Calvin Candle', 1, 1),
('Cobb', 1, 2),
('Jules Winnfield', 2, 3);

--Inserting My Favorite Movies

INSERT INTO Movies
(movie_name, release_year)
Values
('Fight Club', '1999-10-19'),
('Star Wars: Episode III – Revenge of the Sith', '2005-05-19');

INSERT INTO Actors
(actor_name, gender)
Values
('Brad Pitt', 'Male'),
('Hayden Christensen', 'Male');

INSERT INTO Characters
(character_name, actor_id, movie_id)
Values
('Tyler Durden', 4, 4),
('Anakin Skywalker', 5, 5);

----------------------------------EX2.2
----------------------------------LISTAR OS FILMES
SELECT * FROM Movies WHERE release_year < '2011-01-01';
SELECT * FROM Characters WHERE character_name LIKE 'C%';

----------------------------------EX2.3
----------------------------------ATUALIZAR O NOME
UPDATE Actors SET actor_name = 'Uma Thurman' WHERE actor_name = 'Uma Turman';

----------------------------------EX2.4
----------------------------------ADICIONAR CAMPO DA TABELA
ALTER TABLE Actors ADD birth_date VARCHAR;
UPDATE Actors SET birth_date = '1963-12-18' WHERE actor_name = 'Brad Pitt';

----------------------------------EX2.5
----------------------------------BRINCANDO COM JOIN
SELECT Actors.actor_name, Characters.character_name
FROM Actors
LEFT JOIN Characters ON Actors.actor_id = Characters.character_id
ORDER BY Actors.actor_name;
