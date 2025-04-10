SELECT name
FROM Athlete_events
WHERE season = 'Summer' AND year BETWEEN 2000 AND 2016
GROUP BY name
HAVING COUNT(DISTINCT year) = (SELECT COUNT(DISTINCT year) FROM Athlete_events WHERE season = 'Summer' AND year BETWEEN 2000 AND 2016);
