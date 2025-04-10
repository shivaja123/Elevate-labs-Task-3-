SELECT team, COUNT(medal) AS total_medals
FROM Athlete_events
WHERE year = 2008 AND medal IS NOT NULL
GROUP BY team
ORDER BY total_medals DESC;
