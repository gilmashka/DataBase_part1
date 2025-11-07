/*создание tablespace*/
CREATE TABLESPACE fast_ts 
LOCATION 'C:/Program Files/PostgreSQL/14/tablespaces/fast_ts';

CREATE TABLESPACE archive_ts 
LOCATION 'C:/Program Files/PostgreSQL/14/tablespaces/archive_ts';

/*расположение таблиц по tablespace*/
ALTER TABLE players SET TABLESPACE fast_ts;
ALTER TABLE teams SET TABLESPACE fast_ts;
ALTER TABLE matches SET TABLESPACE fast_ts;
ALTER TABLE goals SET TABLESPACE fast_ts;
ALTER TABLE player_match_stats SET TABLESPACE fast_ts;
ALTER TABLE coaches SET TABLESPACE fast_ts;

ALTER TABLE cities SET TABLESPACE archive_ts;
ALTER TABLE stadiums SET TABLESPACE archive_ts;
ALTER TABLE seasons SET TABLESPACE archive_ts;
ALTER TABLE penalties SET TABLESPACE archive_ts;
ALTER TABLE penalty_types SET TABLESPACE archive_ts;
