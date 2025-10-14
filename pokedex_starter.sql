DROP DATABASE IF EXISTS `Pokedex`;
CREATE DATABASE `Pokedex`;
USE `Pokedex`;

DROP TABLE IF EXISTS types CASCADE;
DROP TABLE IF EXISTS pokemon CASCADE;
DROP TABLE IF EXISTS stats CASCADE;
DROP TABLE IF EXISTS ability CASCADE;

CREATE TABLE types (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(18),
    combo BOOLEAN NOT NULL,
)
;

CREATE TABLE pokemon (
    id INT AUTO_INCREMENT PRIMARY KEY,
    type_id INT NOT NULL,
    name VARCHAR(50) NOT NULL,
    ability_one INT NOT NULL,
    ability_two INT,
    ability_three INT,
    generation INT NOT NULL,
    legendary BOOLEAN,
    mythical BOOLEAN,
    FOREIGN KEY (type_id) REFERENCES types(id),
    FOREIGN KEY (ability_one) REFERENCES ability(id)
) 
;

CREATE TABLE stats (
    poke_id INT NOT NULL
    total INT NOT NULL,
    hp INT NOT NULL,
    attack INT NOT NULL,
    defense INT NOT NULL,
    spec_attack INT NOT NULL,
    spec_defense INT NOT NULL,
    speed INT NOT NULL,
    FOREIGN KEY (poke_id) REFERENCES pokemon(id)
)
;

CREATE TABLE ability (
    ability_id INT AUTO_INCREMENT,
    name VARCHAR(50),
    description TEXT NOT NULL,
    signature BOOLEAN NOT NULL
)
;