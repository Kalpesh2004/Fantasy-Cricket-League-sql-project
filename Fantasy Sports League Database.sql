CREATE DATABASE FantasyLeague;
USE FantasyLeague;

CREATE TABLE Players(
player_id INT PRIMARY KEY AUTO_INCREMENT,
player_name VARCHAR(100) NOT NULL,
team_name VARCHAR(100),
role_ VARCHAR(50),
nationality VARCHAR(50)
);

CREATE TABLE Teams(
team_id INT PRIMARY KEY AUTO_INCREMENT,
team_name VARCHAR(100) UNIQUE NOT NULL,
owner_name VARCHAR(100)
);

CREATE TABLE TeamPlayers(
team_id INT,
player_id INT,
FOREIGN KEY (team_id) REFERENCES Teams(team_id),
FOREIGN KEY (player_id) REFERENCES Players(player_id),
PRIMARY KEY (team_id,player_id)
);

CREATE TABLE Matches(
match_id INT PRIMARY KEY AUTO_INCREMENT,
match_date DATE,
team1 VARCHAR(100),
team2 VARCHAR(100),
venue VARCHAR(100)
);

CREATE TABLE PlayersPerformance(
match_id INT,
player_id INT,
runs INT,
wickets INT,
catches INT,
points INT,
FOREIGN KEY(match_id) REFERENCES Matches(match_id),
FOREIGN KEY(player_id) REFERENCES Players(player_id),
PRIMARY KEY (match_id, player_id)
);


INSERT INTO Players(player_name, team_name, role_, nationality) VALUES
('Virat kohli', 'RCB','Batsman','India'),
('Jasprit Bumrah','MI','Bowler','India'),
('Joe Root','RR','Batsman','Englend'),
('MS Dhoni','CSK','WicketKepper','India'),
('Rishabh Pant','LSG','Batsman','India'),
('Rashid Khan', 'GT','Bowler','India');

INSERT INTO Teams (team_name,owner_name) VALUES
('Mehta ke maharathi','Tarak Mehta'),
('Jetha ke jabaaj', 'Jethalal Gada');

INSERT INTO TeamPlayers(team_id, player_id) VALUES
(1,2),
(1,3),
(1,5),
(2,1),
(2,4),
(2,6);

INSERT INTO Matches(match_date, team1,team2,venue) VALUES
('2025-05-01','RCB','MI','Wankhede Stadium');

INSERT INTO PlayersPerformance(match_id, player_id, runs, wickets, catches, points)VALUES
(1,1,75,0,1,90),
(1,2,5,50,0,100),
(1,3,60,0,1,75),
(1,6,12,60,55,68);

/*GET Top Performing Players*/
SELECT p.player_name, SUM(pp.points) AS total_points
FROM Players p
JOIN PlayersPerformance pp ON p.player_id = pp.player_id
GROUP BY p.player_id
ORDER BY total_points DESC
LIMIT 5;

/*Fantasy Team Rankings*/
SELECT t.team_name , SUM(pp.points) AS total_points
FROM Teams t
JOIN TeamPlayers tp ON t.team_id = tp.team_id
JOIN PlayersPerformance pp ON tp.player_id = pp.player_id
GROUP BY t.team_id
ORDER BY total_points DESC;

/*Match- wise Player performance*/

SELECT m.match_date, p.player_name,pp.runs,pp.wickets, pp.catches, pp.points
FROM PlayersPerformance pp
JOIN Players p ON pp.player_id = p.player_id
JOIN Matches m ON pp.match_id = m.match_id
ORDER BY m.match_date;

INSERT INTO PlayersPerformance(match_id, player_id, runs, wickets, catches, points)VALUES
(1,6,12,60,55,68);

/*Window Functions*/
SELECT player_name, total_points, 
RANK() OVER (ORDER BY total_points DESC) As rank_
FROM(
SELECT p.player_name, SUM(pp.points) AS total_points
FROM Players p 
JOIN PlayersPerformance pp ON p.player_id = pp.player_id
GROUP BY p.player_id
) As PlayerTotals;

