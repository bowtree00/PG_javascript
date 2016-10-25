INSERT INTO "fleet" (name) VALUES('Western Fleet');
INSERT INTO "fleet" (name) VALUES('Eastern Fleet');
INSERT INTO "fleet" (name) VALUES('Northern Fleet');

INSERT INTO "ships" (name, build_date, fleet_id) VALUES('HMCS Homer', '1950-01-08', 1);
INSERT INTO "ships" (name, build_date, fleet_id) VALUES('HMCS Marge', '1955-01-15', 1);
INSERT INTO "ships" (name, build_date, fleet_id) VALUES('HMCS Maggie', '1990-05-22', 1);
INSERT INTO "ships" (name, build_date, fleet_id) VALUES('HMCS Bart', '1985-12-25', 1);

INSERT INTO "ships" (name, build_date, fleet_id) VALUES('HMCS John Paul', '1964-03-12', 2);
INSERT INTO "ships" (name, build_date, fleet_id) VALUES('HMCS Francis', '1956-07-28', 2);
INSERT INTO "ships" (name, build_date, fleet_id) VALUES('HMCS Benedict', '1980-04-21', 2);
INSERT INTO "ships" (name, build_date, fleet_id) VALUES('HMCS Pius', '1911-11-11', 2);

INSERT INTO "ships" (name, build_date, fleet_id) VALUES('HMCS NWT', '1920-11-12', 3);
INSERT INTO "ships" (name, build_date, fleet_id) VALUES('HMCS Yukon', '1940-02-25', 3);
INSERT INTO "ships" (name, build_date, fleet_id) VALUES('HMCS Nunavut', '1972-09-01', 3);
INSERT INTO "ships" (name, build_date, fleet_id) VALUES('HMCS Alaska', '1922-01-20', 3);

INSERT INTO "sailors" (name, birthdate) VALUES('Donna', '1950-01-20');
INSERT INTO "sailors" (name, birthdate) VALUES('Elvis', '1952-01-20');
INSERT INTO "sailors" (name, birthdate) VALUES('Rhona', '1962-01-20');
INSERT INTO "sailors" (name, birthdate) VALUES('Reinaldo', '1972-01-20');
INSERT INTO "sailors" (name, birthdate) VALUES('Matt', '1982-01-20');

INSERT INTO "duties" (name, duration) VALUES('Surgeon', 1);
INSERT INTO "duties" (name, duration) VALUES('Sanitation', 1);
INSERT INTO "duties" (name, duration) VALUES('Engineer', 12);
INSERT INTO "duties" (name, duration) VALUES('Fire crew', 12);


INSERT INTO "ranks" (name) VALUES('Admiral');
INSERT INTO "ranks" (name) VALUES('Commodore');
INSERT INTO "ranks" (name) VALUES('Commander');
INSERT INTO "ranks" (name) VALUES('Lieutenant');

-- People in the first fleet
INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(1, 1, 1, 1, '2017-01-01', '2017-02-01');
INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(1, 2, 2, 1, '2017-01-01', '2017-02-01');

INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(2, 3, 1, 3, '2017-01-01', '2017-02-01');

INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(3, 4, 2, 2, '2017-01-01', '2017-02-01');

INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(4, 5, 2, 2, '2017-01-01', '2017-02-01');

-- second fleet
INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(5, 1, 1, 1, '2017-02-01', '2018-02-01');
INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(6, 2, 2, 1, '2017-02-01', '2018-02-01');

INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(7, 3, 3, 3, '2017-02-01', '2018-02-01');

INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(8, 4, 4, 2, '2017-02-01', '2018-02-01');
INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(8, 5, 4, 2, '2017-02-01', '2018-02-01');

-- third fleet
INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(9, 1, 1, 1, '2018-02-01', '2017-03-01');
INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(10, 2, 2, 1, '2018-02-01', '2017-03-01');

INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(10, 3, 3, 3, '2018-02-01', '2017-03-01');

INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(11, 4, 4, 2, '2018-02-01', '2017-03-01');
INSERT INTO "link_table" (ship_id, sailor_id, duty_id, rank_id, start_date, end_date) VALUES(12, 5, 4, 2, '2018-02-01', '2017-03-01');




