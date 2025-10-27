USE ShopEasy;
GO

/*=====================================================
  STEP 1: CLEAN `customer_journey` TABLE
  - Remove duplicates
  - Standardize text case (to lowercase)
  - Trim extra spaces
  - Handle NULLs in Duration
=====================================================*/
WITH customer_journey_cleaned AS (
    SELECT DISTINCT
        JourneyID,
        CustomerID,
        ProductID,
        VisitDate,
        TRIM(LOWER(Stage))  AS formatted_stage,   -- Standardize stage text
        TRIM(LOWER(Action)) AS formatted_action,  -- Standardize action text
        COALESCE(Duration, 0) AS Duration         -- Replace NULLs with 0
    FROM customer_journey
)
SELECT * 
FROM customer_journey_cleaned;


/*=====================================================
  STEP 2: CLEAN `customers` TABLE
  - Ensures distinct customers before import
  - Add Age Group Column
=====================================================*/
WITH customers_cleaned AS (
    SELECT DISTINCT *,
    CASE
        WHEN age >= 18 AND age <= 24 THEN '18-24'
        WHEN age >= 25 AND age <= 34 THEN '25-34'
        WHEN age >= 35 AND age <= 44 THEN '35-44'
        WHEN age >= 45 AND age <= 54 THEN '45-54'
        WHEN age >= 55 AND age <= 64 THEN '55-64'
        ELSE '65+' 
    END AS Age_Group
    FROM customers
)
SELECT * 
FROM customers_cleaned;


/*=====================================================
  STEP 3: CLEAN `engagement_data` TABLE
  - Standardize text case
  - Split combined Views & Clicks column
=====================================================*/
WITH engagement_data_cleaned AS (
    SELECT 
        EngagementID,
        ContentID,
        TRIM(LOWER(ContentType)) AS formatted_content_type,  -- Standardize text
        Likes,
        EngagementDate,
        CampaignID,
        ProductID,

        -- Split 'ViewsClicksCombined' into 'Views' and 'Clicks'
        LEFT(ViewsClicksCombined, CHARINDEX('-', ViewsClicksCombined) - 1) AS Views,
        SUBSTRING(
            ViewsClicksCombined,
            CHARINDEX('-', ViewsClicksCombined) + 1,
            LEN(ViewsClicksCombined)
        ) AS Clicks
    FROM engagement_data
)
SELECT * 
FROM engagement_data_cleaned;


/*=====================================================
  STEP 4: 
  - LOAD SUPPORTING DIMENSION TABLES
  - REMOVING UNNECESSARY COLUMN (Category)
=====================================================*/
SELECT * FROM geography;
SELECT ProductID,ProductName,Price FROM products;
