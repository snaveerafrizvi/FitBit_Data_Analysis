SELECT
 	*
FROM
    dailyactivity_merged
WHERE
	ActivityDate IS NULL OR
    Id IS NULL OR
	Calories IS NULL OR
	TotalSteps IS NULL OR
	LightlyActiveMinutes IS NULL OR
	FairlyActiveMinutes IS NULL OR
	VeryActiveMinutes IS NULL OR
	SedentaryMinutes IS NULL OR
	LightActiveDistance IS NULL OR
	ModeratelyActiveDistance IS NULL OR
	VeryActiveDistance IS NULL 
