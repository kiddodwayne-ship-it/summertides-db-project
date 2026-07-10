title                    
-------------------------
SummerTides Database View
generated                        
---------------------------------
Generated on: 2026-07-10 09:26:34
''
--
  
line             
-----------------
=== ATTENDEES ===
attendee_id  name             email                      phone       age  city     registration_date
-----------  ---------------  -------------------------  ----------  ---  -------  -----------------
1            Alice Kipchoge   alice.kipchoge@email.com   0722123456  28   Nairobi  2024-01-15       
2            Benson Mwangi    benson.mwangi@email.com    0722234567  35   Nairobi  2024-01-16       
3            Cynthia Okonkwo  cynthia.okonkwo@email.com  0722345678  23   Lagos    2024-01-17       
''
--
  
line           
---------------
=== ARTISTS ===
artist_id  name       genre      country
---------  ---------  ---------  -------
1          Fena Gitu  Hip Hop    Kenya  
2          Sauti Sol  Afrobeat   Kenya  
3          Burna Boy  Afrobeats  Nigeria
''
--
  
line          
--------------
=== STAGES ===
stage_id  stage_name        location       capacity
--------  ----------------  -------------  --------
1         Main Stage        Central Beach  5000    
2         VIP Lounge Stage  North Beach    2000    
3         Hip Hop Arena     East Beach     3000    
''
--
  
line                
--------------------
=== PERFORMANCES ===
performance_id  artist_id  stage_id  performance_date  start_time  end_time
--------------  ---------  --------  ----------------  ----------  --------
1               1          3         2024-08-01        18:00:00    19:00:00
2               2          1         2024-08-01        19:30:00    21:00:00
3               3          1         2024-08-01        21:30:00    23:00:00
''
--
  
line           
---------------
=== TICKETS ===
ticket_id  attendee_id  ticket_type  purchase_date  price  
---------  -----------  -----------  -------------  -------
1          1            VIP          2024-07-01     15000.0
2          2            Regular      2024-07-02     5000.0 
3          3            Premium      2024-07-03     10000.0
''
--
  
line           
---------------
=== VENDORS ===
vendor_id  vendor_name           rating
---------  --------------------  ------
1          Tasty Bites Catering  4.8   
2          Spicy Flames BBQ      4.7   
''
--
  
line         
-------------
=== SALES ===
sale_id  vendor_id  attendee_id  sale_amount  sale_date 
-------  ---------  -----------  -----------  ----------
1        1          1            2500.0       2024-08-01
2        2          3            3200.0       2024-08-01
''
--
  
line            
----------------
=== SPONSORS ===
sponsor_id  sponsor_name       funding_amount
----------  -----------------  --------------
1           Safaricom Limited  8000000.0     
2           TechCorp Kenya     5000000.0     
''
--
  
line                  
----------------------
=== STAGE_SPONSORS ===
id  stage_id  sponsor_id
--  --------  ----------
1   1         1         
2   2         2         
