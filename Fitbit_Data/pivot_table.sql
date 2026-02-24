SELECT 
	Field,
    SUM(CASE WHEN Data_Indicator = 'Daily Activity' THEN 1 ELSE 0 END) AS 'Daily_Activity',
    SUM(CASE WHEN Data_Indicator = 'Daily Intensities' THEN 1 ELSE 0 END) AS 'Daily_Intensities',
    SUM(CASE WHEN Data_Indicator = 'Daily Steps' THEN 1 ELSE 0 END) AS 'Daily_Steps',
    SUM(CASE WHEN Data_Indicator = 'Daily Calories' THEN 1 ELSE 0 END) AS 'Daily_Calories',
	SUM(CASE WHEN Data_Indicator = 'Daily Sleep' THEN 1 ELSE 0 END) AS 'Daily_Sleep',
    Count(*) as Total_Count
FROM
	(SELECT 
	   COLUMN_NAME AS Field, 'Daily Sleep' AS Data_Indicator 
	FROM 
	  INFORMATION_SCHEMA.COLUMNS
	WHERE 
	  TABLE_NAME = 'sleepday_merged'
	UNION
	  SELECT 
		COLUMN_NAME AS Field, 'Daily Activity' AS Data_Indicator
	  FROM 
		INFORMATION_SCHEMA.COLUMNS
	  WHERE 
		TABLE_NAME = 'dailyactivity_merged'
	UNION
	  SELECT 
		COLUMN_NAME AS Field, 'Daily Steps' AS Data_Indicator
	  FROM 
		INFORMATION_SCHEMA.COLUMNS
	  WHERE 
		TABLE_NAME = 'dailysteps_merged'
	UNION
	  SELECT 
		  COLUMN_NAME AS Field, 'Daily Intensities' AS Data_Indicator
	FROM 
		INFORMATION_SCHEMA.COLUMNS
	  WHERE 
		TABLE_NAME = 'dailyintensities_merged'
	UNION
	  SELECT 
		COLUMN_NAME AS Field, 'Daily Calories' AS Data_Indicator
	  FROM 
		INFORMATION_SCHEMA.COLUMNS
	  WHERE 
		TABLE_NAME = 'dailycalories_merged') as analysis
Group By
	Field
Order by
	Total_Count DESC