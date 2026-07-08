-- ================================================
-- QUERY FONDAMENTALI — Application Support
-- Settimana 1 e 2
-- ================================================

-- SELECT base
SELECT * FROM tickets;
SELECT titolo, utente FROM tickets;

-- Filtri WHERE
SELECT * FROM tickets WHERE stato = 'aperto';
SELECT * FROM tickets WHERE priorita = 'critica';

-- AND, OR, NOT
SELECT * FROM tickets WHERE stato = 'aperto' AND priorita = 'critica';
SELECT * FROM tickets WHERE (stato = 'aperto' OR stato = 'in lavorazione') AND (priorita = 'alta' OR priorita = 'media');
SELECT * FROM tickets WHERE stato != 'chiuso';

-- IN, NOT IN
SELECT * FROM tickets WHERE stato IN ('aperto', 'in lavorazione');
SELECT * FROM tickets WHERE priorita NOT IN ('bassa', 'media');

-- IS NULL
SELECT * FROM tickets WHERE data_chiusura IS NULL;

-- ORDER BY e LIMIT
SELECT * FROM tickets ORDER BY data_apertura DESC;
SELECT * FROM tickets ORDER BY data_apertura DESC LIMIT 3;
SELECT * FROM tickets WHERE stato = 'aperto' ORDER BY data_apertura ASC LIMIT 3;

-- Funzioni aggregate
SELECT COUNT(*) FROM tickets;
SELECT COUNT(*) FROM tickets WHERE stato = 'aperto';
SELECT COUNT(*) FROM tickets WHERE priorita = 'critica';
SELECT MIN(data_apertura) FROM tickets WHERE stato = 'aperto';
SELECT MAX(data_apertura) FROM tickets;

-- GROUP BY e HAVING
SELECT stato, COUNT(*) FROM tickets GROUP BY stato;
SELECT priorita, COUNT(*) FROM tickets GROUP BY priorita;
SELECT stato, priorita, COUNT(*) FROM tickets GROUP BY stato, priorita;
SELECT utente, COUNT(*) FROM tickets GROUP BY utente HAVING COUNT(*) > 1;