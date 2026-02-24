SELECT 
   COLUMN_NAME AS Field, 'Daily Sleep' AS Data_Indicator, DATA_TYPE AS Type 
FROM 
  INFORMATION_SCHEMA.COLUMNS
WHERE 
  TABLE_NAME = 'sleepday_merged'
UNION
  SELECT 
    COLUMN_NAME AS Field, 'Daily Activity' AS Data_Indicator, DATA_TYPE AS Type
  FROM 
    INFORMATION_SCHEMA.COLUMNS
  WHERE 
    TABLE_NAME = 'dailyactivity_merged'
UNION
  SELECT 
    COLUMN_NAME AS Field, 'Daily Steps' AS Data_Indicator, DATA_TYPE AS Type
  FROM 
    INFORMATION_SCHEMA.COLUMNS
  WHERE 
    TABLE_NAME = 'dailysteps_merged'
UNION
  SELECT 
      COLUMN_NAME AS Field, 'Daily Inensities' AS Data_Indicator, DATA_TYPE AS Type
  FROM 
    INFORMATION_SCHEMA.COLUMNS
  WHERE 
    TABLE_NAME = 'dailyintensities_merged'
UNION
  SELECT 
    COLUMN_NAME AS Field, 'Daily Calories' AS Data_Indicator, DATA_TYPE AS Type
  FROM 
    INFORMATION_SCHEMA.COLUMNS
  WHERE 
    TABLE_NAME = 'dailycalories_merged'
ORDER BY
  Field, Data_Indicator
