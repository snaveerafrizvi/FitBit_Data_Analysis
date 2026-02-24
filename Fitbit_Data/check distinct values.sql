SELECT
    'Daily Activity' AS datasetname,
	COUNT(DISTINCT Id) AS unique_ids
FROM
	dailyactivity_merged
UNION ALL
	SELECT
		'Weight' AS datasetname,
		COUNT(DISTINCT Id) AS unique_ids
	FROM
		weightloginfo_merged
UNION ALL
	SELECT
		'Daily Sleep' AS datasetname,
		COUNT(DISTINCT Id) AS unique_ids
	FROM
		sleepday_merged
UNION ALL
	SELECT
		'Daily Steps' AS datasetname,
		COUNT(DISTINCT Id) AS unique_ids
	FROM
		dailysteps_merged
UNION ALL
	SELECT
		'Daily Intensities' AS datasetname,
		COUNT(DISTINCT Id) AS unique_ids
	FROM
		dailyintensities_merged
UNION ALL
	SELECT
		'Daily Calories' AS datasetname,
		COUNT(DISTINCT Id) AS unique_ids
	FROM
		dailycalories_merged
        
        
        
	