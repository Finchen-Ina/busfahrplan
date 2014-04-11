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
INSERT INTO betriebszeiten (betriebszeiten_id, beginn, ende) VALUES
  (1, '06:00:00', '23:00:00'),
  (2, '07:00:00', '22:00:00'),
  (3, '08:00:00', '20:00:00');
INSERT INTO buslinie (buslinie_id, buslinienname) VALUES
  (1, 'Buslinie 1'),
  (2, 'Buslinie 2'),
  (3, 'Buslinie 3'),
  (4, 'Buslinie 4'),
  (5, 'Buslinie 5');
INSERT INTO buskurs (buskurs_id, buskursname, fahrer_id, bus_id) VALUES
  (1, 'Buskurs 1', 1, 1),
  (2, 'Buskurs 2', 2, 2),
  (3, 'Buskurs 3', 3, 1),
  (4, 'Buskurs 4', 4, 2),
  (5, 'Buskurs 5', 5, 11),
  (6, 'Buskurs 6', 6, 12),
  (7, 'Buskurs 7', 7, 3),
  (8, 'Buskurs 8', 8, 4),
  (9, 'Buskurs 9', 9, 3),
  (10, 'Buskurs 10', 10, 4),
  (11, 'Buskurs 11', 11, 3),
  (12, 'Buskurs 12', 12, 4),
  (13, 'Buskurs 13', 13, 5),
  (14, 'Buskurs 14', 14, 6),
  (15, 'Buskurs 15', 15, 7),
  (16, 'Buskurs 16', 16, 8),
  (17, 'Buskurs 17', 17, 9),
  (18, 'Buskurs 18', 18, 10),
  (19, 'Buskurs 19', 19, 7),
  (20, 'Buskurs 20', 20, 8),
  (21, 'Buskurs 21', 21, 9),
  (22, 'Buskurs 22', 22, 10),
  (23, 'Buskurs 23', 23, 11),
  (24, 'Buskurs 24', 24, 12),
  (25, 'Buskurs 25', 25, 11),
  (26, 'Buskurs 26', 26, 12),
  (27, 'Buskurs 27', 27, 5),
  (28, 'Buskurs 28', 28, 6),
  (29, 'Buskurs 29', 29, 7),
  (30, 'Buskurs 30', 30, 8),
  (31, 'Buskurs 31', 1, 1),
  (32, 'Buskurs 32', 2, 2),
  (33, 'Buskurs 33', 3, 1),
  (34, 'Buskurs 34', 4, 2),
  (35, 'Buskurs 35', 13, 5),
  (36, 'Buskurs 36', 14, 6),
  (37, 'Buskurs 37', 15, 7),
  (38, 'Buskurs 38', 16, 8);
INSERT INTO haltestelle (haltestelle_id, haltestellennamen) VALUES
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
  (1, '00:30:00'),
  (2, '01:00:00');
INSERT INTO tage (tage_id, gruppe, tage, text, datum) VALUES
  (1, 'MO-FR', '1111100', 'montags - freitags', '14.04. bis 18.04.2014'),
  (2, 'SA-SO', '0000011', 'samstags und sonntags', '19.04. bis 20.04.2014'),
  (3, 'MO-SO', '1111111', 'montags - sonntags', '14.04. bi 20.04.2014');
INSERT INTO dienstzeiten (dienstzeiten_id, dienstbeginn, dienstende) VALUES
  (1, '05:45:00', '14:15:00'),
  (2, '15:15:00', '23:45:00'),
  (3, '13:45:00', '15:45:00'),
  (4, '05:45:00', '11:45:00'),
  (5, '17:45:00', '23:45:00'),
  (6, '11:45:00', '17:45:00'),
  (7, '05:45:00', '12:15:00'),
  (8, '17:15:00', '23:45:00'),
  (9, '05:45:00', '11:45:00'),
  (10, '11:15:00', '17:15:00'),
  (11, '16:45:00', '23:45:00'),
  (12, '05:45:00', '13:15:00'),
  (13, '12:45:00', '18:45:00'),
  (14, '18:15:00', '23:45:00'),
  (15, '06:45:00', '14:45:00'),
  (16, '14:45:00', '22:45:00'),
  (17, '07:45:00', '14:45:00'),
  (18, '14:45:00', '20:45:00');
INSERT INTO linienfahrplan (linienfahrplan_id, rückfahrtzeit, betriebszeiten, buslinie_id, tage_id, einsetzfahrt, aussetzfahrt, intervalle_id) VALUES
  (1, '00:14:00', 1, 1, 1, '00:15:00', '00:10:00', 1), /*Richtung Bahnhof, mo-fr, 6-23 uhr, halbstündlich*/
  (2, '00:14:00', 2, 1, 2, '00:15:00', '00:10:00', 2), /*Richtung Bahnhof, sa-so, 7-22 uhr, stündlich*/
  (3, '00:20:00', 1, 2, 3, '00:15:00', '00:10:00', 2),
  (4, '00:10:00', 1, 3, 1, '00:05:00', '00:10:00', 1),
  (5, '00:10:00', 3, 3, 2, '00:05:00', '00:10:00', 2),
  (6, '00:20:00', 1, 4, 3, '00:15:00', '00:10:00', 1),
  (7, '00:14:00', 1, 5, 1, '00:15:00', '00:10:00', 1);
INSERT INTO fahrer_dienstzeiten (fahrer_id, dienstzeiten_id, tage_id) VALUES
  (1, 1, 1),
  (2, 1, 1),
  (3, 2, 1),
  (4, 2, 1),
  (5, 3, 1),
  (6, 3, 1),
  (7, 4, 3),
  (8, 4, 3),
  (9, 6, 3),
  (10, 6, 3),
  (11, 5, 3),
  (12, 5, 3),
  (13, 7, 1),
  (14, 7, 1),
  (15, 6, 1),
  (16, 6, 1),
  (17, 8, 1),
  (18, 8, 1),
  (19, 9, 3),
  (20, 9, 3),
  (21, 10, 3),
  (22, 10, 3),
  (23, 11, 3),
  (24, 11, 3),
  (25, 12, 1),
  (26, 12, 1),
  (27, 13, 1),
  (28, 13, 1),
  (29, 14, 1),
  (30, 14, 1),
  (1, 15, 2),
  (2, 15, 2),
  (3, 16, 2),
  (4, 16, 2),
  (13, 17, 2),
  (14, 17, 2),
  (15, 18, 2),
  (16, 18, 2);
INSERT INTO linienfahrplan_haltestelle (linienfahrplan_id, haltestelle_id, haltestellennummer, fahrzeit) VALUES
  (1, 1, 1, '00:00:00'),
  (1, 2, 2, '00:04:00'),
  (1, 3, 3, '00:06:00'),
  (1, 4, 4, '00:09:00'),
  (1, 5, 5, '00:10:00'),
  (1, 6, 6, '00:12:00'),
  (1, 7, 7, '00:15:00'),
  (1, 8, 8, '00:17:00'),
  (1, 9, 9, '00:19:00'),
  (1, 10, 10, '00:23:00'),
  (2, 1, 1, '00:00:00'),
  (2, 2, 2, '00:04:00'),
  (2, 3, 3, '00:06:00'),
  (2, 4, 4, '00:09:00'),
  (2, 5, 5, '00:10:00'),
  (2, 6, 6, '00:12:00'),
  (2, 7, 7, '00:15:00'),
  (2, 8, 8, '00:17:00'),
  (2, 9, 9, '00:19:00'),
  (2, 10, 10, '00:23:00'),
  (3, 11, 1, '00:00:00'),
  (3, 12, 2, '00:02:00'),
  (3, 13, 3, '00:09:00'),
  (3, 3, 4, '00:11:00'),
  (3, 14, 5, '00:15:00'),
  (3, 15, 6, '00:18:00'),
  (3, 16, 7, '00:21:00'),
  (3, 17, 8, '00:25:00'),
  (3, 18, 9, '00:30:00'),
  (3, 10, 10, '00:33:00'),
  (4, 19, 1, '00:00:00'),
  (4, 20, 2, '00:02:00'),
  (4, 21, 3, '00:09:00'),
  (4, 16, 4, '00:10:00'),
  (4, 22, 5, '00:12:00'),
  (4, 23, 6, '00:15:00'),
  (4, 24, 7, '00:18:00'),
  (4, 25, 8, '00:21:00'),
  (4, 26, 9, '00:23:00'),
  (4, 10, 10, '00:25:00'),
  (5, 16, 1, '00:00:00'),
  (5, 22, 2, '00:02:00'),
  (5, 23, 3, '00:05:00'),
  (5, 24, 4, '00:08:00'),
  (5, 25, 5, '00:11:00'),
  (5, 26, 6, '00:13:00'),
  (5, 10, 7, '00:15:00'),  
  (6, 27, 1, '00:00:00'),
  (6, 28, 2, '00:04:00'),
  (6, 29, 3, '00:10:00'),
  (6, 30, 4, '00:12:00'),
  (6, 31, 5, '00:17:00'),
  (6, 15, 6, '00:18:00'),
  (6, 32, 7, '00:21:00'),
  (6, 33, 8, '00:23:00'),
  (6, 34, 9, '00:24:00'),
  (6, 10, 10, '00:30:00'),
  (7, 35, 1, '00:00:00'),
  (7, 36, 2, '00:02:00'),
  (7, 37, 3, '00:04:00'),
  (7, 33, 4, '00:06:00'),
  (7, 38, 5, '00:09:00'),
  (7, 39, 6, '00:12:00'),
  (7, 40, 7, '00:15:00'),
  (7, 41, 8, '00:16:00'),
  (7, 42, 9, '00:18:00'),
  (7, 10, 10, '00:20:00');
DELIMITER $$
DROP PROCEDURE IF EXISTS gruppe3.fahrtInsert $$
CREATE PROCEDURE gruppe3.fahrtInsert(IN buskurs_id_hin INT, IN buskurs_id_rueck INT, IN linienfahrplan_id_in INT, IN ersteFahrtBeginn TIME, IN letzteFahrtBeginn TIME)
BEGIN
	DECLARE fahrt_beginn TIME;
	DECLARE fahrt_ende TIME;
	DECLARE richtung_hin BOOLEAN DEFAULT TRUE;
	DECLARE richtung_1_vc varchar(45);
	DECLARE richtung_2_vc varchar(45);
	DECLARE intervall TIME;
	DECLARE dauer TIME;
	DECLARE betriebszeiten_beginn TIME;
	DECLARE betriebszeiten_ende TIME;
	DECLARE ersteFahrt TIME;

	SELECT MAX(lh.fahrzeit) INTO dauer
	FROM linienfahrplan_haltestelle lh
	WHERE lh.linienfahrplan_id = linienfahrplan_id_in;
	
	SELECT iv.intervall INTO intervall
	FROM linienfahrplan lp JOIN intervalle iv
		ON lp.intervalle_id = iv.intervalle_id
	WHERE lp.linienfahrplan_id = linienfahrplan_id_in;

	SELECT bz.beginn into betriebszeiten_beginn
	FROM linienfahrplan lp JOIN betriebszeiten bz
		ON lp.betriebszeiten = bz.betriebszeiten_id
	WHERE lp.linienfahrplan_id = linienfahrplan_id_in;

	SELECT bz.ende into betriebszeiten_ende
	FROM linienfahrplan lp JOIN betriebszeiten bz
		ON lp.betriebszeiten = bz.betriebszeiten_id
	WHERE lp.linienfahrplan_id = linienfahrplan_id_in;

	SET ersteFahrt = betriebszeiten_beginn;

	WHILE ersteFahrt < ersteFahrtBeginn DO
		SET ersteFahrt = ADDTIME(ersteFahrt, intervall);
	END WHILE;
	
	SET fahrt_beginn = ersteFahrt;

	WHILE fahrt_beginn <= letzteFahrtBeginn AND fahrt_beginn <= betriebszeiten_ende DO 
		SET fahrt_ende = ADDTIME(fahrt_beginn, dauer);
		
		IF richtung_hin THEN
			SET richtung_1_vc = 'H';
			SET richtung_2_vc = 'R';
		ELSE
			SET richtung_1_vc = 'R';
			SET richtung_2_vc = 'H';
		END IF;

		INSERT INTO fahrt( fahrtbeginn, fahrtende, richtung,  buskurs_id, linienfahrplan_id) VALUES
			(fahrt_beginn, fahrt_ende, richtung_1_vc, buskurs_id_hin, linienfahrplan_id_in),
			(fahrt_beginn, fahrt_ende, richtung_2_vc, buskurs_id_rueck, linienfahrplan_id_in);

		SET fahrt_beginn = ADDTIME(fahrt_beginn, intervall);
		SET richtung_hin = NOT richtung_hin;
	END WHILE;
END $$
DELIMITER ;
/*Linie 1 mo-fr*/
CALL gruppe3.fahrtInsert(1,2,1, '06:00:00' , '13:30:00');
CALL gruppe3.fahrtInsert(3,4,1, '14:00:00' , '15:00:00');
CALL gruppe3.fahrtInsert(5,6,1, '15:30:00' , '23:00:00');
/*Linie 1 sa-so*/
CALL gruppe3.fahrtInsert(31,32,2, '07:00:00' , '14:00:00');
CALL gruppe3.fahrtInsert(33,34,2, '15:00:00' , '22:00:00');
/*Linie 2 mo-so*/
CALL gruppe3.fahrtInsert(7,8,3, '06:00:00' , '11:00:00');
CALL gruppe3.fahrtInsert(9,10,3, '12:00:00' , '17:00:00');
CALL gruppe3.fahrtInsert(11,12,3, '18:00:00' , '23:00:00');
/*Linie 3 mo-fr*/
CALL gruppe3.fahrtInsert(13,14,4, '06:00:00' , '11:30:00');
CALL gruppe3.fahrtInsert(15,16,4, '12:00:00' , '17:00:00');
CALL gruppe3.fahrtInsert(17,18,4, '17:30:00' , '23:00:00');
/*Linie 3 sa-so*/
CALL gruppe3.fahrtInsert(35,36,5, '08:00:00' , '14:00:00');
CALL gruppe3.fahrtInsert(37,38,5, '15:00:00' , '20:00:00');
/*Linie 4 mo-so*/
CALL gruppe3.fahrtInsert(19,20,6, '06:00:00' , '11:00:00');
CALL gruppe3.fahrtInsert(21,22,6, '11:30:00' , '16:30:00');
CALL gruppe3.fahrtInsert(23,24,6, '17:00:00' , '23:00:00');
/*Linie 5 mo-fr*/
CALL gruppe3.fahrtInsert(25,26,7, '06:00:00' , '12:30:00');
CALL gruppe3.fahrtInsert(27,28,7, '13:00:00' , '18:00:00');
CALL gruppe3.fahrtInsert(29,30,7, '18:30:00' , '23:00:00');

DROP PROCEDURE IF EXISTS gruppe3.fahrtInsert;