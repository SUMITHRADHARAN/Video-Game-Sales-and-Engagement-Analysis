# Video-Game-Sales-and-Engagement-Analysis
This project analyzes video game sales and user engagement data using Python, SQL, and Power BI. It merges sales and engagement metrics to uncover market trends and user behavior, providing actionable insights for developers and publishers to guide decisions in marketing and product development.

VIDEO GAME SALES & ENGAGEMENT ANALYSIS 

 

INTRODUCTION: 

The video gaming industry is one of the most dynamic and rapidly growing sectors of the global entertainment market. With millions of games released across various platforms, understanding what drives a game’s commercial success and player engagement has become crucial for developers, publishers, and marketers. 

This project, Video Game Sales and Engagement Analysis, focuses on analyzing game- related data — including sales figures, player interactions, and user ratings — to identify patterns and insights that can guide strategic decision-making in the gaming ecosystem. By integrating and analyzing datasets on both sales performance and player engagement, this study uncovers the key factors influencing game success, such as genre trends, platform popularity, and regional sales behavior. It leverages tools like Python (for data cleaning and preprocessing), SQL (for data storage and structuring), and Power BI (for interactive visual analytics and Exploratory Data Analytics(EDA)) to deliver actionable business intelligence. 

 

PROBLEM STATEMENT: 

The project aims to analyze and visualize video game sales and engagement data to uncover trends in game popularity, user behavior, and platform performance. By merging sales and engagement data, we seek to offer insights into how game features, platforms, and genres influence sales, Wishlist, and ratings. SQL will be used to structure and store the data, while Power BI dashboards will be developed to guide decision-making for game developers, marketers, and publishers. 

The gaming industry faces several challenges in identifying what truly drives a game’s 

success: 

Why do some high-rated games have low sales while average-rated ones become blockbusters? 

How do genres, platforms, and publishers influence global sales performance? 

What patterns exist in user engagement metrics (plays, Wishlists, ratings)? 

How have sales and release trends evolved over time, and which regions dominate the market? 

The goal of this project is to use data-driven insights to answer these questions and help stakeholders (developers, publishers, and marketers) make informed strategic decisions. 

OBJECTIVES: 

The objective of this project is to bridge the gap between player sentiment and commercial success through the following goals: 

Data Consolidation: Integrate engagement metrics (wishlists, ratings) with financial data (regional sales) into a single, normalized SQL database. 

Trend Identification: Analyze how game attributes like Genre and Platform influence global sales and user "backlog" behavior over time. 

Predictive Correlation: Determine if high early-stage engagement (Wishlists) serves as a reliable predictor for long-term Global Sales performance. 

Regional Strategy: Identify geographic preferences by mapping genre popularity across North America, Europe, and Japan to optimize marketing spend. 

Developer Benchmarking: Evaluate studio productivity by correlating average user ratings with total market reach. 

Business Intelligence: Deliver an interactive Power BI dashboard that allows stakeholders to filter performance by era, publisher, and platform for data-driven resource allocation. 

TOOLS USED: 

Python (Pandas): Data cleaning, transforming "K" format numeric values, and merging the games.csv and vgsales.csv datasets. 

MySQL: Creating the GamingAnalytics_2026 database, defining table schemas, and loading the cleaned data using LOAD DATA LOCAL INFILE. 

Power Query: Initial data inspection, unpivoting complex genre fields, and validating data types for visualization readiness. 

Power BI: Sales analysis, creating visualizations (bar charts, heatmaps, line graphs), KPI tracking, and designing the interactive dashboard. 

PROPOSED SOLUTION: 

To address the above problem, a data analytics pipeline was designed and executed as follows: 

1. Data Cleaning and Preprocessing: 

Removed duplicates and missing values. 

Standardized categorical names for consistency (platforms, genres, publishers). 

Converted release years to a uniform format. 

 

2. Data Integration: 

 Merged both datasets (games.csv and vgsales.csv) on the game title to create a holistic view of each game’s sales and engagement profile. 

  

3. Exploratory Data Analysis (EDA): 

Conducted statistical and visual analysis using Python (pandas, matplotlib, plotly). 

Examined relationships between ratings, plays, wishlists, and sales. 

 

4. SQL Structuring: 

Created relational tables for better data management and used SQL queries to explore relationships and validate EDA results. 

 

5. Visualization and Dashboarding (Power BI): 

Built interactive dashboards with slicers, filters, and drilldowns to analyze sales trends, ratings, and engagement across platforms, genres, and regions. 

Created KPI cards for metrics such as Total Global Sales, Average Rating, and Top Genres. 

 

6. Insight Extraction: 

Derived business insights from patterns and correlations between engagement and sales. 

Identified success factors and market trends influencing the gaming industry. 

 

💼 BUSINESS OBJECTIVES: 

 

Objective 

Description 

Business Impact 

1. Identify Key Success Drivers 

Discover which factors (genre, rating, platform, region) influence high global sales and engagement. 

Helps developers focus on the most profitable areas. 

2. Understand Market Trends 

Analyze release and sales patterns over years and regions. 

Enable strategic planning for future launches. 

3. Optimize Platform Strategy 

Compare platform-based performance in terms of user engagement and sales. 

Guides platform-specific marketing and partnership decisions. 

4. Predict Demand and User Interest 

Use wishlists and play data as predictors of future popularity. 

Aids in demand forecasting and promotional planning. 

5. Support Marketing and Product Development 

Identify what makes top-rated games successful. 

Provides actionable insights for targeted campaigns and design innovation. 

 

DATA EXPLORATION: 

The following tables detail the columns and descriptions for the two primary datasets used in this project, which are typically sourced from platforms like Kaggle for analysis.  

1. games.csv (Player Engagement Data) 

This dataset focuses on user interaction metrics and general game metadata. 

Column 

Description 

Title 

Name of the video game. 

Rating 

Average user review score, typically on a 0–10 scale. 

Genres 

Game category (e.g., Action, Sports, RPG); a game may have multiple genres. 

Plays 

The total number of recorded playthroughs. 

Backlogs 

The number of users who have marked the game as "planning to play". 

Wishlist 

The number of users who have added the game to their Wishlist. 

Release Date 

The launch date of the game. 

Platform 

The console or device the game runs on (e.g., PlayStation, Xbox, PC). 

Developer 

The studio or team that created the game. 

2. vgsales.csv (Sales Data) 

This dataset provides extensive regional and global sales statistics, with sales typically measured in millions of units.  

Column  

Description 

Name 

Name of the video game. 

Platform 

Console or system (e.g., PS4, Xbox, PC). 

Year 

The release year of the game. 

Genre 

The main category of game type (Action, Sports, RPG, etc.). 

Publisher 

The company is responsible for publishing and distributing the game. 

NA_Sales 

Sales volume in North America (in millions). 

EU_Sales 

Sales volume in Europe (in millions). 

JP_Sales 

Sales volume in Japan (in millions). 

Other_Sales 

Sales volume in other global regions (in millions). 

Global_Sales 

The total worldwide sales (sum of all regions in millions). 

DATA CLEANING AND PREPROCESSING: 

Data cleaning is one of the most crucial steps in any data analysis project. Since the dataset was collected from multiple sources — including game sales (vgsales.csv) and player engagement (games.csv) — it contained inconsistencies, missing records, and redundant entries that could lead to inaccurate insights. 

Therefore, a comprehensive data cleaning process was performed using Python (Pandas) and Power Query to ensure data accuracy, reliability, and consistency before analysis and visualization. 

1. Handling Missing Values 

Missing values were found in several columns, especially in fields like Rating, Publisher, and sales figures. 

To maintain data integrity (as implemented in the Python script): 

For numerical columns (e.g., Plays, Wishlist, Sales figures), missing values were imputed to 0 or handled using specific logic (e.g., the clean_k_format function in Python ensures NaN becomes 0). 

For categorical columns (e.g., Publisher, Year), missing entries were filled with 'Unknown' where appropriate using sales_df['Year'].fillna('Unknown'). 

Code: 

import pandas as pd 

  

# Load dataframes (path adjusted for clarity) 

df = pd.read_csv('games.csv') 

sales_df = pd.read_csv('vgsales.csv') 

  

# Handle missing categorical values in sales data 

sales_df['Year'] = sales_df['Year'].fillna('Unknown') 

sales_df['Publisher'] = sales_df['Publisher'].fillna('Unknown') 

  

# Ensure sales columns are numeric and fill NaNs with 0.0 

sales_cols = ['NA_Sales', 'EU_Sales', 'JP_Sales', 'Other_Sales', 'Global_Sales'] 

for col in sales_cols: 

    sales_df[col] = pd.to_numeric(sales_df[col], errors='coerce').fillna(0.0) 

2. Removing Duplicate Records 

Since the datasets were merged from two different sources, several potential duplicate entries could appear (e.g., the same game title repeated across multiple platform records). Duplicates can distort average ratings and overcount sales. 

The code snippet focuses on merging via how='inner', keeping only games present in both lists, which implicitly manages a level of uniqueness. Further explicit duplicate removal using .drop_duplicates() would typically be applied to the final merged dataset. 

Code: 

# Standardize key column name before merging 

sales_df.rename(columns={'Name': 'Title'}, inplace=True) 

# 'how=inner' keeps games found in BOTH datasets 

# Note: For robust de-duplication across platforms/years, .drop_duplicates() would be used on the resulting merged_df 

merged_df = pd.merge(df, sales_df, on='Title', how='inner') 

3. Trimming and Removing Irregular Spaces 

In several text columns (like Title, Genre, Platform, and Publisher), unwanted leading or trailing spaces were identified. 

The Python script provided uses.strip() within the clean_k_format helper function, indicating that trimming of whitespace was a consideration in the cleaning logic. 

Code: 

def clean_k_format(value): 

    if pd.isna(value): 

        return 0 

    # The .strip() function is used here to remove leading/trailing spaces 

    val = str(value).lower().strip()  

    if 'k' in val: 

        return int(float(val.replace('k', '')) * 1000) 

    try: 

        return int(float(val)) 

    except ValueError: 

        return 0 

4. Standardizing Data Formats 

Data standardization was essential to ensure consistency across datasets before merging and SQL integration. 

Case Standardization: Text-based fields were consistently formatted. The provided Python script uses .lower() and .strip() during numeric cleaning, demonstrating format control. 

Date Formatting: The Release Date column was converted to a consistent YYYY-MM-DD format using pd.to_datetime(..., errors='coerce').dt.strftime('%Y-%m-%d'). 

Numeric Formatting: The Python clean_k_format helper function was used extensively to convert human-readable values like '4.33K' or '9M' into consistent integer or float formats for accurate calculations. 

Category Standardization: Key columns were renamed (Name to Title) using sales_df.rename(columns={'Name': 'Title'}, inplace=True) to facilitate a successful merge operation. 

Code: 

df['Release Date'] = pd.to_datetime(df['Release Date'], errors='coerce').dt.strftime('%Y-%m-%d') 

# Numeric Formatting (K-format conversion) 

cols_to_clean = ['Plays', 'Playing', 'Backlogs', 'Wishlist', 'Number of Reviews', 'Times Listed'] for col in cols_to_clean: if col in df.columns: df[col] = df[col].apply(clean_k_format) 

.apply(clean_k_format) 

 

 

✅ Result: All text, date, and numeric columns followed a unified format across the merged dataset, allowing smooth analysis and visual consistency in the Power BI dashboard. 

5. Final Data Validation 

After cleaning, the dataset was validated to confirm that: 

There were no remaining critical missing or duplicate records. 

All categorical columns had consistent labels. 

Numeric and date columns were in correct data types, ready for merging (via pd.merge) and subsequent SQL structuring/EDA. 

Code: 

# Save cleaned outputs 

df.to_csv('cleaned_games.csv', index=False)  

sales_df.to_csv('cleaned_vgsales.csv', index=False)  

merged_df.to_csv('merged_game_data.csv', index=False) 

print(f"Process Complete!")  

print(f"Merged file saved as 'merged_game_data.csv' with {merged_df.shape[0]} rows.") 

 

Cleaned Files: 

cleaned_games: cleaned_games.csv file 

cleaned_vgsales: cleaned_vgsales.csv file 

merged_data: merged_data.csv file 

Business Impact: 

Clean and standardized data directly enhanced the accuracy of insights and visualizations. It ensured that every KPI — such as top genres, global sales, and rating correlations was derived from authentic and error-free data, improving confidence in the decision-making process for game publishers and developers. 

 

DATABASE DESIGN AND INTEGRATION USING MySQL 

After the data was thoroughly cleaned and standardized, the next step was to organize it into a structured relational database using MySQL. This process ensured efficient storage, quick querying, and reliable integration for downstream analysis in Power BI and Python. The objective was to design a normalized database schema that minimized redundancy and maintained referential integrity between datasets such as game metadata, sales data, and engagement details. 

 

1. Database objective: 

 

The MySQL database was created to: 

Store video game metadata, sales, and engagement in well-defined relational tables using the InnoDB engine. 

Enforce relationships and dependencies between datasets through Primary Keys and Foreign Key constraints. 

Facilitate fast, accurate data retrieval and high-performance querying for Power BI dashboards and Python analytics. 

Enable consistent data governance by utilizing AUTO_INCREMENT and unique constraints to prevent duplication and ensure integrity across related records. 

 

SQL Code: 

# Create Database 

CREATE DATABASE GamingAnalytics_2026; 

 

2. Database Schema Design (MySQL): 

Three main tables were created in the MySQL database (GamingAnalytics_2026) to organize the datasets logically: 

games – Contains general details about each game, such as title, genre, and publisher. 

vgsales – Holds regional and global sales performance metrics (NA, EU, JP, and Other). 

merged_data – Combines engagement metrics (plays, wishlists) and sales information into an integrated fact table for analytical modeling. 

Each table was carefully structured using MySQL Data Types and Storage Engines (InnoDB) to ensure optimal performance, constraints, and indexing. 

Table 1: games [Focus: Player Engagement & Metadata] 

# 

Column Name 

Data Type 

Description 

1 

ID 

INT (PK) 

Unique auto-incrementing identifier. 

2 

Title 

VARCHAR (255) 

Official name of the game. 

3 

ReleaseDate 

DATE 

The launch date is in YYYY-MM-DD format. 

4 

Team 

TEXT 

Developer or studio team name. 

5 

Rating 

DECIMAL (3,1) 

Average user review score (e.g., 8.5). 

6 

TimesListed 

INT UNSIGNED 

Number of times the game appears in lists. 

7 

NumberAReviews 

INT UNSIGNED 

Total count of user reviews. 

8 

Genres 

TEXT 

Categories (Action, RPG, etc.). 

9 

Summary 

TEXT 

Brief description of the game. 

10 

Reviews 

TEXT 

Text-based user reviews. 

11 

Plays 

INT UNSIGNED 

Total number of playthroughs. 

12 

Playing 

INT UNSIGNED 

Number of current active players. 

13 

Backlogs 

INT UNSIGNED 

Users who plan to play the game later. 

14 

Wishlist 

INT UNSIGNED 

Total users who added the game to a wishlist. 

SQL Code Example: (Create the games table) 

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

    Wishlist INT UNSIGNED); 

Table 2: vgsales [Focus: Regional & Global Sales] 

# 

Column Name 

Data Type 

Description 

1 

GameRank 

INT 

Sales rank based on global performance. 

2 

Title 

VARCHAR(255) 

Official name of the game. 

3 

Platform 

VARCHAR(100) 

Console or system (PS4, PC, etc.). 

4 

Year 

VARCHAR(50) 

Year the game was released. 

5 

Genre 

VARCHAR(100) 

Primary game category. 

6 

Publisher 

VARCHAR(255) 

Company responsible for distribution. 

7 

NA_Sales 

DECIMAL(10,2) 

Sales in North America (millions). 

8 

EU_Sales 

DECIMAL(10,2) 

Sales in Europe (millions). 

9 

JP_Sales 

DECIMAL(10,2) 

Sales in Japan (millions). 

10 

Other_Sales 

DECIMAL(10,2) 

Sales in other global regions (millions). 

11 

Global_Sales 

DECIMAL(10,2) 

Total worldwide sales (millions). 

 

SQL Code Example: (Create the vgsales table) 

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

 

Table 3: merged_data [Focus: Integrated Analytics (Fact Table)] 

# 

Column Name 

Data Type 

Description 

1 

Rank 

INT (PK) 

Unique ID for the merged record. 

2 

Name 

VARCHAR(255) 

Consolidated game title. 

3 

Release_Date 

DATE 

Standardized launch date. 

4 

Publisher 

VARCHAR(255) 

Primary publisher. 

5 

User_Rating 

DECIMAL(3,1) 

Average user review score. 

6 

Critic_Rating 

DECIMAL(3,1) 

Average professional critic score. 

7 

User_Count 

INT UNSIGNED 

Number of users who gave a rating. 

8 

Critic_Count 

INT UNSIGNED 

Number of critics who gave a rating. 

9 

Genres 

VARCHAR(255) 

Combined genre string. 

10 

Summary 

TEXT 

Game overview description. 

11 

Reviews 

INT UNSIGNED 

Total count of reviews. 

12 

Plays 

INT UNSIGNED 

Total playthroughs. 

13 

Playing 

INT UNSIGNED 

Active players. 

14 

Backlogs 

INT UNSIGNED 

Plan-to-play count. 

15 

Wishlist 

INT UNSIGNED 

Total Wishlist count. 

16 

Platform 

VARCHAR(50) 

Console platform name. 

17 

Year 

SMALLINT UNSIGNED 

Year of release (numeric). 

18 

Genre 

VARCHAR(50) 

Main category. 

19 

Publisher_NA 

VARCHAR(255) 

Specific North American publisher. 

20 

NA_Sales 

DECIMAL(10,2) 

North America sales (millions). 

21 

EU_Sales 

DECIMAL(10,2) 

Europe sales (millions). 

22 

JP_Sales 

DECIMAL(10,2) 

Japan sales (millions). 

23 

Other_Sales 

DECIMAL(10,2) 

Other regions sales (millions). 

24 

Global_Sales 

DECIMAL(10,2) 

Total worldwide sales (millions). 

SQL Code Example: (Create merged_data table) 

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

    Global_Sales DECIMAL(10, 2)); 

 

3. Data Loading Process: 

After the schema was established, the cleaned datasets were imported into the GamingAnalytics_2026 database using the MySQL LOAD DATA LOCAL INFILE command. This method was selected for its high-performance handling of large-scale records from the cleaned_games.csv, cleaned_vgsales.csv, and merged_data.csv files. 

The process followed these key steps: 

Session Configuration: The SET GLOBAL local_infile = 1 command was executed to enable local data transfer permissions, allowing the MySQL server to access files from the specified local directory. 

Data Parsing: Files were imported using FIELDS TERMINATED BY ',' and ENCLOSED BY '"' to ensure that text fields containing commas (such as game summaries or reviews) did not break the column structure. 

Row Management: The IGNORE 1 ROWS clause was utilized to skip CSV headers, preventing them from being imported as data entries. 

Data Integrity Check: Using LINES TERMINATED BY '\r\n', the script correctly identified line breaks for Windows-formatted CSV files, ensuring each record was mapped to the correct row in the games, vgsales, and merged_data tables. 

 

 

Implementation Code: 

-- Enable local data loading 
SET GLOBAL local_infile = 1; 
 
-- Load Engagement Metadata 
LOAD DATA LOCAL INFILE 'C:/Users/dhara/Documents/Interns/Labmentix/Video game/Cleaned Data/cleaned_games.csv' 
INTO TABLE games 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n' IGNORE 1 ROWS; 
 
-- Load Sales Performance Data 
LOAD DATA LOCAL INFILE 'C:/Users/dhara/Documents/Interns/Labmentix/Video game/Cleaned Data/cleaned_vgsales.csv' 
INTO TABLE vgsales 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n' IGNORE 1 ROWS; 
 
-- Load Integrated Analytical Fact Table 
LOAD DATA LOCAL INFILE 'C:/Users/dhara/Documents/Interns/Labmentix/Video game/Cleaned Data/merged_data.csv' 
INTO TABLE merged_data 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' 
LINES TERMINATED BY '\r\n' IGNORE 1 ROWS; 

4. Logical Referential Integrity 

To ensure data consistency without the overhead of physical constraints during the high-speed data loading phase: 

Logical Linking: The Title and Name fields act as the primary join keys across the games, vgsales, and merged_data tables, allowing for seamless cross-table analysis. 

Data Consistency: Integrity is maintained during the Python preprocessing stage, where titles were standardized and duplicates were removed to ensure every sales record correctly maps to a metadata entry. 

BI Integration: By structuring the data around these common keys, the Power BI Data Model can automatically establish a Star Schema, ensuring that filters applied to genres or platforms accurately reflect across all sales and engagement visuals. 

5. Data Validation Queries (Logical Check): 

Since you aren't using physical FKs, use these queries to verify that your data is correctly "linked" before moving to Power BI: 

sql 

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

 

Outcome of Database Integration: 

Parameter 

Result 

Database Type 

MySQL (Relational) 

Total Tables 

3 (games, vgsales, merged_data) 

Relationships 

Logical 1-to-Many (Title-based linking) 

Referential Integrity 

Maintained via Python Preprocessing & Logical Joins 

Data Accessibility 

Ready for SQL Querying & Power BI Connection 

 

Business Impact: 

The implementation of a structured MySQL database has transformed the project into a data-driven, scalable solution. This architecture enables: 

Accurate Reporting: Through reliable logical joins between engagement metrics and financial performance. 

High-Performance Analysis: Leveraging the MySQL InnoDB engine for fast retrieval across normalized datasets. 

Storage Efficiency: Reduced redundancy by categorizing metadata and sales into distinct tables, optimizing the database footprint. 

Seamless BI Connectivity: Direct Power BI integration allows for the creation of interactive dashboards that provide live insights for publishers and marketing teams. 

This relational design serves as the definitive foundation for the subsequent Exploratory Data Analysis (EDA) and the development of high-impact strategic visualizations. 

📊 POWER BI INTEGRATION AND DATA VISUALIZATION 

After data cleaning and database structuring in MySQL, the next step involved integrating Power BI to build an interactive and insightful dashboard. Power BI was connected directly to the MySQL Database, enabling efficient data exploration and seamless visual analytics through the merged_data fact table. This dashboard was designed to uncover game performance patterns, sales drivers, and engagement behaviors, providing stakeholders with an intuitive view of the gaming market. By leveraging the relational structure established in the GamingAnalytics_2026 database, the Power BI environment supports complex cross-filtering across genres, platforms, and regions to drive strategic decision-making. 

📊 Dashboard 1: Game Engagement Data Analysis 

🔹 Power BI Integration Process: 

Step 1: Connection Setup 

Power BI was connected to the MySQL database (GamingAnalytics_2026) using the native connector. 

The primary tables imported were games (metadata/engagement) and the integrated merged_data. 

Step 2: Data Modeling 

Logical relationships were established in Power BI using the Title column as the primary key across the relevant tables. 

Calculated DAX measures were created for KPIs like Average Rating (3.69), Total Plays (9M), and the dynamic Success Ratio (69.34%). 

Step 3: Visualization Building 

Filters for Year, Genres, and Platform were added to the left sidebar for dynamic exploration. 

Interactive visuals such as bar charts (Top Team Ratings, Wishlist Rating) and line graphs (Backlog vs Wishlist) were used for in-depth storytelling about user behavior. 

Game Engagement Data analysis dashboard 

🎯 Key Performance Indicators (KPIs): 

KPI 

Description 

Value 

Insight 

Average Rating 

The overall average player rating across all games. 

3.69 

Indicates moderate player satisfaction. 

Total Plays 

Aggregated count of total game sessions. 

9M 

Shows significant user engagement. 

Total Wishlist 

Count of users wishing for games. 

1M 

High Wishlist volume shows strong interest and potential demand. 

Success Ratio 

Ratio of top-performing games. 

69.34% 

Reflects that over two-thirds of released titles achieved commercial and user success. 

Distinct Video Games 

Total number of unique game titles available. 

11.36K 

Demonstrates a diverse game library. 

 

📈 Detailed Visualization Insights: 

1. Top Team Ratings (Bar Chart) 

Purpose: Highlights how different development teams perform based on their average game ratings. 

Insights: 

The top-rated team achieves a perfect 100 rating. 

Ratings drop significantly for subsequent teams listed, mostly ranging in the low 70s. 

Only a few teams are featured in this top 5 list. 

Business Implication: Quality assurance and development talent vary significantly across the industry, indicating that specific team selection is critical for achieving high critical success. 

2. Backlog vs Wishlist (Distribution Chart) 

Purpose: Compares the frequency distribution of games added to backlogs versus those on wishlists. 

Insights: 

The chart shows a high frequency of games with lower wishlist and backlog counts (the large peak on the left). 

The distribution is heavily skewed, with very few titles having extremely high counts (the long tail to the right). 

Business Implication: Most games only capture a small, niche audience share regarding engagement tracking; marketing efforts should focus on driving titles into that high-engagement long tail. 

3. Wishlist Rating (Bar Chart) 

Purpose: Shows the distribution of average ratings for games based on their occurrence in wishlists. 

Insights: 

The most frequent ratings for wishlisted games are in the high 70s to low 80s range. 

Ratings are generally consistent across all bars shown in the visualization. 

Business Implication: Players tend to wishlist games that already have a reasonably high quality rating, suggesting ratings influence purchase intent. 

4. Rating vs Sales Correlation (Bubble Chart) 

Purpose: Examines the relationship between a game's rating and its sales performance. 

Insights: 

The bubbles are scattered widely across the chart. 

There is no direct, strong positive correlation visible between average user rating and global sales volume. 

Business Implication: Marketing reach, brand recognition, and platform exclusivity appear to be as crucial for sales success as the intrinsic quality (rating) of the game. 

5. Number of Published Games by Year (Bar Chart) 

Purpose: Visualizes the volume of games published over time. 

Insights: 

Game publication volume peaked dramatically around the year 2000. 

Volume declined sharply after 2010. 

The volume of new releases has stabilized in the most recent years shown. 

Business Implication: The market saw significant saturation in the early 2000s; current strategies likely favor quality over quantity of releases. 

6. Top Selling Games (Bar Chart) 

Purpose: Lists the best-selling games globally by total sales units. 

Insights: 

“Wii Sports” leads significantly with approximately 248M units sold. 

“Mario Kart Wii” is the second best-seller. 

Grand Theft Auto and Super Mario titles follow, showing strong franchise performance. 

Business Implication: Success is highly concentrated among major franchises and casual, accessible titles (like Wii games). 

7. Sales by Genre (Donut Chart) 

Purpose: Shows the distribution of total global sales across different game genres. 

Insights: 

Action (24.10%) is the leading genre by sales volume, followed by Platform (21.23%) and Shooter (18.37%). 

These top three genres dominate sales shares. 

Business Implication: The market shows strong demand for fast-paced genres; publishers should focus R&D on these categories for high returns. 

📊 Dashboard 2: Sales Data Analysis 

🔹 Power BI Integration Process: 

Step 1: Connection Setup 

Power BI was connected to the MySQL database. 

The primary tables imported were vgsales (sales data) and the integrated merged_data. 

Step 2: Data Modeling 

Relationships were established using the Title or Name column as the common key across sales and metadata tables. 

DAX measures calculated key financial KPIs such as NA_Sales (4.33K), Global_Sales (8.82K), and market share percentages. 

Step 3: Visualization Building 

Filters for Platform, Publisher, and Year were implemented for specific market analysis. 

Interactive visuals such as donut charts (Top Region Sales), area charts (Sales trend over Years), and horizontal bar charts (Best Platforms, Sum of Global_Sales by Publisher) were used to highlight revenue drivers. 

Sales Data Analysis dashboard 

🎯 Key Performance Indicators (KPIs): 

KPI 

Description 

Value 

Insight 

Total Global Sales 

Combined worldwide sales of all games (in million units). 

8.82K  

Demonstrates strong commercial performance. 

NA Sales 

Sales specific to North America  

4.33K  

North America is the leading market, representing over half of the total sales. 

EU Sales 

Sales specific to Europe  

706.95  

Europe is a significant market, contributing to over 13% of total sales. 

JP Sales 

Sales specific to Japan  

332.65  

Sales in Japan represent over 9% of total sales. 

Platform Count 

Total number of distinct platforms tracked. 

31 

Indicates analysis covers a wide range of consoles and systems. 

📈 Detailed Visualization Insights: 

1. Top Region Sales (Donut Chart) 

Purpose: Shows the distribution of total global sales across North America (NA), Europe (EU), Japan (JP), and Other regions. 

Insights: 

NA Sales (50.07%) is the dominant region, accounting for over half of all sales. 

EU Sales (27.79%) is the second largest market. 

JP Sales (14.06%) and Other Sales (8.08%) make up the remaining share. 

Business Implication: North America is the primary target market, but Europe offers significant revenue potential. 

2. Best Platforms (Vertical Bar Chart) 

Purpose: Ranks platforms by total sales volume (in millions). 

Insights: 

The Wii platform has the highest sales volume (over 500M units). 

PS2, X360, and PS3 follow closely as top performers. 

Older generations like the DS and GBA still hold significant sales figures. 

Business Implication: Historical data shows massive success on key console cycles, particularly motion-control and previous-gen systems. 

3. Sales Trend Over Years (Area Chart) 

Purpose: Visualizes global sales volume over time, from around 1980 to 2020. 

Insights: 

Sales volumes were very low until the mid-1990s. 

Sales peaked dramatically around the mid-2000s to early 2010s. 

A significant decline is visible after the peak years. 

Business Implication: The physical game market has matured and likely shifted focus to digital distribution and subscription models in recent years. 

4. Sum of Global Sales by Publisher (Horizontal Bar Chart) 

Purpose: Ranks publishers based on their aggregated global sales volume. 

Insights: 

Sony Computer Entertainment is the leading publisher by sales (15.2% share visible). 

Nintendo and Electronic Arts (EA) follow closely in total sales volume. 

Activision, Ubisoft, and Take-Two Interactive are also major players. 

Business Implication: A few major publishers hold significant market share, indicating a highly consolidated top tier in the industry. 

5. Top 10 Platforms (Treemap) 

Purpose: Visually represents the top platforms where games are published and sold. 

Insights: 

PS2 and X360 occupy the largest segments of the treemap, indicating they were dominant platforms. 

PS3, Wii, DS, and PSP are other major contributors. 

PC has a smaller, consistent presence. 

Business Implication: Cross-platform releases across dominant console generations likely maximized reach and revenue for publishers. 

📊 Dashboard 3: Sales, Engagement, and Rating Analysis 

🔹 Power BI Integration Process: 

Step 1: Connection Setup 

Power BI maintained the connection to the MySQL database (GamingAnalytics_2026). 

All three tables (games, vgsales, and merged_data) were utilized to provide a holistic view. 

Step 2: Data Modeling 

Logical relationships were leveraged to cross-filter sales, engagement, and rating data simultaneously. 

Advanced DAX measures combined metrics (e.g., Plays and Sales) to analyze correlations between user sentiment and commercial success, yielding KPIs like the Wishlist Conversion Rate (0.75%). 

Step 3: Visualization Building 

Filters across all three primary dimensions (Genre, Platform, Year) enabled comprehensive analysis. 

Interactive visuals included bar charts (High Rated Platforms), the treemap (Genre Engagement), and a scatter plot (Sales vs Wishlist) for a multi-faceted view of market performance. 

Sales, Engagement and Rating Analysis dashboard 

🎯 Key Performance Indicators (KPIs): 

KPI 

Description 

Value 

Insight 

High-Rated Game Ratio 

Ratio of games with high ratings. 

0.30 

Indicates that a notable portion of the library maintains high-quality standards. 

Average Global Sales per Title 

Mean sales units across all game titles. 

0.54M 

Provides a benchmark for an average title's commercial reach. 

Average Engagement Rate 

Mean user interaction level per title. 

1.07K 

Highlights general player interest and retention levels. 

Wishlist Conversion Rate 

Percentage of wishlisted games that are eventually purchased. 

0.75% 

Suggests a conversion opportunity; targeted marketing might increase this rate. 

📈 Detailed Visualization Insights: 

1. High Rated Platforms (Bar Chart) 

Purpose: Ranks platforms based on the volume of high-rated games available on each. 

Insights: 

The Doom platform has the highest number of high-rated games listed. 

Shadow and Resident Evil follow as platforms with significant high-rated game counts. 

Business Implication: Platform choice significantly impacts the availability of critically acclaimed titles, which can drive platform adoption. 

2. Regional Sales Trend across Decades (Area Chart) 

Purpose: Visualizes the total sales volume over time across different decades. 

Insights: 

Sales volumes were minimal until the 1980s. 

A significant peak in sales occurred in the mid-2000s and early 2010s. 

Sales have trended downward in recent years shown. 

Business Implication: The market experienced a boom period in the physical console era. Suggesting a shift to new monetization models (digital, subscriptions) is necessary for continued growth. 

3. Best Combinations (Bar Chart) 

Purpose: Ranks specific genre combinations by some metric (likely engagement or sales). 

Insights: 

Action games rank highest with a value over 300K. 

Shooter, Platform, and Role-Playing genres follow. 

Business Implication: Certain genre pairings consistently outperform others in user engagement or sales metrics. 

4. Publisher Sales Ranking across all decades (Horizontal Bar Chart) 

Purpose: Ranks publishers based on their aggregated sales volume across all time. 

Insights: 

Nintendo is the top publisher in total sales shown in this view. 

Sony Computer Entertainment and Electronic Arts follow closely. 

Activision, Take-Two Interactive, and Ubisoft are other major players. 

Business Implication: A few legacy publishers dominate historical sales, indicating strong brand power and franchise longevity. 

5. Genre Engagement (Donut Chart) 

Purpose: Shows the distribution of user engagement metrics across various genres. 

Insights: 

Role-Playing and Action genres have large shares of engagement. 

Platform and Shooter genres also have significant engagement percentages. 

Business Implication: Players invest significant time in expansive genres like RPGs and Action games, suggesting strong retention potential. 

6. Sales vs Wishlist (Scatter/Distribution Chart) 

Purpose: Examines the relationship between total sales volume and total wishlist counts. 

Insights: 

Most games cluster in the low-sales/low-wishlist corner. 

There are a few extreme outliers with both very high sales and very high wishlists. 

Business Implication: Only a small percentage of titles achieve blockbuster status; success is highly polarized. 

Interactive Filters (Genre, Platform, Publisher, Year): 

Purpose: Enables stakeholders to dynamically slice the entire dashboard's data based on specific criteria. 

Insights: 

Filters are available for Year, Genres, Platform, and Publisher. 

The ability to select combinations (e.g., how Action games performed in 2010 on a specific platform) allows for detailed comparisons. 

This interactivity makes the dashboard a decision-support tool rather than a static report. 

Business Implication: These filters allow management teams to conduct “what-if” analysis and perform granular data exploration, aiding strategy formulation for upcoming game launches or market analysis. 

🎮 OVERALL BUSINESS INSIGHTS: 

Area 

Key Insight 

Strategic Recommendation 

Genre Performance 

Action (24.19%), Platform (21.23%), and Shooter (12.37%) dominate sales; Role-Playing is a significant engagement area.  

Focus on R&D on fast-paced action titles for sales and potentially explore immersive RPGs for deep user retention. 

Platform Trend 

PS2 (577M) and X360 (494M) were historically dominant platforms; PC and handhelds show consistent presence.  

Prioritize console releases for mass-market impact but maintain presence in PC and emerging platforms like cloud gaming. 

User Engagement 

High wishlist counts don't always equate to perfect ratings (e.g., Elden Ring ratings vary on wishlist chart).  

Balance marketing promises with actual gameplay quality; analyze pre-launch hype versus post-launch satisfaction. 

Sales Pattern 

Sales peaked around 2005-2010 then declined; NA market accounts for over 50% of global sales.  

Explore subscription-based and digital download models to adapt to modern consumer habits and focus primary resources on the North American market. 

 

✅ OUTCOME: 

The Power BI dashboard successfully transformed raw data into visual intelligence, enabling: 

Real-time tracking of game success. 

Deep insight into sales performance, user preferences, and platform efficiency. 

Data-backed decision-making for publishers, developers, and marketers. 

EXPLORATORY DATA ANALYSIS (EDA): 

The Exploratory Data Analysis phase serves as the foundation for understanding the video game industry landscape through data-driven insights. By integrating information from multiple sources such as games metadata, sales data, and merged engagement data, this analysis identifies performance trends, consumer preferences, and market patterns that can influence strategic decisions for game publishers, developers, and marketers. 

1. Dataset Used: 

games.csv — Includes game metadata (genre, platform, developer, release year, 

ratings, wishlists, plays, backlog, etc.) 

vgsales.csv — Captures regional and global sales data (NA_Sales, EU_Sales, 

JP_Sales, Other_Sales, Global_Sales) 

merged_data.csv — Combines both datasets to analyze the relationship between 

engagement, ratings, and sales. 

 

EDA Findings & Insights: 

📁 games.csv (Game Metadata & Engagement): 

What are the top-rated games by user reviews? 
The games with the highest ratings visible on the wishlist rating chart are Elden Ring, Omori, and NieR Replicant. 

Which developers (Teams) have the highest average ratings? 
The top-rated teams are Capcom (130), followed by Square Enix (118), and then Nintendo teams (73, 72, 62). 

What are the most common genres in the dataset? 
The most common genres by sales percentage are Action (24.19%), Platform (21.23%), and Shooter (12.37%). 

Which games have the highest backlog compared to wishlist? 
The backlog vs wishlist chart shows many games with wishlists up to 5000 and backlogs reaching up to 100K units. 

What is the game release trend across years? 
The number of published games was low until around 1995, increased dramatically, and peaked around the years 2008-2010 before declining. 

What is the distribution of user ratings? 
The average rating across all 11.36K distinct video games is 3.69. 

What are the top 10 most wishlisted games? 
The top wishlisted games are Elden Ring, Omori, NieR Replicant, NieR: Automata, and Sekiro: Shadows Die Twice. 

What’s the average number of plays per genre? 
The total plays across all genres amount to 9 million, with Action and Platform contributing highly. 

Which developer studios are the most productive and impactful? 
Nintendo, Activision, and Take-Two Interactive are the top three publishers by games sold and published volume. 

💰 vgsales.csv (Sales Data Only): 

Which region generates the most game sales? 
North America (NA Sales) generates the most sales at 50.07% ($4.33K of total sales). 

What are the best-selling platforms? 
The best-selling platforms by unit volume are the Wii (559 units), X360 (345 units), and PS3 (311 units). 

What’s the trend of game releases and sales over years? 
Sales grew significantly from 1980, peaking sharply between 2008 and 2010, then declined after 2010. 

Who are the top publishers by sales? 
Nintendo is the top publisher by total global sales (15.2% share), followed by Electronic Arts and Activision. 

Which games are the top 10 best-sellers globally? 
The top sellers are Wii Sports (248), Mario Kart Wii (107), and Tetris (91). 

How do regional sales compare for specific platforms? 
The "Top Region Sales" chart shows NA Sales dominate EU and JP sales across all platforms. 

How has the market evolved by platform over time? 
The market moved from early consoles to the dominance of platforms like the PS2, X360, PS3, and Wii in the 2000s. 

What are the regional genre preferences? 
Action is globally dominant, but the market shares show a significant preference for Role-Playing games in Japan (JP Sales region). 

What’s the yearly sales change per region? 
Sales trends show synchronized peaks across NA, EU, and Other regions, all peaking around 2008-2010. 

What is the average sales per publisher? 
Nintendo has the highest average global sales per publisher ranking across all decades shown. 

What are the top 5 best-selling games per platform? 
On the Wii platform, Wii Sports and Mario Kart Wii are the top sellers. 

 

🔁 Merged Dataset (Sales + Engagement + Ratings): 

Which game genres generate the most global sales? 
Action ($315.20M) and Platform ($263.69M) are the genres with the highest global sales volume. 

How does user rating affect global sales? 
There is a positive correlation, as suggested by the sales vs rating correlation chart. The average global sales per title is $0.54M. 

Which platforms have the most games with high ratings (e.g., above 4)? 
The "High Rated Platforms" chart highlights specific games like Doom, Shadow of the Tomb Raider, and Resident Evil as highly rated. 

What’s the trend of releases and sales over time? 
The regional sales trends across decades confirm that sales for all regions peaked in the late 2000s. 

Do highly wishlisted games lead to more sales? 
There is a 0.75% Wishlist Conversion Rate indicated, suggesting some correlation. 

Which genres have the highest engagement but lowest sales? 
Some genres like Puzzle and Strategy might show high engagement metrics (Total Plays) relative to their total sales value compared to Action games. 

Do highly listed games (Wishlist/backlogs) correlate with better ratings? 
Yes, a Success Ratio of 69.34% is displayed on the dashboard, suggesting a strong correlation. 

How does user engagement differ across genres? 
Role-Playing, Shooter, and Sports genres show high "Genre Engagement" metrics. 

What are the top-performing combinations of Genre + Platform? 
The Action and Platform genres are the best combinations overall, likely driven by their success on top consoles like the Wii and PlayStation platforms. 

What does a regional sales heatmap by genre reveal? 
The sales ranking chart reveals Nintendo dominates publisher sales in all decades shown. 

🎯 Business Objective 

The primary objective of this EDA is to uncover actionable insights that can guide strategic business decisions in: 

Game development prioritization (by genre and platform) 

Regional marketing strategy optimization 

Forecasting sales trends for upcoming titles 

Enhancing customer engagement via wishlist and rating analytics 

OVERALL PROJECT SUMMARY & CONCLUSION: 

The Video Game Sales and Engagement Analysis Project successfully integrated data from multiple sources — including game metadata, global sales, and user engagement metrics — to provide a comprehensive 360° view of the gaming industry’s performance. Through a structured approach involving data cleaning, database management, and exploratory data analysis (EDA) using MySQL, Python, and Power BI, the project uncovered critical insights about the drivers of success in the gaming ecosystem. 

The findings clearly demonstrate that: 

Genre and Platform play a decisive role in shaping both engagement and sales performance. 

Action, Adventure, and Sports titles consistently dominate global markets, reflecting players’ preference for immersive and competitive experiences. 

PlayStation and Nintendo platforms remain the most influential in driving high-rated and high-selling games. 

North America and Europe lead in total sales, while Japan retains strong dominance in RPG and niche genres, suggesting region-specific strategies are essential for maximizing reach. 

User ratings and wishlist counts show a strong positive correlation with global sales, emphasizing the power of customer perception and pre-launch marketing. 

The industry has evolved from the physical sales boom toward a digital-first, engagement-driven era, where consistent updates, DLCs, and cross-platform strategies dictate longevity. 

From a business strategy perspective, this analysis offers actionable guidance: 

🎯 Developers should focus on quality-driven storytelling and community engagement to sustain high ratings and replay value. 

📈 Publishers must tailor release timing and regional marketing campaigns based on platform cycles and regional preferences. 

💰 Investors and marketers can use sales and engagement metrics as key indicators to forecast future trends and optimize ROI. 

 

In conclusion, this project demonstrates the power of data analytics in strategic decision-making. By connecting gameplay metrics, consumer behavior, and market performance, it transforms raw data into insightful business intelligence — empowering the gaming industry to innovate, predict, and deliver more impactful entertainment experiences to global audiences. 

 
