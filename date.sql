SHOW timezone;

-- Timestamp is date, time, and timezone
SELECT now();

create table timeZ (ts timestamp WITHOUT time ZONE, twz timestamp with time ZONE);

INSERT INTO timeZ VALUES ('2026-01-12 10:45:00', '2026-01-12 10:45:00');

select * from timeZ;

select CURRENT_DATE;  

SELECT CURRENT_TIME;

SELECT age(CURRENT_DATE, '2000-05-04');

SELECT CURRENT_DATE - interval '1 year';

SELECT extract (month from '2026-01-25' :: date);


