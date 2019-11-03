CREATE TABLE dbo.Teams (
  Id int IDENTITY,
  TeamName nvarchar(max) NOT NULL,
  City nvarchar(max) NOT NULL,
  PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

--
-- Create table [dbo].[Players]
--
PRINT (N'Create table [dbo].[Players]')
GO
CREATE TABLE dbo.Players (
  Id int IDENTITY,
  TeamId int NOT NULL,
  Name nvarchar(max) NOT NULL,
  PRIMARY KEY CLUSTERED (Id)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

--
-- Create foreign key on table [dbo].[Players]
--
PRINT (N'Create foreign key on table [dbo].[Players]')
GO
ALTER TABLE dbo.Players WITH NOCHECK
  ADD FOREIGN KEY (TeamId) REFERENCES dbo.Teams (Id)
GO

--
-- Create table [dbo].[Matches]
--
PRINT (N'Create table [dbo].[Matches]')
GO
CREATE TABLE dbo.Matches (
  Id int IDENTITY,
  Stadium nvarchar(max) NOT NULL,
  TeamA int NOT NULL,
  TeamB int NOT NULL,
  TeamAScore int NOT NULL,
  TeamBScore int NOT NULL,
  PRIMARY KEY CLUSTERED (Id),
  UNIQUE (TeamA, TeamB)
)
ON [PRIMARY]
TEXTIMAGE_ON [PRIMARY]
GO

--
-- Create foreign key on table [dbo].[Matches]
--
PRINT (N'Create foreign key on table [dbo].[Matches]')
GO
ALTER TABLE dbo.Matches WITH NOCHECK
  ADD FOREIGN KEY (TeamA) REFERENCES dbo.Teams (Id)
GO

--
-- Create foreign key on table [dbo].[Matches]
--
PRINT (N'Create foreign key on table [dbo].[Matches]')
GO
ALTER TABLE dbo.Matches WITH NOCHECK
  ADD FOREIGN KEY (TeamB) REFERENCES dbo.Teams (Id)
GO

--
-- Create table [dbo].[GemaPlayers]
--
PRINT (N'Create table [dbo].[GemaPlayers]')
GO
CREATE TABLE dbo.GemaPlayers (
  PlayerId int NOT NULL,
  MatchId int NOT NULL,
  UNIQUE (PlayerId, MatchId)
)
ON [PRIMARY]
GO

--
-- Create foreign key on table [dbo].[GemaPlayers]
--
PRINT (N'Create foreign key on table [dbo].[GemaPlayers]')
GO
ALTER TABLE dbo.GemaPlayers WITH NOCHECK
  ADD FOREIGN KEY (MatchId) REFERENCES dbo.Matches (Id)
GO

--
-- Create foreign key on table [dbo].[GemaPlayers]
--
PRINT (N'Create foreign key on table [dbo].[GemaPlayers]')
GO
ALTER TABLE dbo.GemaPlayers WITH NOCHECK
  ADD FOREIGN KEY (PlayerId) REFERENCES dbo.Players (Id)
GO

--
-- Inserting data into table dbo.Teams
--
SET IDENTITY_INSERT dbo.Teams ON
GO
INSERT dbo.Teams(Id, TeamName, City) VALUES (1, N'Newcastle', N'Sutton Coldfield')
INSERT dbo.Teams(Id, TeamName, City) VALUES (2, N'Mount Eliza', N'Milton Keynes')
INSERT dbo.Teams(Id, TeamName, City) VALUES (3, N'Raymond Terrace', N'Southampton')
INSERT dbo.Teams(Id, TeamName, City) VALUES (4, N'Nowra', N'Swindon')
INSERT dbo.Teams(Id, TeamName, City) VALUES (5, N'Lismore', N'Peterborough')
INSERT dbo.Teams(Id, TeamName, City) VALUES (6, N'Redcliffe', N'Southend-on-Sea')
INSERT dbo.Teams(Id, TeamName, City) VALUES (7, N'Orange', N'Telford')
INSERT dbo.Teams(Id, TeamName, City) VALUES (8, N'Byron Bay', N'Birmingham')
INSERT dbo.Teams(Id, TeamName, City) VALUES (9, N'Hervey Bay', N'Newcastle upon Tyne')
INSERT dbo.Teams(Id, TeamName, City) VALUES (10, N'Rosebud', N'Walsall')
INSERT dbo.Teams(Id, TeamName, City) VALUES (11, N'Richmond', N'St Helens')
INSERT dbo.Teams(Id, TeamName, City) VALUES (12, N'Traralgon', N'Wolverhampton')
INSERT dbo.Teams(Id, TeamName, City) VALUES (13, N'Sale', N'Watford')
INSERT dbo.Teams(Id, TeamName, City) VALUES (14, N'Pakenham', N'Reading')
INSERT dbo.Teams(Id, TeamName, City) VALUES (15, N'Lithgow', N'Plymouth')
INSERT dbo.Teams(Id, TeamName, City) VALUES (16, N'Rockhampton', N'Stockport')
INSERT dbo.Teams(Id, TeamName, City) VALUES (17, N'Devonport', N'Luton')
INSERT dbo.Teams(Id, TeamName, City) VALUES (18, N'Gympie', N'Ipswich')
INSERT dbo.Teams(Id, TeamName, City) VALUES (19, N'Palmerston', N'Rotherham')
INSERT dbo.Teams(Id, TeamName, City) VALUES (20, N'Drouin', N'Manchester')
INSERT dbo.Teams(Id, TeamName, City) VALUES (21, N'Hamilton', N'Kingston upon Hull')
INSERT dbo.Teams(Id, TeamName, City) VALUES (22, N'Dubbo', N'Dudley')
INSERT dbo.Teams(Id, TeamName, City) VALUES (23, N'Ulverstone', N'York')
INSERT dbo.Teams(Id, TeamName, City) VALUES (24, N'Rockingham', N'Stoke-on-Trent')
INSERT dbo.Teams(Id, TeamName, City) VALUES (25, N'Parkes', N'Sheffield')
INSERT dbo.Teams(Id, TeamName, City) VALUES (26, N'Hobart', N'Northampton')
INSERT dbo.Teams(Id, TeamName, City) VALUES (27, N'Sawtell', N'West Bromwich')
INSERT dbo.Teams(Id, TeamName, City) VALUES (28, N'Mount Gambier', N'Sunderland')
INSERT dbo.Teams(Id, TeamName, City) VALUES (29, N'Perth', N'Slough')
INSERT dbo.Teams(Id, TeamName, City) VALUES (30, N'Mount Isa', N'Poole')
GO
SET IDENTITY_INSERT dbo.Teams OFF
GO

--
-- Inserting data into table dbo.Matches
--
SET IDENTITY_INSERT dbo.Matches ON
GO
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (1, N'Bayern', 7, 10, 4, 5)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (2, N'Thüringen', 17, 17, 8, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (3, N'Bremen', 11, 12, 8, 10)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (4, N'Saarland', 7, 7, 4, 8)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (5, N'Berlin', 25, 26, 1, 2)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (6, N'Schlewig-Holstein', 10, 13, 8, 4)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (7, N'Sachsen', 30, 2, 5, 4)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (8, N'Baden-Württemberg', 8, 11, 1, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (9, N'Hessen', 1, 4, 2, 8)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (10, N'Nordrhein-Westfalen', 15, 16, 9, 4)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (11, N'Rheinland-Pfalz', 1, 2, 4, 5)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (12, N'Sachsen-Anhalt', 12, 13, 5, 0)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (13, N'Mecklenburg-Vorpommern', 22, 24, 6, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (14, N'Brandenburg', 2, 3, 0, 5)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (15, N'Hamburg', 22, 22, 2, 7)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (16, N'Niedersachsen', 9, 12, 3, 8)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (17, N'Bayern', 3, 4, 7, 10)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (18, N'Thüringen', 12, 14, 3, 7)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (19, N'Hessen', 23, 25, 0, 2)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (20, N'Bremen', 2, 5, 4, 7)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (21, N'Saarland', 26, 27, 3, 0)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (22, N'Schlewig-Holstein', 16, 17, 4, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (23, N'Sachsen', 25, 27, 7, 9)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (24, N'Nordrhein-Westfalen', 18, 18, 3, 5)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (25, N'Rheinland-Pfalz', 27, 28, 10, 3)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (26, N'Sachsen-Anhalt', 23, 23, 7, 4)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (27, N'Berlin', 4, 5, 2, 3)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (28, N'Baden-Württemberg', 17, 18, 3, 1)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (29, N'Mecklenburg-Vorpommern', 13, 15, 3, 5)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (30, N'Brandenburg', 24, 26, 4, 5)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (31, N'Hamburg', 24, 24, 10, 5)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (32, N'Niedersachsen', 3, 6, 2, 2)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (33, N'Thüringen', 8, 8, 0, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (34, N'Bayern', 14, 16, 7, 1)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (35, N'Hessen', 4, 6, 9, 3)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (36, N'Bremen', 28, 29, 4, 3)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (37, N'Saarland', 15, 17, 6, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (38, N'Nordrhein-Westfalen', 5, 6, 4, 5)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (39, N'Mecklenburg-Vorpommern', 25, 25, 0, 9)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (40, N'Hamburg', 19, 19, 5, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (41, N'Niedersachsen', 26, 28, 6, 9)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (42, N'Schlewig-Holstein', 4, 7, 4, 2)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (43, N'Berlin', 5, 7, 6, 3)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (44, N'Sachsen', 16, 18, 10, 4)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (45, N'Rheinland-Pfalz', 9, 9, 9, 4)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (46, N'Sachsen-Anhalt', 18, 19, 8, 1)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (47, N'Baden-Württemberg', 27, 29, 9, 9)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (48, N'Brandenburg', 5, 8, 6, 10)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (49, N'Thüringen', 28, 30, 2, 7)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (50, N'Bayern', 6, 8, 8, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (51, N'Saarland', 6, 9, 2, 2)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (52, N'Hessen', 29, 30, 10, 1)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (53, N'Bremen', 19, 20, 9, 2)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (54, N'Nordrhein-Westfalen', 20, 20, 7, 5)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (55, N'Schlewig-Holstein', 6, 7, 4, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (56, N'Sachsen', 17, 19, 6, 5)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (57, N'Rheinland-Pfalz', 26, 26, 6, 5)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (58, N'Berlin', 10, 10, 1, 2)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (59, N'Baden-Württemberg', 29, 1, 5, 5)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (60, N'Mecklenburg-Vorpommern', 7, 9, 5, 1)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (61, N'Hamburg', 30, 1, 8, 10)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (62, N'Brandenburg', 21, 21, 1, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (63, N'Niedersachsen', 20, 21, 3, 7)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (64, N'Sachsen-Anhalt', 18, 20, 0, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (65, N'Saarland', 11, 11, 2, 8)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (66, N'Bayern', 1, 1, 2, 3)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (67, N'Schlewig-Holstein', 12, 12, 6, 9)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (68, N'Hessen', 1, 3, 3, 4)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (69, N'Bremen', 8, 10, 2, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (70, N'Nordrhein-Westfalen', 2, 2, 2, 5)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (71, N'Mecklenburg-Vorpommern', 13, 13, 5, 1)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (72, N'Hamburg', 7, 8, 7, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (73, N'Berlin', 21, 22, 3, 4)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (74, N'Baden-Württemberg', 19, 21, 6, 5)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (75, N'Thüringen', 2, 4, 0, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (76, N'Brandenburg', 9, 11, 9, 9)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (77, N'Sachsen', 27, 27, 10, 7)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (78, N'Niedersachsen', 20, 22, 10, 7)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (79, N'Rheinland-Pfalz', 10, 12, 10, 7)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (80, N'Sachsen-Anhalt', 3, 3, 8, 3)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (81, N'Saarland', 8, 9, 1, 2)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (82, N'Thüringen', 22, 23, 3, 0)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (83, N'Bayern', 14, 14, 1, 4)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (84, N'Schlewig-Holstein', 21, 23, 7, 6)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (85, N'Sachsen', 3, 5, 6, 8)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (86, N'Rheinland-Pfalz', 28, 28, 3, 0)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (87, N'Bremen', 11, 13, 9, 8)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (88, N'Berlin', 9, 10, 2, 4)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (89, N'Sachsen-Anhalt', 4, 4, 1, 2)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (90, N'Hessen', 15, 15, 2, 2)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (91, N'Nordrhein-Westfalen', 23, 24, 7, 4)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (92, N'Baden-Württemberg', 29, 29, 10, 9)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (93, N'Brandenburg', 13, 14, 10, 3)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (94, N'Mecklenburg-Vorpommern', 10, 11, 7, 7)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (95, N'Hamburg', 24, 25, 8, 0)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (96, N'Niedersachsen', 5, 5, 3, 3)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (97, N'Saarland', 14, 15, 5, 1)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (98, N'Bayern', 16, 16, 3, 7)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (99, N'Thüringen', 6, 6, 5, 0)
INSERT dbo.Matches(Id, Stadium, TeamA, TeamB, TeamAScore, TeamBScore) VALUES (100, N'Schlewig-Holstein', 30, 30, 4, 3)
GO
SET IDENTITY_INSERT dbo.Matches OFF
GO

--
-- Inserting data into table dbo.Players
--
SET IDENTITY_INSERT dbo.Players ON
GO
INSERT dbo.Players(Id, TeamId, Name) VALUES (1, 1, N'Stevie Frizzell')
INSERT dbo.Players(Id, TeamId, Name) VALUES (2, 1, N'Jackeline Acker')
INSERT dbo.Players(Id, TeamId, Name) VALUES (3, 1, N'Twila Bock')
INSERT dbo.Players(Id, TeamId, Name) VALUES (4, 1, N'Reina Adkins')
INSERT dbo.Players(Id, TeamId, Name) VALUES (5, 1, N'Lavonia Whiteside')
INSERT dbo.Players(Id, TeamId, Name) VALUES (6, 1, N'Kendrick Naranjo')
INSERT dbo.Players(Id, TeamId, Name) VALUES (7, 1, N'Kim Desantis')
INSERT dbo.Players(Id, TeamId, Name) VALUES (8, 1, N'Raul Palma')
INSERT dbo.Players(Id, TeamId, Name) VALUES (9, 1, N'Lorette Ortiz')
INSERT dbo.Players(Id, TeamId, Name) VALUES (10, 1, N'Jewel Plummer')
INSERT dbo.Players(Id, TeamId, Name) VALUES (11, 1, N'Carter Matlock')
INSERT dbo.Players(Id, TeamId, Name) VALUES (12, 2, N'Clemente Craddock')
INSERT dbo.Players(Id, TeamId, Name) VALUES (13, 2, N'Rolland Watson')
INSERT dbo.Players(Id, TeamId, Name) VALUES (14, 2, N'Kayleen Hogg')
INSERT dbo.Players(Id, TeamId, Name) VALUES (15, 2, N'Loise Mayers')
INSERT dbo.Players(Id, TeamId, Name) VALUES (16, 2, N'Marine Turley')
INSERT dbo.Players(Id, TeamId, Name) VALUES (17, 2, N'Debby Concepcion')
INSERT dbo.Players(Id, TeamId, Name) VALUES (18, 2, N'Kent Staton')
INSERT dbo.Players(Id, TeamId, Name) VALUES (19, 2, N'Emmett Moulton')
INSERT dbo.Players(Id, TeamId, Name) VALUES (20, 2, N'Clarinda Acker')
INSERT dbo.Players(Id, TeamId, Name) VALUES (21, 2, N'Darrick Cardoza')
INSERT dbo.Players(Id, TeamId, Name) VALUES (22, 2, N'Kecia Adcock')
INSERT dbo.Players(Id, TeamId, Name) VALUES (23, 3, N'Maurice Mireles')
INSERT dbo.Players(Id, TeamId, Name) VALUES (24, 3, N'Ruben Simpson')
INSERT dbo.Players(Id, TeamId, Name) VALUES (25, 3, N'Britt Malley')
INSERT dbo.Players(Id, TeamId, Name) VALUES (26, 3, N'Jamie Creech')
INSERT dbo.Players(Id, TeamId, Name) VALUES (27, 3, N'Luis Cruse')
INSERT dbo.Players(Id, TeamId, Name) VALUES (28, 3, N'Carol Abrams')
INSERT dbo.Players(Id, TeamId, Name) VALUES (29, 3, N'Adah Adair')
INSERT dbo.Players(Id, TeamId, Name) VALUES (30, 3, N'Henry Crump')
INSERT dbo.Players(Id, TeamId, Name) VALUES (31, 3, N'Magdalena Ogle')
INSERT dbo.Players(Id, TeamId, Name) VALUES (32, 3, N'Donovan Allison')
INSERT dbo.Players(Id, TeamId, Name) VALUES (33, 3, N'Jeremy Aranda')
INSERT dbo.Players(Id, TeamId, Name) VALUES (34, 4, N'Camie Burch')
INSERT dbo.Players(Id, TeamId, Name) VALUES (35, 4, N'Robbie Canty')
INSERT dbo.Players(Id, TeamId, Name) VALUES (36, 4, N'Lavone Amos')
INSERT dbo.Players(Id, TeamId, Name) VALUES (37, 4, N'Johnnie Allard')
INSERT dbo.Players(Id, TeamId, Name) VALUES (38, 4, N'Debbra Acuna')
INSERT dbo.Players(Id, TeamId, Name) VALUES (39, 4, N'Abdul Bergstrom')
INSERT dbo.Players(Id, TeamId, Name) VALUES (40, 4, N'Nathanael Medina')
INSERT dbo.Players(Id, TeamId, Name) VALUES (41, 4, N'Kasey Savoy')
INSERT dbo.Players(Id, TeamId, Name) VALUES (42, 4, N'Raphael Beckman')
INSERT dbo.Players(Id, TeamId, Name) VALUES (43, 4, N'Eugenia Johansen')
INSERT dbo.Players(Id, TeamId, Name) VALUES (44, 4, N'Merissa Minter')
INSERT dbo.Players(Id, TeamId, Name) VALUES (45, 5, N'Alejandro Norwood')
INSERT dbo.Players(Id, TeamId, Name) VALUES (46, 5, N'Enoch Dortch')
INSERT dbo.Players(Id, TeamId, Name) VALUES (47, 5, N'Kathleen Burnside')
INSERT dbo.Players(Id, TeamId, Name) VALUES (48, 5, N'Stevie Vallejo')
INSERT dbo.Players(Id, TeamId, Name) VALUES (49, 5, N'Gilda Abney')
INSERT dbo.Players(Id, TeamId, Name) VALUES (50, 5, N'Pearlene Starnes')
INSERT dbo.Players(Id, TeamId, Name) VALUES (51, 5, N'Kelley Hiatt')
INSERT dbo.Players(Id, TeamId, Name) VALUES (52, 5, N'Brady Street')
INSERT dbo.Players(Id, TeamId, Name) VALUES (53, 5, N'Beau Poston')
INSERT dbo.Players(Id, TeamId, Name) VALUES (54, 5, N'Christeen Oconnor')
INSERT dbo.Players(Id, TeamId, Name) VALUES (55, 5, N'Aleisha Story')
INSERT dbo.Players(Id, TeamId, Name) VALUES (56, 6, N'Greta Prosser')
INSERT dbo.Players(Id, TeamId, Name) VALUES (57, 6, N'Shawn Deaton')
INSERT dbo.Players(Id, TeamId, Name) VALUES (58, 6, N'Ada Rapp')
INSERT dbo.Players(Id, TeamId, Name) VALUES (59, 6, N'Abe Christie')
INSERT dbo.Players(Id, TeamId, Name) VALUES (60, 6, N'Abbie Bullard')
INSERT dbo.Players(Id, TeamId, Name) VALUES (61, 6, N'Jenny Schulze')
INSERT dbo.Players(Id, TeamId, Name) VALUES (62, 6, N'Jamel Washington')
INSERT dbo.Players(Id, TeamId, Name) VALUES (63, 6, N'Augustus Barnette')
INSERT dbo.Players(Id, TeamId, Name) VALUES (64, 6, N'Rick Trevino')
INSERT dbo.Players(Id, TeamId, Name) VALUES (65, 6, N'Azalee Wang')
INSERT dbo.Players(Id, TeamId, Name) VALUES (66, 6, N'Jackqueline Abraham')
INSERT dbo.Players(Id, TeamId, Name) VALUES (67, 7, N'Marcel Casas')
INSERT dbo.Players(Id, TeamId, Name) VALUES (68, 7, N'Chiquita Headrick')
INSERT dbo.Players(Id, TeamId, Name) VALUES (69, 7, N'Mitchell Tanner')
INSERT dbo.Players(Id, TeamId, Name) VALUES (70, 7, N'Miesha Goldsmith')
INSERT dbo.Players(Id, TeamId, Name) VALUES (71, 7, N'Ahmed Abernathy')
INSERT dbo.Players(Id, TeamId, Name) VALUES (72, 7, N'Eddy Snodgrass')
INSERT dbo.Players(Id, TeamId, Name) VALUES (73, 7, N'Herschel Allison')
INSERT dbo.Players(Id, TeamId, Name) VALUES (74, 7, N'Carmelita Abel')
INSERT dbo.Players(Id, TeamId, Name) VALUES (75, 7, N'Daron Lowery')
INSERT dbo.Players(Id, TeamId, Name) VALUES (76, 7, N'Rudolph Staley')
INSERT dbo.Players(Id, TeamId, Name) VALUES (77, 7, N'Seth Martin')
INSERT dbo.Players(Id, TeamId, Name) VALUES (78, 8, N'Theola Addison')
INSERT dbo.Players(Id, TeamId, Name) VALUES (79, 8, N'Isela Crittenden')
INSERT dbo.Players(Id, TeamId, Name) VALUES (80, 8, N'Marvella Langston')
INSERT dbo.Players(Id, TeamId, Name) VALUES (81, 8, N'Cassondra Quintana')
INSERT dbo.Players(Id, TeamId, Name) VALUES (82, 8, N'Ada Barron')
INSERT dbo.Players(Id, TeamId, Name) VALUES (83, 8, N'Bob Whitlow')
INSERT dbo.Players(Id, TeamId, Name) VALUES (84, 8, N'Aileen Ricks')
INSERT dbo.Players(Id, TeamId, Name) VALUES (85, 8, N'Carter Wilburn')
INSERT dbo.Players(Id, TeamId, Name) VALUES (86, 8, N'Lewis Kurtz')
INSERT dbo.Players(Id, TeamId, Name) VALUES (87, 8, N'Martin Carpenter')
INSERT dbo.Players(Id, TeamId, Name) VALUES (88, 8, N'Maynard Mullins')
INSERT dbo.Players(Id, TeamId, Name) VALUES (89, 9, N'Deena Seifert')
INSERT dbo.Players(Id, TeamId, Name) VALUES (90, 9, N'Sonny Epps')
INSERT dbo.Players(Id, TeamId, Name) VALUES (91, 9, N'Darwin Aguirre')
INSERT dbo.Players(Id, TeamId, Name) VALUES (92, 9, N'Audie Kearney')
INSERT dbo.Players(Id, TeamId, Name) VALUES (93, 9, N'Ettie Fountain')
INSERT dbo.Players(Id, TeamId, Name) VALUES (94, 9, N'Ada Ackerman')
INSERT dbo.Players(Id, TeamId, Name) VALUES (95, 9, N'Joey Seiler')
INSERT dbo.Players(Id, TeamId, Name) VALUES (96, 9, N'Elbert Abrams')
INSERT dbo.Players(Id, TeamId, Name) VALUES (97, 9, N'Nicolas Dyer')
INSERT dbo.Players(Id, TeamId, Name) VALUES (98, 9, N'Shawnda Cameron')
INSERT dbo.Players(Id, TeamId, Name) VALUES (99, 9, N'Catherin Gaither')
INSERT dbo.Players(Id, TeamId, Name) VALUES (100, 10, N'Quentin Abraham')
INSERT dbo.Players(Id, TeamId, Name) VALUES (101, 10, N'Brain Ashworth')
INSERT dbo.Players(Id, TeamId, Name) VALUES (102, 10, N'Adela Payne')
INSERT dbo.Players(Id, TeamId, Name) VALUES (103, 10, N'Bella Crabtree')
INSERT dbo.Players(Id, TeamId, Name) VALUES (104, 10, N'Corey Turley')
INSERT dbo.Players(Id, TeamId, Name) VALUES (105, 10, N'Boyd Thomason')
INSERT dbo.Players(Id, TeamId, Name) VALUES (106, 10, N'Morgan Burt')
INSERT dbo.Players(Id, TeamId, Name) VALUES (107, 10, N'Seymour Walls')
INSERT dbo.Players(Id, TeamId, Name) VALUES (108, 10, N'Robbie Marquez')
INSERT dbo.Players(Id, TeamId, Name) VALUES (109, 10, N'Renaldo Norton')
INSERT dbo.Players(Id, TeamId, Name) VALUES (110, 10, N'Adolph Thrash')
INSERT dbo.Players(Id, TeamId, Name) VALUES (111, 11, N'Anissa Pimentel')
INSERT dbo.Players(Id, TeamId, Name) VALUES (112, 11, N'Crissy Adler')
INSERT dbo.Players(Id, TeamId, Name) VALUES (113, 11, N'Ada Acevedo')
INSERT dbo.Players(Id, TeamId, Name) VALUES (114, 11, N'Valery Zaragoza')
INSERT dbo.Players(Id, TeamId, Name) VALUES (115, 11, N'Charlotte Morrell')
INSERT dbo.Players(Id, TeamId, Name) VALUES (116, 11, N'Alfredia Bryan')
INSERT dbo.Players(Id, TeamId, Name) VALUES (117, 11, N'Letha Allison')
INSERT dbo.Players(Id, TeamId, Name) VALUES (118, 11, N'Lien Alicea')
INSERT dbo.Players(Id, TeamId, Name) VALUES (119, 11, N'Gwenda Vargas')
INSERT dbo.Players(Id, TeamId, Name) VALUES (120, 11, N'Lavette Theriault')
INSERT dbo.Players(Id, TeamId, Name) VALUES (121, 11, N'Nevada Rios')
INSERT dbo.Players(Id, TeamId, Name) VALUES (122, 12, N'Rosann Dockery')
INSERT dbo.Players(Id, TeamId, Name) VALUES (123, 12, N'Gary Briones')
INSERT dbo.Players(Id, TeamId, Name) VALUES (124, 12, N'Chung Gracia')
INSERT dbo.Players(Id, TeamId, Name) VALUES (125, 12, N'Cordell Addison')
INSERT dbo.Players(Id, TeamId, Name) VALUES (126, 12, N'Milford Nevarez')
INSERT dbo.Players(Id, TeamId, Name) VALUES (127, 12, N'Marcell Boyle')
INSERT dbo.Players(Id, TeamId, Name) VALUES (128, 12, N'Noah Toliver')
INSERT dbo.Players(Id, TeamId, Name) VALUES (129, 12, N'Conrad Bell')
INSERT dbo.Players(Id, TeamId, Name) VALUES (130, 12, N'Bryan Abney')
INSERT dbo.Players(Id, TeamId, Name) VALUES (131, 12, N'Christoper Suarez')
INSERT dbo.Players(Id, TeamId, Name) VALUES (132, 12, N'Adalberto Guerrero')
INSERT dbo.Players(Id, TeamId, Name) VALUES (133, 13, N'Seema Abney')
INSERT dbo.Players(Id, TeamId, Name) VALUES (134, 13, N'Mauricio Stanton')
INSERT dbo.Players(Id, TeamId, Name) VALUES (135, 13, N'Laverne Aiello')
INSERT dbo.Players(Id, TeamId, Name) VALUES (136, 13, N'Erik Abney')
INSERT dbo.Players(Id, TeamId, Name) VALUES (137, 13, N'Judith Ladd')
INSERT dbo.Players(Id, TeamId, Name) VALUES (138, 13, N'Collin Abel')
INSERT dbo.Players(Id, TeamId, Name) VALUES (139, 13, N'Claud Marion')
INSERT dbo.Players(Id, TeamId, Name) VALUES (140, 13, N'Gale Eller')
INSERT dbo.Players(Id, TeamId, Name) VALUES (141, 13, N'Antoinette Adler')
INSERT dbo.Players(Id, TeamId, Name) VALUES (142, 13, N'Cathern Pridgen')
INSERT dbo.Players(Id, TeamId, Name) VALUES (143, 13, N'Ali Fuchs')
INSERT dbo.Players(Id, TeamId, Name) VALUES (144, 14, N'Ozie Abbott')
INSERT dbo.Players(Id, TeamId, Name) VALUES (145, 14, N'Jarrett Lujan')
INSERT dbo.Players(Id, TeamId, Name) VALUES (146, 14, N'Vicki Albertson')
INSERT dbo.Players(Id, TeamId, Name) VALUES (147, 14, N'Grady Riggins')
INSERT dbo.Players(Id, TeamId, Name) VALUES (148, 14, N'Kittie Acker')
INSERT dbo.Players(Id, TeamId, Name) VALUES (149, 14, N'Coleman Chase')
INSERT dbo.Players(Id, TeamId, Name) VALUES (150, 14, N'Beatrice Mena')
INSERT dbo.Players(Id, TeamId, Name) VALUES (151, 14, N'Rhett Abernathy')
INSERT dbo.Players(Id, TeamId, Name) VALUES (152, 14, N'Lawrence Stowe')
INSERT dbo.Players(Id, TeamId, Name) VALUES (153, 14, N'Casey Pendergrass')
INSERT dbo.Players(Id, TeamId, Name) VALUES (154, 14, N'Cristin Batiste')
INSERT dbo.Players(Id, TeamId, Name) VALUES (155, 15, N'Elouise Jarrett')
INSERT dbo.Players(Id, TeamId, Name) VALUES (156, 15, N'Georgann Bergeron')
INSERT dbo.Players(Id, TeamId, Name) VALUES (157, 15, N'Adah Ornelas')
INSERT dbo.Players(Id, TeamId, Name) VALUES (158, 15, N'Noah Batts')
INSERT dbo.Players(Id, TeamId, Name) VALUES (159, 15, N'Tori Cloud')
INSERT dbo.Players(Id, TeamId, Name) VALUES (160, 15, N'Anderson Farrington')
INSERT dbo.Players(Id, TeamId, Name) VALUES (161, 15, N'Reuben Mcallister')
INSERT dbo.Players(Id, TeamId, Name) VALUES (162, 15, N'Daron Champagne')
INSERT dbo.Players(Id, TeamId, Name) VALUES (163, 15, N'Adolph Stephens')
INSERT dbo.Players(Id, TeamId, Name) VALUES (164, 15, N'Alexander Abreu')
INSERT dbo.Players(Id, TeamId, Name) VALUES (165, 15, N'Cesar Abernathy')
INSERT dbo.Players(Id, TeamId, Name) VALUES (166, 16, N'Felix Pereira')
INSERT dbo.Players(Id, TeamId, Name) VALUES (167, 16, N'Matthew Briseno')
INSERT dbo.Players(Id, TeamId, Name) VALUES (168, 16, N'Jerome Barber')
INSERT dbo.Players(Id, TeamId, Name) VALUES (169, 16, N'Major Blais')
INSERT dbo.Players(Id, TeamId, Name) VALUES (170, 16, N'Abigail Mcgrew')
INSERT dbo.Players(Id, TeamId, Name) VALUES (171, 16, N'Adolfo Abbott')
INSERT dbo.Players(Id, TeamId, Name) VALUES (172, 16, N'Madie Sales')
INSERT dbo.Players(Id, TeamId, Name) VALUES (173, 16, N'Ryan Roberge')
INSERT dbo.Players(Id, TeamId, Name) VALUES (174, 16, N'Stevie Flanders')
INSERT dbo.Players(Id, TeamId, Name) VALUES (175, 16, N'Abby Babcock')
INSERT dbo.Players(Id, TeamId, Name) VALUES (176, 16, N'Geraldine Hoover')
INSERT dbo.Players(Id, TeamId, Name) VALUES (177, 17, N'Tari Dickerson')
INSERT dbo.Players(Id, TeamId, Name) VALUES (178, 17, N'Archie Sayre')
INSERT dbo.Players(Id, TeamId, Name) VALUES (179, 17, N'Abbie Abney')
INSERT dbo.Players(Id, TeamId, Name) VALUES (180, 17, N'Kermit Free')
INSERT dbo.Players(Id, TeamId, Name) VALUES (181, 17, N'Crystle Bergeron')
INSERT dbo.Players(Id, TeamId, Name) VALUES (182, 17, N'Cordie Cooks')
INSERT dbo.Players(Id, TeamId, Name) VALUES (183, 17, N'Tristan Amaya')
INSERT dbo.Players(Id, TeamId, Name) VALUES (184, 17, N'Ross Huntley')
INSERT dbo.Players(Id, TeamId, Name) VALUES (185, 17, N'Johnny Nolan')
INSERT dbo.Players(Id, TeamId, Name) VALUES (186, 17, N'Gertude Weir')
INSERT dbo.Players(Id, TeamId, Name) VALUES (187, 17, N'Allen Olivo')
INSERT dbo.Players(Id, TeamId, Name) VALUES (188, 18, N'Agatha Slade')
INSERT dbo.Players(Id, TeamId, Name) VALUES (189, 18, N'Delaine Bowen')
INSERT dbo.Players(Id, TeamId, Name) VALUES (190, 18, N'Eugene Angel')
INSERT dbo.Players(Id, TeamId, Name) VALUES (191, 18, N'Courtney Swann')
INSERT dbo.Players(Id, TeamId, Name) VALUES (192, 18, N'Rhoda Lilley')
INSERT dbo.Players(Id, TeamId, Name) VALUES (193, 18, N'Richelle Fields')
INSERT dbo.Players(Id, TeamId, Name) VALUES (194, 18, N'Charita Monk')
INSERT dbo.Players(Id, TeamId, Name) VALUES (195, 18, N'Lakisha Alexander')
INSERT dbo.Players(Id, TeamId, Name) VALUES (196, 18, N'Alberto Lujan')
INSERT dbo.Players(Id, TeamId, Name) VALUES (197, 18, N'Abel Barnhart')
INSERT dbo.Players(Id, TeamId, Name) VALUES (198, 18, N'Alejandro Legg')
INSERT dbo.Players(Id, TeamId, Name) VALUES (199, 19, N'Tammie Brittain')
INSERT dbo.Players(Id, TeamId, Name) VALUES (200, 19, N'Berneice Bermudez')
INSERT dbo.Players(Id, TeamId, Name) VALUES (201, 19, N'Monte Dougherty')
INSERT dbo.Players(Id, TeamId, Name) VALUES (202, 19, N'Bernardo Hart')
INSERT dbo.Players(Id, TeamId, Name) VALUES (203, 19, N'Maurita Fraser')
INSERT dbo.Players(Id, TeamId, Name) VALUES (204, 19, N'Jarred Mercado')
INSERT dbo.Players(Id, TeamId, Name) VALUES (205, 19, N'Shawn Burnett')
INSERT dbo.Players(Id, TeamId, Name) VALUES (206, 19, N'Alejandrina Hickey')
INSERT dbo.Players(Id, TeamId, Name) VALUES (207, 19, N'Aide Spruill')
INSERT dbo.Players(Id, TeamId, Name) VALUES (208, 19, N'Olin Waite')
INSERT dbo.Players(Id, TeamId, Name) VALUES (209, 19, N'Abigail Hope')
INSERT dbo.Players(Id, TeamId, Name) VALUES (210, 20, N'Charis Yarbrough')
INSERT dbo.Players(Id, TeamId, Name) VALUES (211, 20, N'Jeannette Keaton')
INSERT dbo.Players(Id, TeamId, Name) VALUES (212, 20, N'Jacquelynn Acevedo')
INSERT dbo.Players(Id, TeamId, Name) VALUES (213, 20, N'Amos Jewett')
INSERT dbo.Players(Id, TeamId, Name) VALUES (214, 20, N'Adam Bigelow')
INSERT dbo.Players(Id, TeamId, Name) VALUES (215, 20, N'Manual Saxon')
INSERT dbo.Players(Id, TeamId, Name) VALUES (216, 20, N'Ada Belcher')
INSERT dbo.Players(Id, TeamId, Name) VALUES (217, 20, N'Alia Bachman')
INSERT dbo.Players(Id, TeamId, Name) VALUES (218, 20, N'Alfredo Negrete')
INSERT dbo.Players(Id, TeamId, Name) VALUES (219, 20, N'Denis Mayfield')
INSERT dbo.Players(Id, TeamId, Name) VALUES (220, 20, N'Krishna Ackerman')
INSERT dbo.Players(Id, TeamId, Name) VALUES (221, 21, N'Haywood Sampson')
INSERT dbo.Players(Id, TeamId, Name) VALUES (222, 21, N'Alexis Centeno')
INSERT dbo.Players(Id, TeamId, Name) VALUES (223, 21, N'Harley Greiner')
INSERT dbo.Players(Id, TeamId, Name) VALUES (224, 21, N'Brooke Cartwright')
INSERT dbo.Players(Id, TeamId, Name) VALUES (225, 21, N'Clarisa Acker')
INSERT dbo.Players(Id, TeamId, Name) VALUES (226, 21, N'Barton Drew')
INSERT dbo.Players(Id, TeamId, Name) VALUES (227, 21, N'Lorenzo Langdon')
INSERT dbo.Players(Id, TeamId, Name) VALUES (228, 21, N'Marcelino Madrigal')
INSERT dbo.Players(Id, TeamId, Name) VALUES (229, 21, N'Marvel Hendrix')
INSERT dbo.Players(Id, TeamId, Name) VALUES (230, 21, N'Nakita Homan')
INSERT dbo.Players(Id, TeamId, Name) VALUES (231, 21, N'Steven Abernathy')
INSERT dbo.Players(Id, TeamId, Name) VALUES (232, 22, N'Wendell Alford')
INSERT dbo.Players(Id, TeamId, Name) VALUES (233, 22, N'Cassidy Peek')
INSERT dbo.Players(Id, TeamId, Name) VALUES (234, 22, N'Santiago Wellman')
INSERT dbo.Players(Id, TeamId, Name) VALUES (235, 22, N'Cassey Abbott')
INSERT dbo.Players(Id, TeamId, Name) VALUES (236, 22, N'Ginny Sandoval')
INSERT dbo.Players(Id, TeamId, Name) VALUES (237, 22, N'Jimmie Britt')
INSERT dbo.Players(Id, TeamId, Name) VALUES (238, 22, N'Cara Page')
INSERT dbo.Players(Id, TeamId, Name) VALUES (239, 22, N'Gisele Henning')
INSERT dbo.Players(Id, TeamId, Name) VALUES (240, 22, N'Adah Bradley')
INSERT dbo.Players(Id, TeamId, Name) VALUES (241, 22, N'Della Damon')
INSERT dbo.Players(Id, TeamId, Name) VALUES (242, 22, N'Hester Cook')
INSERT dbo.Players(Id, TeamId, Name) VALUES (243, 23, N'Julian Wilhite')
INSERT dbo.Players(Id, TeamId, Name) VALUES (244, 23, N'Justin Adair')
INSERT dbo.Players(Id, TeamId, Name) VALUES (245, 23, N'Bertram Velasco')
INSERT dbo.Players(Id, TeamId, Name) VALUES (246, 23, N'Tilda Abney')
INSERT dbo.Players(Id, TeamId, Name) VALUES (247, 23, N'Austin Layne')
INSERT dbo.Players(Id, TeamId, Name) VALUES (248, 23, N'Janeth Almeida')
INSERT dbo.Players(Id, TeamId, Name) VALUES (249, 23, N'Eileen Abernathy')
INSERT dbo.Players(Id, TeamId, Name) VALUES (250, 23, N'Adam Cash')
INSERT dbo.Players(Id, TeamId, Name) VALUES (251, 23, N'Adan Tejeda')
INSERT dbo.Players(Id, TeamId, Name) VALUES (252, 23, N'Marcel Bush')
INSERT dbo.Players(Id, TeamId, Name) VALUES (253, 23, N'Dallas Bordelon')
INSERT dbo.Players(Id, TeamId, Name) VALUES (254, 24, N'Deeanna Ackerman')
INSERT dbo.Players(Id, TeamId, Name) VALUES (255, 24, N'January Rayford')
INSERT dbo.Players(Id, TeamId, Name) VALUES (256, 24, N'Vernon Carlson')
INSERT dbo.Players(Id, TeamId, Name) VALUES (257, 24, N'Carmelo Sumner')
INSERT dbo.Players(Id, TeamId, Name) VALUES (258, 24, N'Kristle Locke')
INSERT dbo.Players(Id, TeamId, Name) VALUES (259, 24, N'Luke Findley')
INSERT dbo.Players(Id, TeamId, Name) VALUES (260, 24, N'Marianne Pointer')
INSERT dbo.Players(Id, TeamId, Name) VALUES (261, 24, N'Rico Matteson')
INSERT dbo.Players(Id, TeamId, Name) VALUES (262, 24, N'Perry Lefebvre')
INSERT dbo.Players(Id, TeamId, Name) VALUES (263, 24, N'Roy Padilla')
INSERT dbo.Players(Id, TeamId, Name) VALUES (264, 24, N'Launa Tobin')
INSERT dbo.Players(Id, TeamId, Name) VALUES (265, 25, N'Eun Alcorn')
INSERT dbo.Players(Id, TeamId, Name) VALUES (266, 25, N'Joane Falk')
INSERT dbo.Players(Id, TeamId, Name) VALUES (267, 25, N'Randi Centeno')
INSERT dbo.Players(Id, TeamId, Name) VALUES (268, 25, N'Sharita Nevarez')
INSERT dbo.Players(Id, TeamId, Name) VALUES (269, 25, N'Haywood Macklin')
INSERT dbo.Players(Id, TeamId, Name) VALUES (270, 25, N'Laticia Colbert')
INSERT dbo.Players(Id, TeamId, Name) VALUES (271, 25, N'Hui Abernathy')
INSERT dbo.Players(Id, TeamId, Name) VALUES (272, 25, N'Deena Chan')
INSERT dbo.Players(Id, TeamId, Name) VALUES (273, 25, N'Kenyatta Lauer')
INSERT dbo.Players(Id, TeamId, Name) VALUES (274, 25, N'Benjamin Abney')
INSERT dbo.Players(Id, TeamId, Name) VALUES (275, 25, N'Shu Holguin')
INSERT dbo.Players(Id, TeamId, Name) VALUES (276, 26, N'Dominick Chang')
INSERT dbo.Players(Id, TeamId, Name) VALUES (277, 26, N'Bryanna Massie')
INSERT dbo.Players(Id, TeamId, Name) VALUES (278, 26, N'Jarrett Stearns')
INSERT dbo.Players(Id, TeamId, Name) VALUES (279, 26, N'Dario Bernard')
INSERT dbo.Players(Id, TeamId, Name) VALUES (280, 26, N'Jeff Hawks')
INSERT dbo.Players(Id, TeamId, Name) VALUES (281, 26, N'Adam Polanco')
INSERT dbo.Players(Id, TeamId, Name) VALUES (282, 26, N'Todd Abreu')
INSERT dbo.Players(Id, TeamId, Name) VALUES (283, 26, N'Adela Mitchell')
INSERT dbo.Players(Id, TeamId, Name) VALUES (284, 26, N'Lynnette Coulter')
INSERT dbo.Players(Id, TeamId, Name) VALUES (285, 26, N'Marquerite Chamberlain')
INSERT dbo.Players(Id, TeamId, Name) VALUES (286, 26, N'Kraig Humes')
INSERT dbo.Players(Id, TeamId, Name) VALUES (287, 27, N'Geralyn Mccord')
INSERT dbo.Players(Id, TeamId, Name) VALUES (288, 27, N'Agustin Cambell')
INSERT dbo.Players(Id, TeamId, Name) VALUES (289, 27, N'Amber Sikes')
INSERT dbo.Players(Id, TeamId, Name) VALUES (290, 27, N'Faith Dunn')
INSERT dbo.Players(Id, TeamId, Name) VALUES (291, 27, N'Rebeca Hare')
INSERT dbo.Players(Id, TeamId, Name) VALUES (292, 27, N'Elodia Sanchez')
INSERT dbo.Players(Id, TeamId, Name) VALUES (293, 27, N'Abel Andrade')
INSERT dbo.Players(Id, TeamId, Name) VALUES (294, 27, N'Alona Naquin')
INSERT dbo.Players(Id, TeamId, Name) VALUES (295, 27, N'Una Gerber')
INSERT dbo.Players(Id, TeamId, Name) VALUES (296, 27, N'Manuel Bohannon')
INSERT dbo.Players(Id, TeamId, Name) VALUES (297, 27, N'Oliver Gagnon')
INSERT dbo.Players(Id, TeamId, Name) VALUES (298, 28, N'Alise Abbott')
INSERT dbo.Players(Id, TeamId, Name) VALUES (299, 28, N'Malik Nye')
INSERT dbo.Players(Id, TeamId, Name) VALUES (300, 28, N'Regan Hurt')
INSERT dbo.Players(Id, TeamId, Name) VALUES (301, 28, N'Saran Eckert')
INSERT dbo.Players(Id, TeamId, Name) VALUES (302, 28, N'Hayden Cyr')
INSERT dbo.Players(Id, TeamId, Name) VALUES (303, 28, N'Darryl Billups')
INSERT dbo.Players(Id, TeamId, Name) VALUES (304, 28, N'Trinidad Augustine')
INSERT dbo.Players(Id, TeamId, Name) VALUES (305, 28, N'Tifany Hammons')
INSERT dbo.Players(Id, TeamId, Name) VALUES (306, 28, N'Gregory Swenson')
INSERT dbo.Players(Id, TeamId, Name) VALUES (307, 28, N'Ramonita Hardin')
INSERT dbo.Players(Id, TeamId, Name) VALUES (308, 28, N'Tomas Adame')
INSERT dbo.Players(Id, TeamId, Name) VALUES (309, 29, N'Adalberto Florence')
INSERT dbo.Players(Id, TeamId, Name) VALUES (310, 29, N'Bart Munoz')
INSERT dbo.Players(Id, TeamId, Name) VALUES (311, 29, N'Kermit Labbe')
INSERT dbo.Players(Id, TeamId, Name) VALUES (312, 29, N'Kelly Kaminski')
INSERT dbo.Players(Id, TeamId, Name) VALUES (313, 29, N'Mindy Abel')
INSERT dbo.Players(Id, TeamId, Name) VALUES (314, 29, N'Marlene Coon')
INSERT dbo.Players(Id, TeamId, Name) VALUES (315, 29, N'Leslie Abraham')
INSERT dbo.Players(Id, TeamId, Name) VALUES (316, 29, N'Rodrick Duff')
INSERT dbo.Players(Id, TeamId, Name) VALUES (317, 29, N'Vasiliki Craddock')
INSERT dbo.Players(Id, TeamId, Name) VALUES (318, 29, N'Corine Abrams')
INSERT dbo.Players(Id, TeamId, Name) VALUES (319, 29, N'Ardella Hefner')
INSERT dbo.Players(Id, TeamId, Name) VALUES (320, 30, N'Candie Chester')
INSERT dbo.Players(Id, TeamId, Name) VALUES (321, 30, N'Elroy Aldrich')
INSERT dbo.Players(Id, TeamId, Name) VALUES (322, 30, N'Adolfo Schafer')
INSERT dbo.Players(Id, TeamId, Name) VALUES (323, 30, N'Romeo Clarkson')
INSERT dbo.Players(Id, TeamId, Name) VALUES (324, 30, N'Adolfo Warren')
INSERT dbo.Players(Id, TeamId, Name) VALUES (325, 30, N'Malena Guerin')
INSERT dbo.Players(Id, TeamId, Name) VALUES (326, 30, N'Shanika Wilmoth')
INSERT dbo.Players(Id, TeamId, Name) VALUES (327, 30, N'Lynsey Beckham')
INSERT dbo.Players(Id, TeamId, Name) VALUES (328, 30, N'Adah Mobley')
INSERT dbo.Players(Id, TeamId, Name) VALUES (329, 30, N'Abe Durant')
INSERT dbo.Players(Id, TeamId, Name) VALUES (330, 30, N'Adah Lockett')
GO
SET IDENTITY_INSERT dbo.Players OFF
GO

--
-- Set NOEXEC to off
--

SET NOEXEC OFF
GO

INSERT GemaPlayers SELECT TOP (100*11) p.Id, m.Id FROM Matches m
  JOIN Teams teamA ON m.TeamA = teamA.Id
  JOIN Players p ON teamA.Id = p.TeamId
  WHERE m.Id NOT IN (SELECT MatchId from GemaPlayers)
    OR p.Id NOT IN (SELECT gp.PlayerId FROM GemaPlayers gp)

INSERT GemaPlayers SELECT TOP (100*11) p.Id, m.Id FROM Matches m
  JOIN Teams teamB ON m.TeamB = teamB.Id
  JOIN Players p ON teamB.Id = p.TeamId
  WHERE m.Id NOT IN (SELECT MatchId from GemaPlayers)