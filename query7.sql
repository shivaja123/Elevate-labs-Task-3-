SELECT name, COUNT(medal) AS medals_won
FROM Athlete_events
WHERE medal IS NOT NULL
GROUP BY name
HAVING COUNT(medal) > (
    SELECT AVG(medal_count) 
    FROM (
        SELECT COUNT(medal) AS medal_count
        FROM Athlete_events
        WHERE medal IS NOT NULL
        GROUP BY name
    ) AS sub
);
