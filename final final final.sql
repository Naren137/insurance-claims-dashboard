create database project_2;
use project_2;
DROP TABLE IF EXISTS insurance_data;

CREATE TABLE insurance_data (
    Policy_ID VARCHAR(50),
    Customer_ID VARCHAR(50),
    Customer_Name VARCHAR(100),
    Gender VARCHAR(10),
    Age INT,
    Marital_Status VARCHAR(20),
    City VARCHAR(50),
    State VARCHAR(10),
    Policy_Type VARCHAR(20),
    Policy_Start_Date DATE,
    Premium_Amount DECIMAL(10,2),
    Payment_Method VARCHAR(50),
    Claim_Amount DECIMAL(10,2),
    Claim_Status VARCHAR(20),
    Policy_Active VARCHAR(5),
    Number_of_Claims INT,
    Last_Interaction_Date DATE,
    Policy_End_Date DATE
);

SELECT 
    *
FROM
    insurance_data;

SELECT COUNT(*) AS total_rows FROM insurance_data;

desc insurance_data;

-- EDA -- 

-- Total number of records in the dataset
SELECT COUNT(*) AS total_rows
FROM insurance_data;

-- Count of NULLs and blank strings in each relevant column
SELECT 
  COUNT(*) AS total_rows,
  SUM(CASE WHEN Policy_ID IS NULL OR Policy_ID = '' THEN 1 ELSE 0 END) AS null_policy_id,
  SUM(CASE WHEN Customer_ID IS NULL OR Customer_ID = '' THEN 1 ELSE 0 END) AS null_customer_id,
  SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS null_age,
  SUM(CASE WHEN Policy_Start_Date IS NULL THEN 1 ELSE 0 END) AS null_start_date,
  SUM(CASE WHEN Policy_End_Date IS NULL THEN 1 ELSE 0 END) AS null_end_date
FROM insurance_data;

-- Distribution of gender
SELECT Gender, COUNT(*) AS count
FROM insurance_data
GROUP BY Gender
ORDER BY count DESC;

-- Age distribution and basic stats
SELECT 
  MIN(Age) AS min_age,
  MAX(Age) AS max_age,
  AVG(Age) AS avg_age
FROM insurance_data;

-- Top 10 cities by count
SELECT City, COUNT(*) AS count
FROM insurance_data
GROUP BY City
ORDER BY count DESC
LIMIT 10;

-- Top 10 states by count
SELECT State, COUNT(*) AS count
FROM insurance_data
GROUP BY State
ORDER BY count DESC
LIMIT 10;

-- Summary stats for premiums and claims
SELECT 
  COUNT(*) AS total_policies,
  SUM(Premium_Amount) AS total_premium,
  AVG(Premium_Amount) AS avg_premium,
  MAX(Premium_Amount) AS max_premium,
  SUM(Claim_Amount) AS total_claims,
  AVG(Claim_Amount) AS avg_claim
FROM insurance_data;

-- Number of policies by type
SELECT Policy_Type, COUNT(*) AS count
FROM insurance_data
GROUP BY Policy_Type
ORDER BY count DESC;

-- How many claims were approved, denied, pending etc.
SELECT Claim_Status, COUNT(*) AS count
FROM insurance_data
GROUP BY Claim_Status
ORDER BY count DESC;

-- Distribution of policies by year
SELECT 
  YEAR(Policy_Start_Date) AS start_year, 
  COUNT(*) AS count
FROM insurance_data
GROUP BY start_year
ORDER BY start_year;

-- Policy Active flag distribution (yes/no/null)
SELECT Policy_Active, COUNT(*) AS count
FROM insurance_data
GROUP BY Policy_Active;

-- How many had claims vs zero claims
SELECT 
  CASE 
    WHEN Number_of_Claims = 0 THEN 'No Claims'
    ELSE 'Has Claims'
  END AS claim_group,
  COUNT(*) AS count
FROM insurance_data
GROUP BY claim_group;

-- How customers pay their premiums
SELECT Payment_Method, COUNT(*) AS count
FROM insurance_data
GROUP BY Payment_Method
ORDER BY count DESC;


-- Views

CREATE OR REPLACE VIEW project_2_vw_customer_segment_profitability AS
SELECT
    Policy_ID,
    Customer_ID,
    Age,
    Marital_Status,
    City,
    State,
    Premium_Amount,
    Claim_Amount,
    (Premium_Amount - Claim_Amount) AS Profit
FROM insurance_data;


CREATE OR REPLACE VIEW project_2_vw_claim_trends AS
SELECT
    Policy_ID,
    Customer_ID,
    YEAR(Policy_Start_Date) AS Start_Year,
    MONTH(Policy_Start_Date) AS Start_Month,
    Claim_Amount,
    Claim_Status
FROM insurance_data;


CREATE OR REPLACE VIEW project_2_vw_policy_type_performance AS
SELECT
    Policy_ID,
    Customer_ID,
    Policy_Type,
    Premium_Amount,
    Claim_Amount,
    (Premium_Amount - Claim_Amount) AS Profit
FROM insurance_data;


CREATE OR REPLACE VIEW project_2_vw_geographic_claims AS
SELECT
    Policy_ID,
    Customer_ID,
    State,
    City,
    Premium_Amount,
    Claim_Amount,
    Number_of_Claims,
    (Premium_Amount - Claim_Amount) AS Profit
FROM insurance_data;


CREATE OR REPLACE VIEW project_2_vw_customer_engagement AS
SELECT
    Policy_ID,
    Customer_ID,
    Last_Interaction_Date,
    DATEDIFF(CURDATE(), Last_Interaction_Date) AS Days_Since_Last_Interaction,
    Policy_Active,
    Number_of_Claims,
    Claim_Amount
FROM insurance_data;


CREATE OR REPLACE VIEW project_2_vw_master_policy_dim AS
SELECT DISTINCT
    Policy_ID,
    Customer_ID,
    Policy_Type,
    State,
    City,
    Policy_Active
FROM insurance_data;
