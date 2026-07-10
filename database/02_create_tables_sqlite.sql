-- SQLite schema for SummerTides (minimal reproducible schema)
PRAGMA foreign_keys = ON;

CREATE TABLE IF NOT EXISTS attendees (
  attendee_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  email TEXT UNIQUE,
  phone TEXT,
  age INTEGER,
  city TEXT,
  registration_date TEXT
);

CREATE TABLE IF NOT EXISTS artists (
  artist_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT NOT NULL,
  genre TEXT,
  country TEXT
);

CREATE TABLE IF NOT EXISTS stages (
  stage_id INTEGER PRIMARY KEY AUTOINCREMENT,
  stage_name TEXT NOT NULL,
  location TEXT,
  capacity INTEGER
);

CREATE TABLE IF NOT EXISTS performances (
  performance_id INTEGER PRIMARY KEY AUTOINCREMENT,
  artist_id INTEGER NOT NULL,
  stage_id INTEGER NOT NULL,
  performance_date TEXT,
  start_time TEXT,
  end_time TEXT,
  FOREIGN KEY(artist_id) REFERENCES artists(artist_id) ON DELETE CASCADE,
  FOREIGN KEY(stage_id) REFERENCES stages(stage_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS tickets (
  ticket_id INTEGER PRIMARY KEY AUTOINCREMENT,
  attendee_id INTEGER NOT NULL,
  ticket_type TEXT,
  purchase_date TEXT,
  price REAL,
  FOREIGN KEY(attendee_id) REFERENCES attendees(attendee_id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS vendors (
  vendor_id INTEGER PRIMARY KEY AUTOINCREMENT,
  vendor_name TEXT NOT NULL,
  rating REAL
);

CREATE TABLE IF NOT EXISTS sales (
  sale_id INTEGER PRIMARY KEY AUTOINCREMENT,
  vendor_id INTEGER NOT NULL,
  attendee_id INTEGER,
  sale_amount REAL,
  sale_date TEXT,
  FOREIGN KEY(vendor_id) REFERENCES vendors(vendor_id) ON DELETE CASCADE,
  FOREIGN KEY(attendee_id) REFERENCES attendees(attendee_id) ON DELETE SET NULL
);

CREATE TABLE IF NOT EXISTS sponsors (
  sponsor_id INTEGER PRIMARY KEY AUTOINCREMENT,
  sponsor_name TEXT NOT NULL,
  funding_amount REAL
);

CREATE TABLE IF NOT EXISTS stage_sponsors (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  stage_id INTEGER NOT NULL,
  sponsor_id INTEGER NOT NULL,
  FOREIGN KEY(stage_id) REFERENCES stages(stage_id) ON DELETE CASCADE,
  FOREIGN KEY(sponsor_id) REFERENCES sponsors(sponsor_id) ON DELETE CASCADE
);
