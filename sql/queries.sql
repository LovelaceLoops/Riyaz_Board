USE riyaz_board;

INSERT INTO sessions (session_date, minutes, raga_id, user_id)
VALUES ('2026-11-24', 30, 1, 4);

UPDATE sessions SET minutes = 50 WHERE session_id = 21;

DELETE FROM sessions WHERE session_id = 21;

SELECT * FROM sessions
WHERE user_id = 3
ORDER BY session_date DESC;

SELECT ragas.raga_name, thaats.thaat_name
FROM ragas
JOIN thaats ON ragas.thaat_id = thaats.thaat_id;

SELECT user_id, SUM(minutes) AS total_minutes
FROM sessions
GROUP BY user_id;

SELECT raga_id, COUNT(*) AS times
FROM sessions
GROUP BY raga_id
HAVING COUNT(*) > 2;

SELECT * FROM sessions
WHERE minutes > (SELECT AVG(minutes) FROM sessions);