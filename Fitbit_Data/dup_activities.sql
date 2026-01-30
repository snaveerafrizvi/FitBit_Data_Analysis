SELECT
 	ActivityDate,
    Id,
	Calories,
	TotalSteps,
	LightlyActiveMinutes,
	FairlyActiveMinutes,
	VeryActiveMinutes,
	SedentaryMinutes,
	LightActiveDistance,
	ModeratelyActiveDistance,
	VeryActiveDistance,
    COUNT(*) AS DuplicateCount
FROM
    dailyactivity_merged
GROUP BY
	ActivityDate,
    Id,
	Calories,
	TotalSteps,
	LightlyActiveMinutes,
	FairlyActiveMinutes,
	VeryActiveMinutes,
	SedentaryMinutes,
	LightActiveDistance,
	ModeratelyActiveDistance,
	VeryActiveDistance
HAVING
    COUNT(*) > 1