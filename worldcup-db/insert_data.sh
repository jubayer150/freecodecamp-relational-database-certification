#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

$PSQL "TRUNCATE games, teams RESTART IDENTITY;"

$PSQL "INSERT INTO teams(name) VALUES
('Argentina'),
('Belgium'),
('Brazil'),
('Chile'),
('Colombia'),
('Costa Rica'),
('Croatia'),
('Denmark'),
('England'),
('France'),
('Germany'),
('Greece'),
('Japan'),
('Mexico'),
('Netherlands'),
('Nigeria'),
('Portugal'),
('Russia'),
('Spain'),
('Sweden'),
('Switzerland'),
('United States'),
('Uruguay'),
('Algeria')
ON CONFLICT (name) DO NOTHING;"

$PSQL "TRUNCATE games RESTART IDENTITY;"

$PSQL "
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Final', 10, 7, 4, 2);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Third Place', 2, 9, 2, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Semi-Final', 7, 9, 2, 1);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Semi-Final', 10, 2, 1, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Quarter-Final', 7, 18, 3, 2);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Quarter-Final', 9, 20, 2, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Quarter-Final', 2, 3, 2, 1);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Quarter-Final', 10, 23, 2, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Eighth-Final', 9, 5, 2, 1);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Eighth-Final', 20, 21, 1, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Eighth-Final', 2, 13, 3, 2);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Eighth-Final', 3, 14, 2, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Eighth-Final', 7, 8, 2, 1);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Eighth-Final', 18, 19, 2, 1);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Eighth-Final', 23, 17, 2, 1);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2018, 'Eighth-Final', 10, 1, 4, 3);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Final', 11, 1, 1, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Third Place', 15, 3, 3, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Semi-Final', 1, 15, 1, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Semi-Final', 11, 3, 7, 1);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Quarter-Final', 15, 6, 1, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Quarter-Final', 1, 2, 1, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Quarter-Final', 3, 5, 2, 1);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Quarter-Final', 11, 10, 1, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Eighth-Final', 3, 4, 2, 1);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Eighth-Final', 5, 23, 2, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Eighth-Final', 10, 16, 2, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Eighth-Final', 11, 24, 2, 1);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Eighth-Final', 15, 14, 2, 1);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Eighth-Final', 6, 12, 2, 1);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Eighth-Final', 1, 21, 1, 0);
INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES (2014, 'Eighth-Final', 2, 22, 2, 1);
"