/*таблица команд*/
create table teams(
	id serial primary key,
	name varchar(20) not null,
	stadium_id int unique,
	city_id int not null,
	founding_year int not null
);
/*таблица игроков*/
create table players(
	id serial primary key,
	first_name varchar(15) not null,
	second_name varchar(15) not null,
	number int not null check (number between 1 and 99),
	role varchar(20),
	team_id int, 
	unique (team_id, number)
);
/*таблица тренеров*/
create table coaches(
	id serial primary key,
	first_name varchar(15) not null,
	second_name varchar(15) not null,
	post varchar(20),
	team_id int
);
/*таблица матчей*/
create table matches(
	id serial primary key,
	home_team_id int not null,
	away_team_id int not null,
	match_date date not null,
	home_score int not null, 
	away_score int not null,
	season_id int
);
/*таблица голов*/
create table goals(
	id serial primary key,
	match_id int not null,
	who_scored_id int not null,
	who_assisted_id int,
	scoring_team_id int not null,
	missed_team_id int not null,
	period int not null check (period between 1 and 5),
	minute int not null
);
/*таблица статистики игрока в матче*/
create table player_match_stats (
    id serial primary key,
    player_id int not null,
    match_id int not null,
    goals int default  0,
    assists int default 0,
    penalty_minutes int default 0,
    time_on_ice time
);
/*таблица сезонов*/
create table seasons (
    id serial primary key,
    name varchar(10) not null,
    start_date date,
    end_date date,
    is_active boolean default false
);
/*таблица городов*/
create table cities(
	id serial primary key,
	name varchar(20) not null
);
/*таблица стадионов*/
create table stadiums(
	id serial primary key,
	name varchar(20) not null,
	city_id int not null,
	capacity int default 0
);
/*таблица штрафов*/
create table penalties (
    id serial primary key,
    match_id int not null,
    player_id int not null,
    penalty_type_id int,
    period int  not null check (period between 1 and 5),
    minute int
);
/*таблица типов штрафов*/
create table penalty_types(
	id serial primary key,
	name_of_penalty varchar(40) not null
);
