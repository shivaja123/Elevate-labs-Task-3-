SELECT sport, COUNT(medal) AS total_medals
FROM Athlete_events
WHERE medal IS NOT NULL
GROUP BY sport
ORDER BY total_medals DESC;
