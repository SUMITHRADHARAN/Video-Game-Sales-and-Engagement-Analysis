# Video-Game-Sales-and-Engagement-Analysis
This project analyzes video game sales and user engagement data using Python, SQL, and Power BI. It merges sales and engagement metrics to uncover market trends and user behavior, providing actionable insights for developers and publishers to guide decisions in marketing and product development.

INTRODUCTION: 

The video gaming industry is one of the most dynamic and rapidly growing sectors of the global entertainment market. With millions of games released across various platforms, understanding what drives a game’s commercial success and player engagement has become crucial for developers, publishers, and marketers. 

This project, Video Game Sales and Engagement Analysis, focuses on analyzing game- related data — including sales figures, player interactions, and user ratings — to identify patterns and insights that can guide strategic decision-making in the gaming ecosystem. By integrating and analyzing datasets on both sales performance and player engagement, this study uncovers the key factors influencing game success, such as genre trends, platform popularity, and regional sales behavior. It leverages tools like Python (for Exploratory Data Analysis), SQL (for data storage and structuring), and Power BI (for interactive visual analytics) to deliver actionable business intelligence. 

 

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

Enables strategic planning for future launches. 

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

Load dataframes (path adjusted for clarity) 

df = pd.read_csv('games.csv') 

sales_df = pd.read_csv('vgsales.csv') 

Handle missing categorical values in sales data 

sales_df['Year'] = sales_df['Year'].fillna('Unknown') 

sales_df['Publisher'] = sales_df['Publisher'].fillna('Unknown') 

Ensure sales columns are numeric and fill NaNs with 0.0 

sales_cols = ['NA_Sales', 'EU_Sales', 'JP_Sales', 'Other_Sales', 'Global_Sales'] 

for col in sales_cols: 

    sales_df[col] = pd.to_numeric(sales_df[col], errors='coerce').fillna(0.0) 

2. Removing Duplicate Records 

Since the datasets were merged from two different sources, several potential duplicate entries could appear (e.g., the same game title repeated across multiple platform records). Duplicates can distort average ratings and overcount sales. 

The code snippet focuses on merging via how='inner', keeping only games present in both lists, which implicitly manages a level of uniqueness. Further explicit duplicate removal using .drop_duplicates() would typically be applied to the final merged dataset. 

Code: 

Standardize key column name before merging 

sales_df.rename(columns={'Name': 'Title'}, inplace=True) 

'how=inner' keeps games found in BOTH datasets 

Note: For robust de-duplication across platforms/years, .drop_duplicates() would be used on the resulting merged_df 

merged_df = pd.merge(df, sales_df, on='Title', how='inner') 

3. Trimming and Removing Irregular Spaces 

In several text columns (like Title, Genre, Platform, and Publisher), unwanted leading or trailing spaces were identified. 

The Python script provided uses .strip() within the clean_k_format helper function, indicating that trimming of whitespace was a consideration in the cleaning logic. 

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

Numeric Formatting (K-format conversion) 

cols_to_clean = ['Plays', 'Playing', 'Backlogs', 'Wishlist', 'Number of Reviews', 'Times Listed'] 
for col in cols_to_clean: if col in df.columns: 
    df[col] = df[col].apply(clean_k_format) .apply(clean_k_format) 

✅ Result: All text, date, and numeric columns followed a unified format across the merged dataset, allowing smooth analysis and visual consistency in the Power BI dashboard. 

5. Final Data Validation 

After cleaning, the dataset was validated to confirm that: 

There were no remaining critical missing or duplicate records. 

All categorical columns had consistent labels. 

Numeric and date columns were in correct data types, ready for merging (via pd.merge) and subsequent SQL structuring/EDA. 

Code: 

Save cleaned outputs 

df.to_csv('cleaned_games.csv', index=False)  

sales_df.to_csv('cleaned_vgsales.csv', index=False)  

merged_df.to_csv('merged_game_data.csv', index=False) 

print(f"Process Complete!")  

print(f"Merged file saved as 'merged_game_data.csv' with {merged_df.shape[0]} rows.") 
