// Asset Snowflake Data

// 1. Explore Asset Data

SELECT *
FROM "neocol".NEOCOL.ASSET
LIMIT 1000;

// 2. Explore metadata types 
SELECT 
    COLUMN_NAME,
    DATA_TYPE,
    CHARACTER_MAXIMUM_LENGTH,  
    NUMERIC_PRECISION,         
    NUMERIC_SCALE              
FROM 
    "neocol".INFORMATION_SCHEMA.COLUMNS
WHERE 
    TABLE_NAME = 'ASSET' 
    AND TABLE_SCHEMA = 'NEOCOL'
    AND TABLE_CATALOG = 'neocol';  -- Optional, to ensure database is specified

// Analyse difference in data formats with target systems 
// Asign column names to SF Asset RLM format

SELECT
    SFDC_ID AS FigmaOrg__c,
    SALESFORCE_ACCOUNT_ID AS AccountId,
    PRODUCT AS ProductCode,
    CURRENCY AS CurrencyIsoCode,
    PRODUCT AS Name,
    PERIOD_START AS LifecycleStartDate,
    PERIOD_END AS LifecycleEndDate,
    MRR_PRICE AS CurrentMRR,
    PERIOD_END AS CurrentLifecycleEndDate,
    LICENSE_COUNT AS CurrentQuantity,
FROM "neocol".NEOCOL.asset
LIMIT 1000;


