CREATE DATABASE universe;
\c universe
CREATE TABLE galaxy(galaxy_id BIGSERIAL PRIMARY KEY, name VARCHAR(100) NOT NULL, age BIGINT, mass DOUBLE PRECISION, shape VARCHAR(20));
CREATE TABLE star(star_id BIGSERIAL PRIMARY KEY, name VARCHAR(100) NOT NULL, mass BIGINT, diameter NUMERIC(12,3), galaxy_id BIGINT REFERENCES galaxy(galaxy_id) NOT NULL);
CREATE TABLE planet(planet_id BIGSERIAL PRIMARY KEY, name VARCHAR(100) NOT NULL, mass BIGINT, diameter NUMERIC(12,3), is_habitable BOOLEAN, star_id BIGINT REFERENCES star(star_id) NOT NULL);
CREATE TABLE moon(moon_id BIGSERIAL PRIMARY KEY, name TEXT NOT NULL, mass BIGINT, diameter NUMERIC(12,3), planet_id BIGINT REFERENCES planet(planet_id) NOT NULL);
CREATE TABLE lifeform(lifeform_id BIGSERIAL PRIMARY KEY, name VARCHAR(100) NOT NULL, planet_id BIGINT REFERENCES planet(planet_id));

INSERT INTO galaxy(name, age, mass, shape) VALUES( 'milky way', 15000000000, 6E42, 'spiral');
INSERT INTO galaxy(name, age, mass, shape) VALUES( 'andromeda', 14000000000, 9E41, 'spiral');
INSERT INTO galaxy(name, age, mass, shape) VALUES( 'fireworks', 14500000000, 5E42, 'spiral');
INSERT INTO galaxy(name, age, mass, shape) VALUES( 'triangulum', 17500000000, 5.5E42, 'spiral');
INSERT INTO galaxy(name, age, mass, shape) VALUES( 'whirlpool', 15500000000, 7.5E42, 'spiral');
INSERT INTO galaxy(name, age, mass, shape) VALUES( 'pinwheel', 15500000000, 7.5E41, 'spiral');

INSERT INTO star(name , mass , diameter, galaxy_id) VALUES ( 'sun', 2435654236, 23453455.234, 1 );
INSERT INTO star(name , mass , diameter, galaxy_id) VALUES ( 'beetlejus', 243565423634, 123453455.234, 1 );
INSERT INTO star(name , mass , diameter, galaxy_id) VALUES ( 'alpha centauri', 2435245144, 42453455.453, 1 );
INSERT INTO star(name , mass , diameter, galaxy_id) VALUES ( 'north star', 552234133, 42445155.453, 1 );
INSERT INTO star(name , mass , diameter, galaxy_id) VALUES ( 'antares', 44134133, 77722343.453, 1 );
INSERT INTO star(name , mass , diameter, galaxy_id) VALUES ( 'Mu Cephei', 4413413322, 77724423.453, 1 );

INSERT INTO planet(name , mass , diameter , is_habitable , star_id) VALUES ('earth' , 5973600000000000000, 12742 , 'TRUE' , 1);
INSERT INTO planet(name , mass , diameter , is_habitable , star_id) VALUES ('Jupiter' , 9973600000000000000, 72742 , 'FALSE' , 1);
INSERT INTO planet(name , mass , diameter , is_habitable , star_id) VALUES ('Mercury' , 173600000000000000, 8999 , 'FALSE' , 1);
INSERT INTO planet(name , mass , diameter , is_habitable , star_id) VALUES ('Venus' , 6173600000000000000, 12542 , 'FALSE' , 1);
INSERT INTO planet(name , mass , diameter , is_habitable , star_id) VALUES ('Uranus' , 8173600000000000000, 72542 , 'FALSE' , 1);
INSERT INTO planet(name , mass , diameter , is_habitable , star_id) VALUES ('Neptune' , 8573600000000000000, 77742 , 'FALSE' , 1);
INSERT INTO planet(name , mass , diameter , is_habitable , star_id) VALUES ('Saturn' , 9573600000000000000, 87742 , 'FALSE' , 1);
INSERT INTO planet(name , mass , diameter , is_habitable , star_id) VALUES ('Pluto' , 13600000000000000, 1742 , 'FALSE' , 1);
INSERT INTO planet(name , mass , diameter , is_habitable , star_id) VALUES ('Mars' , 53600000000000000, 11742 , 'FALSE' , 1);
INSERT INTO planet(name , mass , diameter , is_habitable , star_id) VALUES ('Ash Twin' , 33600000000000000, 2742 , 'FALSE' , 1);
INSERT INTO planet(name , mass , diameter , is_habitable , star_id) VALUES ('Timber Hearth' , 5573600000000000000, 12442 , 'TRUE' , 1);
INSERT INTO planet(name , mass , diameter , is_habitable , star_id) VALUES ('Giants Deep' , 9773600000000000000, 70442 , 'TRUE' , 1);

INSERT INTO moon(name, mass , diameter, planet_id) VALUES('moon', 73459, 3474.8, 1);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Mimas', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Enceladus', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Tethys', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Telesto', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Calypso', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Dione', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Helene', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Rhea', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Titan', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Hyperion', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Iapetus', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Kiviuq', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Ijiraq', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Paaliaq', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Siarnaq', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Albiorix', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Bebhionn', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('Phoebe', 43422, 1234.56, 7);
INSERT INTO moon(name, mass , diameter, planet_id) VALUES('S/2004 S 41', 43422, 1234.56, 7);

INSERT INTO lifeform(name,planet_id) VALUES( 'Emily Ratajkowski', 1 );
INSERT INTO lifeform(name,planet_id) VALUES( 'Aubrey Plaza', 1 );
INSERT INTO lifeform(name,planet_id) VALUES( 'Selena Gomez', 1 );
