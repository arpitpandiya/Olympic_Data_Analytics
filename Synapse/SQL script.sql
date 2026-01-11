-- Create Lake Database
CREATE DATABASE TokyoOlympicDB;


-- Create external table on top of Data Lake athletes data
CREATE TABLE TokyoOlympicDB.dbo.athletes
USING PARQUET
LOCATION 'abfss://curated@<storage-account>.dfs.core.windows.net/athletes/';

-- Create external table on top of Data Lake coaches data
CREATE TABLE TokyoOlympicDB.dbo.coaches
USING PARQUET
LOCATION 'abfss://curated@<storage-account>.dfs.core.windows.net/coaches/';

-- External table for entries by gender
CREATE TABLE TokyoOlympicDB.dbo.entriesgender
USING PARQUET
LOCATION 'abfss://curated@<storage-account>.dfs.core.windows.net/entriesgender/';

-- External table for medals data
CREATE TABLE TokyoOlympicDB.dbo.medals
USING PARQUET
LOCATION 'abfss://curated@<storage-account>.dfs.core.windows.net/medals/';

-- External table for teams data
CREATE TABLE TokyoOlympicDB.dbo.teams
USING PARQUET
LOCATION 'abfss://curated@<storage-account>.dfs.core.windows.net/teams/';

-- Questions
-- Count the number of athletes from each country
SELECT Country, COUNT(*)AS TotalAthletes FROM athletes 
GROUP BY Country 
ORDER BY TotalAthletes DESC; 

-- Calculate the total medals won by each country
SELECT Team_Country, 
SUM(Gold)as Total_Gold, 
SUM(Silver)as Total_Silver, 
SUM(Bronze)as Total_Bronze
FROM medals 
GROUP BY Team_Country 
ORDER by Total_Gold DESC;

-- Calculate the average number of entries by gender for each discipine:
SELECT Discipline,
AVG(Female)as Avg_Female,
Avg(Male)as Avg_Male
FROM entriesgender
GROUP BY Discipline;






