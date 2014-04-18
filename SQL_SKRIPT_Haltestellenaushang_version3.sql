USE gruppe3;

SELECT b.buslinienname as Linie, t.gruppe as Tage, CASE lh.haltestellennummer > Auswahl.haltestellennummer WHEN TRUE THEN 'H' ELSE 'R' END as Richtung, h.haltestellennamen as Haltestellenname, MINUTE(TIMEDIFF(lh.fahrzeit,Auswahl.fahrzeit)) as Fahrzeit
FROM (SELECT *
	 FROM linienfahrplan_haltestelle
	 WHERE haltestelle_id = 16 /* ID EINTRAGBAR */) AS Auswahl
	JOIN linienfahrplan_haltestelle lh ON Auswahl.linienfahrplan_id = lh.linienfahrplan_id
	JOIN linienfahrplan lp ON lh.linienfahrplan_id = lp.linienfahrplan_id
	JOIN buslinie b ON lp.buslinie_id = b.buslinie_id
	JOIN haltestelle h ON h.haltestelle_id = lh.haltestelle_id
	JOIN tage t ON t.tage_id = lp.tage_id
WHERE lh.haltestellennummer<>Auswahl.haltestellennummer
ORDER BY Linie, Tage, Richtung, Fahrzeit;

SELECT  b.buslinienname as Linie, t.gruppe as Tage, f.richtung as Richtung, CASE Richtung WHEN 'H' THEN  ADDTIME(f.fahrtbeginn, Auswahl.fahrzeit) ELSE ADDTIME(f.fahrtbeginn, SUBTIME(Auswahl.maxFahrzeit, Auswahl.fahrzeit)) END as Abfahrt
FROM (SELECT wahl.linienfahrplan_id as linienfahrplan_id, fahrzeit, maxFahrzeit, maxHaltenummer, haltestellennummer
     FROM (SELECT *
	       FROM linienfahrplan_haltestelle
		   WHERE haltestelle_id = 16 /* ID EINTRAGBAR */) AS wahl  
	       JOIN (SELECT linienfahrplan_id, max(fahrzeit) as maxFahrzeit, max(haltestellennummer) as maxHaltenummer
				  FROM linienfahrplan_haltestelle
				  GROUP BY linienfahrplan_id) AS lh
	       ON lh.linienfahrplan_id = wahl.linienfahrplan_id	  
	)AS Auswahl
	JOIN linienfahrplan lp ON Auswahl.linienfahrplan_id = lp.linienfahrplan_id
	JOIN buslinie b ON lp.buslinie_id = b.buslinie_id
	JOIN tage t ON t.tage_id = lp.tage_id
	JOIN fahrt f ON f.linienfahrplan_id = lp.linienfahrplan_id
WHERE (haltestellennummer <> 1 AND Richtung = 'R') OR (haltestellennummer <> maxHaltenummer AND Richtung = 'H')
ORDER BY Linie, Tage, Richtung, Abfahrt