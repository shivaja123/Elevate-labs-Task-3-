SELECT sex, AVG(height) AS avg_height, AVG(weight) AS avg_weight
FROM Athlete_events
GROUP BY sex;

