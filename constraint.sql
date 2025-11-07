/* связи для players*/
alter table players add constraint fk_players_team
foreign key (team_id) references teams(id);

/*связи для teams*/
alter table teams add constraint fk_teams_city
foreign key (city_id) references cities(id);

alter table teams add constraint fk_teams_stadium
foreign key (stadium_id) references stadiums(id);

/*связи для matches*/
alter table matches add constraint fk_matches_home_team 
foreign key (home_team_id) references teams(id);

alter table matches add constraint fk_matches_away_team 
foreign key (away_team_id) references teams(id);

alter table matches add constraint fk_matches_season 
foreign key (season_id) references seasons(id);

/*связи для goals*/
alter table goals add constraint fk_goals_match 
foreign key (match_id) references matches(id);

alter table goals add constraint fk_goals_scorer 
foreign key (who_scored_id) references players(id);

alter table goals add constraint fk_goals_assister 
foreign key (who_assisted_id) references players(id);

alter table goals add constraint fk_goals_scoring_team 
foreign key (scoring_team_id) references teams(id);

alter table goals add constraint fk_goals_missed_team 
foreign key (missed_team_id) references teams(id);

/*связи для players_match_stats*/
alter table player_match_stats add constraint fk_pms_player 
foreign key (player_id) references players(id);

alter table player_match_stats add constraint fk_pms_match 
foreign key (match_id) references matches(id);

/*связи для stadiums*/
alter table stadiums add constraint fk_stadiums_city 
foreign key (city_id) references cities(id);

/*связи для penalties*/
alter table penalties add constraint fk_penalties_match 
foreign key (match_id) references matches(id);

alter table penalties add constraint fk_penalties_player 
foreign key (player_id) references players(id);

alter table penalties add constraint fk_penalties_type 
foreign key (penalty_type_id) references penalty_types(id);

/* связи для coaches*/
alter table coaches add constraint fk_coaches_team 
foreign key (team_id) references teams(id);