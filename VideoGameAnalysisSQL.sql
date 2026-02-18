# Create Database
CREATE DATABASE GamingAnalytics_2026;
# Use the created database
USE GamingAnalytics_2026;

-- Enable LOCAL INFILE capability for the current session
SET GLOBAL local_infile = 1;


-- Create the game table structure with appropriate data types
CREATE TABLE games (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(255),
    ReleaseDate DATE,          -- Proper DATE format
    Team TEXT,
    Rating DECIMAL(3, 1),
    TimesListed INT UNSIGNED,
    NumberAReviews INT UNSIGNED,
    Genres TEXT,
    Summary TEXT,
    Reviews TEXT,
    Plays INT UNSIGNED,
    Playing INT UNSIGNED,
    Backlogs INT UNSIGNED,
    Wishlist INT UNSIGNED
);

-- Load the games cleaned by python file
LOAD DATA LOCAL INFILE 'C:/Users/dhara/Documents/Interns/Labmentix/Video game/Cleaned Data/cleaned_games.csv'
INTO TABLE games
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS



-- Create the vgsales table 
CREATE TABLE vgsales(
    GameRank INT, -- Renamed from 'Rank'
    Title VARCHAR(255),
    Platform VARCHAR(100),
    Year VARCHAR(50),
    Genre VARCHAR(100),
    Publisher VARCHAR(255),
    NA_Sales DECIMAL(10,2),
    EU_Sales DECIMAL(10,2),
    JP_Sales DECIMAL(10,2),
    Other_Sales DECIMAL(10,2),
    Global_Sales DECIMAL(10,2)
);

-- Load the vgsales cleaned by python file
LOAD DATA LOCAL INFILE 'C:/Users/dhara/Documents/Interns/Labmentix/Video game/Cleaned Data/cleaned_vgsales.csv'
INTO TABLE vgsales
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' -- Try '\n' if '\r\n' fails
IGNORE 1 ROWS;


-- Use the database context
USE GamingAnalytics_2026;

CREATE TABLE merged_data(
    `Rank` INT UNSIGNED PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Release_Date DATE,
    Publisher VARCHAR(255),
    User_Rating DECIMAL(3, 1),
    Critic_Rating DECIMAL(3, 1),
    User_Count INT UNSIGNED,
    Critic_Count INT UNSIGNED,
    Genres VARCHAR(255),
    Summary TEXT,
    Reviews INT UNSIGNED,
    Plays INT UNSIGNED,
    Playing INT UNSIGNED,
    Backlogs INT UNSIGNED,
    Wishlist INT UNSIGNED,
    Platform VARCHAR(50),
    Year SMALLINT UNSIGNED,
    Genre VARCHAR(50),
    Publisher_NA VARCHAR(255),
    NA_Sales DECIMAL(10, 2),
    EU_Sales DECIMAL(10, 2),
    JP_Sales DECIMAL(10, 2),
    Other_Sales DECIMAL(10, 2),
    Global_Sales DECIMAL(10, 2)
);

-- Load the data from your Python-generated CSV merged data file
LOAD DATA LOCAL INFILE 'C:/Users/dhara/Documents/Interns/Labmentix/Video game/Cleaned Data/merged_data.csv'
INTO TABLE merged_data
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n' -- Try '\n' if '\r\n' fails
IGNORE 1 ROWS;

-- 1. Verify that games in vgsales exist in the games metadata table
-- A count of 0 is ideal, meaning all sales data has metadata.
SELECT COUNT(*) AS unmatched_titles
FROM vgsales v
LEFT JOIN games g ON v.Title = g.Title
WHERE g.Title IS NULL;

-- 2. Verify the Merged Data integrity
-- Ensures the merged_data table correctly captures both Sales and Plays
SELECT 
    COUNT(*) as total_records,
    SUM(CASE WHEN Global_Sales > 0 THEN 1 ELSE 0 END) as records_with_sales,
    SUM(CASE WHEN Plays > 0 THEN 1 ELSE 0 END) as records_with_engagement
FROM merged_data;

-- 3. Top performing Genres (Testing the join logic)
SELECT Genre, SUM(Global_Sales) as Total_Revenue
FROM merged_data
GROUP BY Genre
ORDER BY Total_Revenue DESC
LIMIT 5;

-- 4. success ratio
SELECT 
    COUNT(*) AS Total_Games,
    SUM(CASE WHEN Global_Sales > 1 THEN 1 ELSE 0 END) AS Successful_Games,
    (SUM(CASE WHEN Global_Sales > 1 THEN 1 ELSE 0 END) / COUNT(*)) * 100 AS Calculated_Ratio
FROM merged_data;


