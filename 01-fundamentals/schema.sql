-- ================================================
-- SCHEMA: support_practice
-- Descrizione: Database di pratica per scenari
-- reali di Application Support Engineering
-- ================================================

CREATE DATABASE support_practice;

\c support_practice

-- Tabella principale: ticket di supporto
CREATE TABLE tickets (
    id SERIAL PRIMARY KEY,
    titolo VARCHAR(200),
    stato VARCHAR(50),
    priorita VARCHAR(20),
    utente VARCHAR(100),
    data_apertura DATE,
    data_chiusura DATE
);

-- Tabella utenti registrati
CREATE TABLE utenti (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100),
    nome VARCHAR(100),
    piano VARCHAR(50),
    data_registrazione DATE
);

-- Dati di esempio: tickets
INSERT INTO tickets (titolo, stato, priorita, utente, data_apertura, data_chiusura) VALUES
('Login non funziona', 'chiuso', 'alta', 'mario.rossi@azienda.com', '2024-01-10', '2024-01-10'),
('Pagina bianca su dashboard', 'aperto', 'media', 'giulia.bianchi@azienda.com', '2024-01-12', NULL),
('Errore 500 su checkout', 'aperto', 'critica', 'luca.verdi@azienda.com', '2024-01-13', NULL),
('Password dimenticata', 'chiuso', 'bassa', 'anna.neri@azienda.com', '2024-01-11', '2024-01-11'),
('App lenta su mobile', 'in lavorazione', 'media', 'carlo.esposito@azienda.com', '2024-01-13', NULL),
('Errore 500 su checkout', 'aperto', 'critica', 'franco.marino@azienda.com', '2024-01-14', NULL),
('Notifiche non arrivano', 'aperto', 'media', 'mario.rossi@azienda.com', '2024-01-15', NULL);

-- Dati di esempio: utenti
INSERT INTO utenti (email, nome, piano, data_registrazione) VALUES
('mario.rossi@azienda.com', 'Mario Rossi', 'premium', '2023-06-01'),
('giulia.bianchi@azienda.com', 'Giulia Bianchi', 'base', '2023-08-15'),
('luca.verdi@azienda.com', 'Luca Verdi', 'premium', '2023-05-20'),
('anna.neri@azienda.com', 'Anna Neri', 'base', '2023-09-01'),
('carlo.esposito@azienda.com', 'Carlo Esposito', 'enterprise', '2023-04-10');
-- Nota: franco.marino non e in tabella utenti (utile per esempi LEFT JOIN)