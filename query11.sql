CREATE VIEW medals AS
SELECT team, COUNT(*) AS gold_medals
FROM Athlete_events
WHERE medal = 'Gold'
GROUP BY team;
