SELECT sex, AVG(weight) AS avg_weight
FROM Athlete_events
GROUP BY sex;
