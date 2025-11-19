CREATE TABLE IF NOT EXISTS school (
    idschool TEXT PRIMARY KEY,
    name TEXT NOT NULL,
    city TEXT NOT NULL 
);

CREATE TABLE IF NOT EXISTS student (
    idstudent INTEGER PRIMARY KEY,
    firstname TEXT NOT NULL,
    lastname TEXT NOT NULL,
    field TEXT NOT NULL,
    average REAL NOT NULL CHECK(average BETWEEN 0 AND 20),
	idschool TEXT NOT NULL ,
	
	FOREIGN KEY (idschool) REFERENCES school (idschool)
);

INSERT INTO school  VALUES
('CP0011',  'Moulay Youssef', 'Rabat'),
('CP0012',  'Omar Alkhiyyam', 'Rabat'),
('CP0021',  'Salmane Alfarissi', 'Salé'),
('CP0591',  'Mohammad 5', 'Kénitra'),
('CP0461',  'Charif Alidrissi', 'Taza');


INSERT INTO student  VALUES
(1, 'Ali', 'Hassan', 'Mathematics', 17.5, 'CP0011'),
(2, 'Sarah', 'Mohammad', 'Economics', 18.3, 'CP0012'),
(3, 'Omar', 'Yussuf', 'Mathematics', 16.0, 'CP0591'),
(4, 'Laila', 'Ahmad', 'Economics', 14.4,  'CP0012'),
(5, 'Khalid', 'Ali', 'Mathematics', 19.2,  'CP0021'),
(6, 'Fatima', 'Salem', 'Economics', 15.7,  'CP0591'),
(7, 'Noor', 'Hussein', 'Mathematics', 18.1,  'CP0021'),
(8, 'Ibrahim', 'Zaid', 'Economics', 19.8, 'CP0021'),
(9, 'Aya', 'Nasser', 'Mathematics', 14.5, 'CP0021'),
(10, 'Huda', 'Fahim', 'Economics', 13.0,  'CP0012'),
(11, 'Salma', 'Jamal', 'Mathematics', 17.3, 'CP0021'),
(12, 'Yassin', 'Othman', 'Economics', 12.4,  'CP0012'),
(13, 'Amina', 'Sami', 'Mathematics', 19.2, 'CP0011'),
(14, 'Hassan', 'Rami', 'Economics', 18.7, 'CP0012'),
(15, 'Tariq', 'Bassam', 'Mathematics', 15.9, 'CP0591'),
(16, 'Lina', 'Aref', 'Economics', 14.2,  'CP0012'),
(17, 'Zainab', 'Hadi', 'Mathematics', 17.5,  'CP0011'),
(18, 'Rashid', 'Kamal', 'Economics', 19.1, 'CP0591'),
(19, 'Aisha', 'Fadel', 'Mathematics', 12.6, 'CP0011'),
(20, 'Noor', 'Mahmood', 'Economics', 16.7,  'CP0012');