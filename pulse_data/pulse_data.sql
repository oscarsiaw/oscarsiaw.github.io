
CREATE DATABASE IF NOT EXISTS heart_study;
USE heart_study;


select * from exercise;

ALTER TABLE exercise ADD COLUMN time_min INT;

UPDATE exercise
SET time_min = CASE
    WHEN time = '1 min' THEN 1
    WHEN time = '15 min' THEN 15
    WHEN time = '30 min' THEN 30
    ELSE NULL
END;

SELECT kind, AVG(pulse) AS avg_pulse
FROM exercise
GROUP BY kind;

ALTER TABLE exercise ADD COLUMN time_min INT;

UPDATE exercise
SET time_min = CASE
    WHEN time = '1 min' THEN 1
    WHEN time = '15 min' THEN 15
    WHEN time = '30 min' THEN 30
    ELSE NULL
END;


SELECT kind, AVG(pulse) AS avg_pulse
FROM exercise
GROUP BY kind;


SELECT kind, time_min, AVG(pulse) AS avg_pulse
FROM exercise
GROUP BY kind, time_min
ORDER BY kind, time_min;

SELECT id, time_min, pulse
FROM exercise
ORDER BY id, time_min;

