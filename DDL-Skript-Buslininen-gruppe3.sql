DROP DATABASE IF EXISTS gruppe3;
CREATE DATABASE gruppe3;
USE gruppe3;
DROP TABLE IF EXISTS fahrer;
DROP TABLE IF EXISTS bus;
DROP TABLE IF EXISTS haltestelle;
DROP TABLE IF EXISTS fahrt;
DROP TABLE IF EXISTS buslinie;
DROP TABLE IF EXISTS buskurs;
DROP TABLE IF EXISTS intervalle;
DROP TABLE IF EXISTS betriebszeiten;
DROP TABLE IF EXISTS tage;
DROP TABLE IF EXISTS dienstzeiten;
DROP TABLE IF EXISTS fahrer_dienstzeiten;
DROP TABLE IF EXISTS linienfahrplan;
DROP TABLE IF EXISTS linienfahrplan_haltestelle;
CREATE TABLE IF NOT EXISTS fahrer (
  fahrer_id INT NOT NULL AUTO_INCREMENT,
  nachname VARCHAR(45),
  vorname VARCHAR(45),
  PRIMARY KEY (fahrer_id)
) ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS bus (
  bus_id INT NOT NULL AUTO_INCREMENT,
  busname VARCHAR(45),
  PRIMARY KEY (bus_id)
) ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS betriebszeiten (
  betriebszeiten_id INT NOT NULL AUTO_INCREMENT,
  beginn TIME,
  ende TIME,
  PRIMARY KEY(betriebszeiten_id)
)ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS buslinie (
  buslinie_id INT NOT NULL AUTO_INCREMENT,
  buslinienname VARCHAR(45),
  PRIMARY KEY (buslinie_id)
) ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS haltestelle (
  haltestelle_id INT NOT NULL AUTO_INCREMENT,
  haltestellennamen VARCHAR(45),
  PRIMARY KEY (haltestelle_id)
) ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS intervalle (
  intervalle_id INT NOT NULL AUTO_INCREMENT,
  intervall TIME,
  PRIMARY KEY (intervalle_id)
) ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS tage (
  tage_id INT NOT NULL AUTO_INCREMENT,
  gruppe VARCHAR(5),
  tage VARCHAR(7),
  text VARCHAR(30),
  datum VARCHAR(45),
  PRIMARY KEY (tage_id)
) ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS dienstzeiten (
  dienstzeiten_id INT NOT NULL AUTO_INCREMENT,
  dienstbeginn TIME,
  dienstende TIME,
  PRIMARY KEY (dienstzeiten_id)
) ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS linienfahrplan (
  linienfahrplan_id INT NOT NULL AUTO_INCREMENT,
  rückfahrtzeit TIME,
  betriebszeiten INT,
  buslinie_id INT,
  tage_id INT,
  einsetzfahrt TIME,
  aussetzfahrt TIME,
  intervalle_id INT,
  PRIMARY KEY (linienfahrplan_id),
  INDEX fk_linienfahrplan_buslinie (buslinie_id ASC),
  INDEX fk_linienfahrplan_betriebszeiten (betriebszeiten ASC),
  INDEX fk_lininefahrplan_tage (tage_id ASC),
  INDEX fk_linienfahrplan_intervalle (intervalle_id ASC),
  CONSTRAINT fk_linienfahrplan_betrienszeiten
    FOREIGN KEY (betriebszeiten)
	REFERENCES betriebszeiten (betriebszeiten_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
  CONSTRAINT fk_linienfahrplan_buslinie
    FOREIGN KEY (buslinie_id)
	REFERENCES buslinie (buslinie_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
  CONSTRAINT fk_linienfahrplan_tag
    FOREIGN KEY (tage_id)
	REFERENCES tage (tage_id)
	ON DELETE CASCADE
	ON UPDATE CASCADE,
  CONSTRAINT fk_linienfahrplan_intervalle
    FOREIGN KEY (intervalle_id)
	  REFERENCES intervalle (intervalle_id)
	  ON DELETE CASCADE
	  ON UPDATE CASCADE
) ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS buskurs (
  buskurs_id INT NOT NULL AUTO_INCREMENT,
  buskursname VARCHAR(30),
  fahrer_id INT NOT NULL,
  bus_id INT,
  PRIMARY KEY (buskurs_id),
  INDEX fk_Buskurs_Bus (bus_id ASC),
  INDEX fk_Buskurs_Fahrer (fahrer_id ASC),
  CONSTRAINT fk_Buskurs_Bus
    FOREIGN KEY (bus_id)
    REFERENCES bus (bus_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_Buskurs_Fahrer
    FOREIGN KEY (fahrer_id)
    REFERENCES fahrer (fahrer_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS fahrer_dienstzeiten (
  fahrer_id INT,
  dienstzeiten_id INT,
  tage_id INT,
  PRIMARY KEY(fahrer_id, dienstzeiten_id),
  INDEX fk_fahrer_dienstzeiten_fahrer (fahrer_id ASC),
  INDEX fk_fahrer_dienstzeiten_dienstzeiten (dienstzeiten_id ASC),
  INDEX fk_fahrer_dienstzeiten_tage (tage_id ASC),
  CONSTRAINT fk_fahrer_dienstzeiten_fahrer
    FOREIGN KEY (fahrer_id)
    REFERENCES fahrer (fahrer_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT fk_fahrer_dienstzeiten_dienstzeiten
    FOREIGN KEY (dienstzeiten_id)
    REFERENCES dienstzeiten (dienstzeiten_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE,
  CONSTRAINT fk_fahrer_dienstzeiten_tage
    FOREIGN KEY (tage_id)
    REFERENCES tage (tage_id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
) ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS linienfahrplan_haltestelle (
  linienfahrplan_id INT,
  haltestelle_id INT,
  haltestellennummer INT,
  fahrzeit TIME,
  PRIMARY KEY (linienfahrplan_id, haltestelle_id),
  INDEX fk_linienfahrplan_haltestelle_haltestelle (haltestelle_id ASC),
  INDEX fk_linienfahrplan_haltestelle_buslinie (linienfahrplan_id ASC),
  CONSTRAINT fk_linienfahrplan_haltestelle_haltestelle
    FOREIGN KEY (haltestelle_id)
	REFERENCES haltestelle (haltestelle_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE, 
  CONSTRAINT fk_linienfahrplan_haltestelle_buslinie
    FOREIGN KEY (linienfahrplan_id)
	REFERENCES linienfahrplan (linienfahrplan_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
) ENGINE = InnoDB;
CREATE TABLE IF NOT EXISTS fahrt (
  fahrt_id INT NOT NULL AUTO_INCREMENT,
  fahrtbeginn TIME,
  fahrtende TIME,
  richtung VARCHAR(45),
  buskurs_id INT,
  linienfahrplan_id INT,
  PRIMARY KEY (fahrt_id),
  INDEX fk_fahrt_buskurs (buskurs_id ASC),
  INDEX fk_fahrt_linienfahrplan (linienfahrplan_id ASC),
  CONSTRAINT fk_fahrt_buskurs
    FOREIGN KEY (buskurs_id)
	REFERENCES buskurs (buskurs_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
  CONSTRAINT fk_fahrt_linienfahrplan
    FOREIGN KEY (linienfahrplan_id)
	REFERENCES linienfahrplan (linienfahrplan_id)
	ON UPDATE CASCADE
	ON DELETE CASCADE
) ENGINE = InnoDB;
CREATE VIEW gruppe3.buskurse AS
  SELECT buskurs_id, buskursname, vorname, nachname, busname, datum AS zeitintervall, dienstbeginn, dienstende
    FROM buskurs
    JOIN fahrer
      ON buskurs.fahrer_id = fahrer.fahrer_id
    JOIN fahrer_dienstzeiten
      ON fahrer.fahrer_id = fahrer_dienstzeiten.fahrer_id
    JOIN dienstzeiten
      ON fahrer_dienstzeiten.dienstzeiten_id = dienstzeiten.dienstzeiten_id
    JOIN tage
      ON fahrer_dienstzeiten.tage_id = tage.tage_id
    JOIN bus
      ON buskurs.bus_id = bus.bus_id;
CREATE VIEW fahrtzeit AS
    SELECT linienfahrplan_id, fahrzeit, max(haltestellennummer), max(fahrzeit) as maxFahrzeit from linienfahrplan_haltestelle group by linienfahrplan_id;
CREATE VIEW gruppe3.dienstplan AS
    SELECT vorname AS Vorname, nachname AS Nachname, busname AS Bus, gruppe AS Wochentage, datum AS Zeitintervall, dienstbeginn AS Dienstbeginn, dienstende AS Dienstende, buskursname AS Buskurs, buslinienname AS Linie, richtung AS Richtung, haltestellennamen AS Haltestelle, CASE richtung WHEN 'H' THEN  ADDTIME(fahrtbeginn, linienfahrplan_haltestelle.fahrzeit) ELSE ADDTIME(fahrtbeginn, SUBTIME(maxFahrzeit, linienfahrplan_haltestelle.fahrzeit)) END as Abfahrt
    FROM fahrer
    LEFT JOIN  fahrer_dienstzeiten
        ON fahrer.fahrer_id = fahrer_dienstzeiten.fahrer_id
    LEFT JOIN dienstzeiten
        ON fahrer_dienstzeiten.dienstzeiten_id = dienstzeiten.dienstzeiten_id
    LEFT JOIN tage
        ON fahrer_dienstzeiten.tage_id = tage.tage_id
    LEFT JOIN buskurs
        ON fahrer.fahrer_id = buskurs.fahrer_id
     LEFT JOIN bus
ON buskurs.bus_id = bus.bus_id
LEFT JOIN fahrt
ON buskurs.buskurs_id = fahrt.buskurs_id
LEFT JOIN linienfahrplan
ON fahrt.linienfahrplan_id = linienfahrplan.linienfahrplan_id
LEFT JOIN buslinie
ON linienfahrplan.buslinie_id = buslinie.buslinie_id
LEFT JOIN linienfahrplan_haltestelle
ON linienfahrplan.linienfahrplan_id = linienfahrplan_haltestelle.linienfahrplan_id
LEFT JOIN haltestelle 
ON linienfahrplan_haltestelle.haltestelle_id = haltestelle.haltestelle_id
JOIN fahrtzeit
ON linienfahrplan.linienfahrplan_id = fahrtzeit.linienfahrplan_id;