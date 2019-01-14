DROP TABLE public.rsvps_ts;
DROP TABLE public.rsvps_epoch;

CREATE TABLE IF NOT EXISTS public.rsvps_ts(
	event_id varchar(255),
	event_name varchar(255),
	group_country varchar(6),
	group_city varchar(255),
	group_lat decimal(10, 7),
	group_lon decimal(10, 7),
	group_name varchar(255),
	group_state varchar(2),
	ts timestamp,
	response  varchar(3)
);

CREATE TABLE IF NOT EXISTS  public.rsvps_epoch(
	event_id varchar(255),
	event_name varchar(255),
	group_country varchar(6),
	group_city varchar(255),
	group_lat decimal(10, 7),
	group_lon decimal(10, 7),
	group_name varchar(255),
	group_state varchar(2),
	mtime bigint,
	response  varchar(3)
);

SELECT COUNT(*), 'TS Table' AS table_name FROM public.rsvps_ts
UNION ALL
SELECT COUNT(*), 'EPOCH Table' FROM public.rsvps_epoch;
 
SELECT
  mtime AS "time",
  group_city,
  group_lat,
  group_lon,
  count(event_id) AS "event_cnt",
  to_timestamp(mtime)
FROM rsvps_epoch
GROUP BY mtime, group_city, group_lat, group_lon
ORDER BY 1 DESC
LIMIT 10;

--TRUNCATE TABLE rsvps_epoch;
--TRUNCATE TABLE rsvps_ts;