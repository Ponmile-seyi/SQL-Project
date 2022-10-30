--Question 1
CREATE DATABASE SkillUpTest

-- Player Table

CREATE TABLE Tblplayer(
PlayerID VARCHAR(1) PRIMARY KEY,
Name VARCHAR(4) NOT NULL,
LastName VARCHAR(9) NOT NULL
);

-- Game Table

CREATE TABLE Tblgame(
GameID INT PRIMARY KEY,
Winner VARCHAR(1) NOT NULL,
Date datetime NOT NULL,

CONSTRAINT fk_Tblgame_Tblplayer_id
FOREIGN KEY (Winner)
REFERENCES Tblplayer (PlayerID)
);

-- Score Table

CREATE TABLE Tblscore(
ScoreID INT PRIMARY KEY,
Game INT NOT NULL,
Player VARCHAR(1) NOT NULL,
Score int not null,

CONSTRAINT fk_Tblscore_Tblplayer_id
FOREIGN KEY (Player)
REFERENCES Tblplayer (PlayerID),
CONSTRAINT fk_Tblscore_Tblgame_id
FOREIGN KEY (Game)
REFERENCES Tblgame (GameID)
)
