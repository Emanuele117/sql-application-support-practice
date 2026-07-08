# SQL Fundamentals — Note di Studio

## Struttura base di una query
SELECT colonne    -- cosa vuoi vedere
FROM tabella      -- da dove
WHERE condizione  -- filtro (opzionale)
ORDER BY colonna  -- ordinamento (opzionale)
LIMIT numero      -- limita risultati (opzionale)

L'ordine e fisso: se lo cambi PostgreSQL da errore.

## Operatori utili
- `=` uguale
- `!=` o `<>` diverso
- `AND` entrambe le condizioni vere
- `OR` almeno una condizione vera
- `NOT` nega la condizione
- `IN (a, b, c)` cerca tra piu valori
- `IS NULL` valore vuoto
- `IS NOT NULL` valore non vuoto

## Funzioni aggregate
- `COUNT(*)` conta le righe
- `MIN(colonna)` valore minimo
- `MAX(colonna)` valore massimo
- `SUM(colonna)` somma (su valori numerici)
- `AVG(colonna)` media (su valori numerici)

## GROUP BY — regola fondamentale
Nel SELECT puoi mettere solo:
- Le colonne presenti nel GROUP BY
- Funzioni aggregate (COUNT, SUM, ecc.)

## HAVING vs WHERE
- WHERE filtra PRIMA del raggruppamento
- HAVING filtra DOPO il raggruppamento
- Usa HAVING sempre insieme a GROUP BY

## Errori comuni
- Cercare 'mario.rossi' invece di 'mario.rossi@azienda.com' -> 0 risultati
- SQL ordina le stringhe alfabeticamente, non per logica di business
- GROUP BY e HAVING sono clausole separate, non si concatenano con virgola