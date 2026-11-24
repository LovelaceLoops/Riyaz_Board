use riyaz_board;

INSERT INTO thaats (thaat_name) VALUES
('Bilawal'),  
('Kalyan'),  
('Khamaj'),    
('Bhairav'),  
('Kafi');    


INSERT INTO ragas (raga_name, time_of_the_day, thaat_id) VALUES
('Yaman', 'evening', 2),             
('Bhupali', 'evening', 2),           
('Hameer', 'night', 2),            
('Bhairav', 'morning', 4),        
('Ahir Bhairav', 'morning', 4),
('Bilawal', 'morning', 1),     
('Durga', 'night', 1),          
('Desh', 'night', 3),               
('Bhimpalasi', 'afternoon', 5),       
('Brindavani Sarang', 'afternoon', 5);

INSERT INTO users (user_name, email) VALUES
('mrunal', 'mrunal@example.com'), 
('minal', 'minal@example.com'),   
('manasi', 'manasi@example.com'),  
('shubha', 'shubha@example.com');  

INSERT INTO sessions (session_date, minutes, notes, raga_id, user_id) VALUES
('2026-11-16', 50, 'Morning riyaz', 5, 1),
('2026-11-19', 15, NULL, 7, 1),
('2026-11-21', 30, NULL, 1, 1),
('2026-11-23', 45, 'Afternoon session', 10, 1),
('2026-11-24', 20, NULL, 4, 1),

('2026-11-17', 20, NULL, 4, 2),
('2026-11-18', 35, 'Learning the bandish', 8, 2),
('2026-11-20', 25, NULL, 2, 2),
('2026-11-22', 15, NULL, 6, 2),
('2026-11-24', 30, 'Slow alaap', 2, 2),

('2026-11-20', 60, 'Bandish practice', 1, 3),
('2026-11-21', 25, NULL, 8, 3),
('2026-11-22', 40, NULL, 6, 3),
('2026-11-23', 35, 'Taans felt smoother', 1, 3),
('2026-11-24', 30, NULL, 9, 3),

('2026-11-15', 40, 'Practised meend', 9, 4),
('2026-11-17', 20, NULL, 10, 4),
('2026-11-19', 30, NULL, 5, 4),
('2026-11-21', 25, NULL, 7, 4),
('2026-11-23', 15, NULL, 4, 4);

SELECT * FROM thaats ORDER BY thaat_id;
select * from ragas;
select * from users;
select * from sessions;

