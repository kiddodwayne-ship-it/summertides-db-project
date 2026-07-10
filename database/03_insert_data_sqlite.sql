-- Minimal sample data to populate SummerTides
PRAGMA foreign_keys = ON;

-- attendees
INSERT INTO attendees (name,email,phone,age,city,registration_date) VALUES
('Alice Kipchoge','alice.kipchoge@email.com','0722123456',28,'Nairobi','2024-01-15'),
('Benson Mwangi','benson.mwangi@email.com','0722234567',35,'Nairobi','2024-01-16'),
('Cynthia Okonkwo','cynthia.okonkwo@email.com','0722345678',23,'Lagos','2024-01-17');

-- artists
INSERT INTO artists (name,genre,country) VALUES
('Fena Gitu','Hip Hop','Kenya'),
('Sauti Sol','Afrobeat','Kenya'),
('Burna Boy','Afrobeats','Nigeria');

-- stages
INSERT INTO stages (stage_name,location,capacity) VALUES
('Main Stage','Central Beach',5000),
('VIP Lounge Stage','North Beach',2000),
('Hip Hop Arena','East Beach',3000);

-- performances
INSERT INTO performances (artist_id,stage_id,performance_date,start_time,end_time) VALUES
(1,3,'2024-08-01','18:00:00','19:00:00'),
(2,1,'2024-08-01','19:30:00','21:00:00'),
(3,1,'2024-08-01','21:30:00','23:00:00');

-- tickets
INSERT INTO tickets (attendee_id,ticket_type,purchase_date,price) VALUES
(1,'VIP','2024-07-01',15000.0),
(2,'Regular','2024-07-02',5000.0),
(3,'Premium','2024-07-03',10000.0);

-- vendors
INSERT INTO vendors (vendor_name,rating) VALUES
('Tasty Bites Catering',4.8),
('Spicy Flames BBQ',4.7);

-- sales
INSERT INTO sales (vendor_id,attendee_id,sale_amount,sale_date) VALUES
(1,1,2500.0,'2024-08-01'),
(2,3,3200.0,'2024-08-01');

-- sponsors
INSERT INTO sponsors (sponsor_name,funding_amount) VALUES
('Safaricom Limited',8000000.0),
('TechCorp Kenya',5000000.0);

-- stage_sponsors
INSERT INTO stage_sponsors (stage_id,sponsor_id) VALUES
(1,1),(2,2);
