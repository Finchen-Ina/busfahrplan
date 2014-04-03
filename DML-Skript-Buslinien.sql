INSERT INTO fahrer (fahrer_id, nachname, vorname) VALUES
  (1, 'Anderson', 'Julian'), 
  (2, 'Joffe', 'Kevin'),
  (3, 'Neumann', 'Amanda'),
  (4, 'Garcia', 'Carlos'),
  (5, 'Rund', 'Johanna'),
  (6, 'Brings', 'Chris'),
  (7, 'Hart', 'Lenard'),
  (8, 'Toth', 'Anne'),
  (9, 'Willems', 'Andre'),
  (10, 'Palumbo', 'Thomas'),
  (11, 'Lotte', 'Anna'),
  (12, 'Schõfer', 'Kurt'),
  (13, 'Müller', 'Anna'),
  (14, 'Mechler', 'Brian'),
  (15, 'Manson', 'Anne'),
  (16, 'Mandel', 'Debora'),
  (17, 'Tedesco', 'Janis'),
  (18, 'Talwar', 'Vikram'),
  (19, 'Szwed', 'Jossip'),
  (20, 'Schmidt', 'Diana'),
  (21, 'Schnee', 'Eduard'),
  (22, 'Otto', 'Gaby'),
  (23, 'Hamann', 'Anne'),
  (24, 'Diele', 'Marie'),
  (25, 'Jagel', 'Anna'),
  (26, 'Melfi', 'Tim'),
  (27, 'Oliver', 'Lena'),
  (28, 'Parker', 'Anne'),
  (29, 'Ricci', 'Peter'),
  (30, 'Reno', 'Graziella');
INSERT INTO bus (bus_id, busname) VALUES
  (1, 'Bus 1'),
  (2, 'Bus 2'),
  (3, 'Bus 3'),
  (4, 'Bus 4'),
  (5, 'Bus 5'),
  (6, 'Bus 6'),
  (7, 'Bus 7'),
  (8, 'Bus 8'),
  (9, 'Bus 9'),
  (10, 'Bus 10'),
  (11, 'Bus 11'),
  (12, 'Bus 12'),
  (13, 'Bus 13'),
  (14, 'Bus 14'),
  (15, 'Bus 15'); 
INSERT INTO betriebszeiten (betriebszeiten_id, start, ende) VALUES
  (1, 6, 23),
  (2, 7, 22),
  (3, 8, 20);
INSERT INTO buslinie (buslinie_id, richtung, dauer, rückfahrt, betriebszeiten_werktags, betriebszeiten_wochenende, einsetzfahrt, aussetzfahrt) VALUES
  (1, 'h', 23, 14, 1, 2, 15, 10),
  (1, 'r', 23, 14, 1, 2, 10, 15),
  (2, 'h', 33, 20, 1, 1, 15, 10),
  (2, 'r', 33, 20, 1, 1, 10, 15),
  (3, 'h', 25, 10, 1, 3, 5, 10),
  (3, 'r', 25, 10, 1, 3, 10, 5),
  (4, 'h', 30, 20, 1, 1, 15, 10),
  (4, 'r', 30, 20, 1, 1, 10, 15),
  (5, 'h', 20, 14, 1, NULL, 15, 10),
  (5, 'r', 20, 14, 1, NULL, 10, 15);
INSERT INTO buskurs (buskurs_id, fahrer_id, bus_id) VALUES
  (1, 1, 1),
  (2, 2, 2),
  (3, 3, 1),
  (4, 4, 2),
  (5, 5, 11),
  (6, 6, 12),
  (7, 7, 3),
  (8, 8, 4),
  (9, 9, 3),
  (10, 10, 4),
  (11, 11, 3),
  (12, 12, 4),
  (13, 13, 5),
  (14, 14, 6),
  (15, 15, 7),
  (16, 16, 8),
  (17, 17, 9),
  (18, 18, 10),
  (19, 19, 7),
  (20, 20, 8),
  (21, 21, 9),
  (22, 22, 10),
  (23, 23, 11),
  (24, 24, 12),
  (25, 25, 11),
  (26, 26, 12),
  (27, 27, 5),
  (28, 28, 6),
  (29, 29, 7),
  (30, 30, 8);
INSERT INTO haltestelle (haltestelle_id, namen) VALUES
  (1, 'Mettmannstraße'),
  (2, 'Salamiweg'),
  (3, 'Berliner Platz'),
  (4, 'Klabauterplatz'),
  (5, 'Theater'),
  (6, 'Paradeplatz'),
  (7, 'Eierweg'),
  (8, 'Baumstraße'),
  (9, 'Völmederstraße'),
  (10, 'Bahnhof'),
  (11, 'Igelweg'),
  (12, 'Faultierplatz'),
  (13, 'Nacktmullstraße'),
  (14, 'Kino'),
  (15, 'Westring'),
  (16, 'Alsterwall'),
  (17, 'Landhaus Günther'),
  (18, 'Stadtpark'),
  (19, 'Alter Kirchweg'),
  (20, 'Schorlemerstraße'),
  (21, 'Am Rabbenfittich'),
  (22, 'Vernerstraße'),
  (23, 'Rostockallee'),
  (24, 'Schwerinstraße'),
  (25, 'Zum Ausblick'),
  (26, 'Herrengasse'),
  (27, 'Baumwall'),
  (28, 'Berliner Tor'),
  (29, 'Lübecker Straße'),
  (30, 'Hamburger Straße'),
  (31, 'Veddel'),
  (32, 'Anckerstraße'),
  (33, 'Wohlersallee'),
  (34, 'Kleingarten'),
  (35, 'Potterweg'),
  (36, 'Merlinplatz'),
  (37, 'Tolkinweg'),
  (38, 'Bilbohaus'),
  (39, 'Bomadilplatz'),
  (40, 'Gandalfstraße'),
  (41, 'Streicherweg'),
  (42, 'Isengarten');
INSERT INTO intervalle (intervalle_id, intervall) VALUES
  (1, 30),
  (2, 60);
INSERT INTO buslinie_haltestelle (buslinie_id, haltestelle_id, bedient_wochenende, haltestellennummer, fahrzeit) VALUES
  (1, 1, true, 1, 0),
  (1, 2, true, 2, 4),
  (1, 3, true, 3, 6),
  (1, 4, true, 4, 9),
  (1, 5, true, 5, 10),
  (1, 6, true, 6, 12),
  (1, 7, true, 7, 15),
  (1, 8, true, 8, 17),
  (1, 9, true, 9, 19),
  (1, 10, true, 10, 23),
  (2, 11, true, 1, 0),
  (2, 12, true, 2, 2),
  (2, 13, true, 3, 9),
  (2, 3, true, 4, 11),
  (2, 14, true, 5,15),
  (2, 15, true, 6, 18),
  (2, 16, true, 7, 21),
  (2, 17, true, 8, 25),
  (2, 18, true, 9, 30),
  (2, 10, true, 10, 33),
  (3, 19, false, 1, 0),
  (3, 20, false, 2, 2),
  (3, 21, false, 3, 9),
  (3, 16, true, 4, 10),
  (3, 22, true, 5, 12),
  (3, 23, true, 6, 15),
  (3, 24, true, 7, 18),
  (3, 25, true, 8, 21),
  (3, 26, true, 9, 23),
  (3, 10, true, 10, 25),
  (4, 27, true, 1, 0),
  (4, 28, true, 2, 4),
  (4, 29, true, 3, 10),
  (4, 30, true, 4, 12),
  (4, 31, true, 5, 17),
  (4, 15, true, 6, 18),
  (4, 32, true, 7, 21),
  (4, 33, true, 8, 23),
  (4, 34, true, 9, 24),
  (4, 10, true, 10, 30),
  (5, 35, false, 1, 0),
  (5, 36, false, 2, 2),
  (5, 37, false, 3, 4),
  (5, 33, false, 4, 6),
  (5, 38, false, 5, 9),
  (5, 39, false, 6, 12),
  (5, 40, false, 7, 15),
  (5, 41, false, 8, 16),
  (5, 42, false, 9, 18),
  (5, 10, false, 10, 20);
INSERT INTO buskurs_buslinie (buskurs_id, buslinie_id) VALUES
  (1, 1),
  (2, 1),
  (3, 1),
  (4, 1),
  (5, 1),
  (6, 1),
  (7, 2),
  (8, 2),
  (9, 2),
  (10, 2),
  (11, 2),
  (12, 2),
  (13, 3),
  (14, 3),
  (15, 3),
  (16, 3),
  (17, 3),
  (18, 3),
  (19, 4),
  (20, 4),
  (21, 4),
  (22, 4),
  (23, 4),
  (24, 4),
  (25, 5),
  (26, 5),
  (27, 5),
  (28, 5),
  (29, 5),
  (30, 5);
INSERT INTO intervalle_buslinie (intervalle_id, buslinie_id) VALUES
  (1, 1),
  (2, 1),
  (2, 2),
  (1, 3),
  (2, 3),
  (1, 4),
  (1, 5);