CREATE TABLE IF NOT EXISTS ligne_commande (
    id_commande INTEGER,
    id_produit INTEGER NOT NULL,
    quantité INTEGER NOT NULL,
	PRIMARY KEY (id_commande, id_produit),
	FOREIGN KEY (id_commande) REFERENCES commande(id_commande) ON DELETE CASCADE,
    FOREIGN KEY (id_produit) REFERENCES produit(id_produit) ON DELETE CASCADE

);

CREATE TABLE IF NOT EXISTS produit (
    id_produit INTEGER PRIMARY KEY,
    label TEXT NOT NULL,
    prix_unitaire REAL NOT NULL,
    stock INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS client (
    id_client INTEGER PRIMARY KEY,
    nom TEXT NOT NULL,
    contact TEXT UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS commande (
    id_commande INTEGER PRIMARY KEY,
    id_client INTEGER,
    date_commande TEXT NOT NULL,
	total_commande REAL NOT NULL,
	FOREIGN KEY (id_commande) REFERENCES commande(id_commande) ON DELETE CASCADE,
    FOREIGN KEY (id_client) REFERENCES client(id_client) ON DELETE CASCADE
);

INSERT INTO client VALUES
(1, 'Ali', '0606612358'),
(2, 'Ahmad', '0617815611'),
(3, 'Fatima', '0628101123'),
(4, 'Omar',  '0639123581'),
(5, 'Safa', '0641011235'),
(6, 'Rim', '0651123581'),
(7, 'Ibrahim', '0661235813'),
(8, 'Sarah',  '0671347134'),
(9, 'Abd Allah','0681459145'),
(10, 'Noor', '0691549134');

INSERT INTO produit VALUES
(1, 'Stylo Bille', 2.00, 100),
(2, 'Cahier 100 pages', 4.50, 50),
(3, 'Classeur A4', 7.00, 30),
(4, 'Surligneur', 2.50, 75),
(6, 'Pochette plastique', 0.60, 200),
(7, 'Règle 30cm', 3.50, 80),
(8, 'Feutre permanent', 6.00, 40),
(9, 'Carnet de notes', 5.50, 25),
(10, 'Calculatrice scientifique', 120.00, 15),
(11, 'Crayon graphite', 1.20, 150),
(12, 'Bloc-notes A5', 3.90, 100),
(13, 'Paire de ciseaux', 12.00, 50),
(14, 'Perforateur 2 trous', 18.00, 30),
(15, 'Gomme blanche', 1.50, 0),
(16, 'Boîte de marqueurs', 40.00, 25),
(18, 'Papier imprimante A4 (500 feuilles)', 30.00, 40),
(19, 'Ruban adhésif transparent', 8.00, 60),
(21, 'Marqueur tableau blanc', 4.50, 90),
(22, 'Agrafeuse de bureau', 25.00, 70),
(24, 'Feuilles de brouillon', 0.80, 300),
(25, 'Tableau magnétique', 220.00, 5),
(26, 'Pochettes d archivage', 18.00, 400),
(27, 'Sachet de punaises', 5.00, 50),
(28, 'Chemises cartonnées', 12.00, 150),
(29, 'Pack de stylos colorés', 45.00, 0),
(30, 'Organisateur de bureau', 95.00, 10);

INSERT INTO commande  VALUES
(1, 1, '2025-01-01', 20.50),    
(2, 2, '2025-01-01', 152.00),     
(3, 1, '2025-01-01', 136.50),    
(4, 3, '2025-01-01', 88.20),     
(5, 5, '2025-01-01', 40.00),    
(6, 4, '2025-01-02', 288.00),    
(7, 1, '2025-01-02', 29.30),      
(8, 6, '2025-01-02', 136.00),     
(9, 2, '2025-01-02', 80.00),     
(10, 4, '2025-01-03', 41.80),    
(11, 5, '2025-01-03', 40.00),   
(12, 1, '2025-01-03', 23.50),    
(13, 7, '2025-01-04', 311.00),  
(14, 8, '2025-01-04', 194.00),    
(15, 2, '2025-01-04', 235.00),   
(16, 3, '2025-01-05', 96.40),   
(17, 6, '2025-01-06', 46.00),     
(18, 7, '2025-01-07', 238.00),   
(19, 8, '2025-01-07', 670.00),  
(20, 9, '2025-01-07', 110.00),    
(21, 10, '2025-01-07', 144.00),  
(22, 1, '2025-01-08', 42.50),     
(23, 4, '2025-01-08', 205.00),    
(24, 5, '2025-01-09', 318.00),    
(25, 3, '2025-01-10', 53.00),    
(26, 6, '2025-01-10', 248.50),   
(27, 7, '2025-01-10', 58.60),   
(28, 8, '2025-01-10', 242.00),   
(29, 9, '2025-01-10', 160.00),    
(30, 10, '2025-01-10', 670.00);  


INSERT INTO ligne_commande VALUES

(1, 1, 4),(1, 2, 2),(1, 7, 1),

(2, 3, 2),(2, 8, 3),(2, 10, 1),

(3, 9, 3),(3, 10, 1),

(4, 18, 2),(4, 24, 4),(4, 22, 1),

(5, 1, 10),(5, 4, 5),(5, 15, 5),

(6, 26, 12),(6, 28, 6),

(7, 2, 3),(7, 11, 4),(7, 9, 2),

(8, 7, 2),(8, 10, 1),(8, 2, 2),

(9, 8, 4),(9, 16, 1),(9, 19, 2),

(10, 18, 1),(10, 24, 6),(10, 3, 1),

(11, 1, 5),(11, 13, 1),(11, 8, 3),

(12, 12, 5),(12, 1, 2),

(13, 30, 1),(13, 28, 3),(13, 26, 10),

(14, 18, 4),(14, 22, 2),(14, 19, 3),

(15, 1, 50),(15, 29, 3),

(16, 18, 3),(16, 24, 8),

(17, 2, 5),(17, 7, 2),(17, 9, 3),

(18, 25, 1),(18, 21, 4),

(19, 26, 20),(19, 28, 10),(19, 30, 2),

(20, 29, 2),(20, 1, 10),

(21, 24, 30),(21, 18, 4),

(22, 1, 10),(22, 11, 10),(22, 7, 3),

(23, 22, 2),(23, 30, 1),(23, 18, 2),

(24, 26, 15),(24, 28, 4),

(25, 2, 4),(25, 1, 10),(25, 15, 10),

(26, 25, 1),(26, 21, 4),(26, 7, 3),

(27, 11, 8),(27, 2, 6),(27, 9, 4),

(28, 18, 3),(28, 24, 10),(28, 26, 8),

(29, 10, 1),(29, 9, 6),(29, 7, 2),

(30, 30, 2),(30, 28, 10),(30, 26, 20);
