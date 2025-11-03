CREATE TABLE IF NOT EXISTS student (
    idstudent INTEGER PRIMARY KEY,
    firstname TEXT NOT NULL,
    lastname TEXT NOT NULL,
    field TEXT NOT NULL,
    average REAL NOT NULL CHECK(average BETWEEN 0 AND 20),
	absence INTEGER  NOT NULL DEFAULT 0 CHECK(absence >= 0),
    city TEXT NOT NULL
);

INSERT INTO student  VALUES
(1, 'Ali', 'Hassan', 'Mathematics', 17.5, 2,'Rabat'),
(2, 'Sarah', 'Mohammad', 'Economics', 18.3,0, 'Rabat'),
(3, 'Omar', 'Yussuf', 'Mathematics', 16.0,0, 'Kénitra'),
(4, 'Laila', 'Ahmad', 'Economics', 14.4, 0,'Rabat'),
(5, 'Khalid', 'Ali', 'Mathematics', 19.2, 0,'Salé'),
(6, 'Fatima', 'Salem', 'Economics', 15.7, 10,'Kénitra'),
(7, 'Noor', 'Hussein', 'Mathematics', 18.1, 0,'Salé'),
(8, 'Ibrahim', 'Zaid', 'Economics', 19.8,0, 'Salé'),
(9, 'Aya', 'Nasser', 'Mathematics', 14.5,2, 'Salé'),
(10, 'Huda', 'Fahim', 'Economics', 13.0, 3,'Rabat'),
(11, 'Salma', 'Jamal', 'Mathematics', 17.3,0, 'Salé'),
(12, 'Yassin', 'Othman', 'Economics', 12.4, 1,'Rabat'),
(13, 'Amina', 'Sami', 'Mathematics', 19.2,1, 'Rabat'),
(14, 'Hassan', 'Rami', 'Economics', 18.7,0, 'Rabat'),
(15, 'Tariq', 'Bassam', 'Mathematics', 15.9,10, 'Kénitra'),
(16, 'Lina', 'Aref', 'Economics', 14.2, 0,'Rabat'),
(17, 'Zainab', 'Hadi', 'Mathematics', 17.5, 5,'Rabat'),
(18, 'Rashid', 'Kamal', 'Economics', 19.1,0, 'Kénitra'),
(19, 'Aisha', 'Fadel', 'Mathematics', 12.6,0, 'Rabat'),
(20, 'Noor', 'Mahmood', 'Economics', 16.7, 2,'Rabat');
