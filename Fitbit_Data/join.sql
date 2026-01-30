SELECT 
	A.Id,
	A.TotalSteps,
	A.TotalDistance,
	A.Calories,
	A.FairlyActiveMinutes,
	A.LightActiveDistance,
    A.LightlyActiveMinutes, 
	A.LoggedActivitiesDistance,
	A.ModeratelyActiveDistance,
	A.SedentaryActiveDistance,
	A.SedentaryMinutes,
	A.TrackerDistance,
	A.VeryActiveDistance,
	A.VeryActiveMinutes,
    STR_TO_DATE(A.ActivityDate, '%m/%d/%Y') as date_clean,
	B.TotalSleepRecords,
	B.TotalMinutesAsleep,
	B.TotalTimeInBed
FROM 
	fitbit.dailyactivity_merged as A
LEFT JOIN
	(SELECT
		Id,
		TotalSleepRecords,
		TotalMinutesAsleep,
		TotalTimeInBed,
        STR_TO_DATE(SleepDay, '%m/%d/%Y') as date_clean
	FROM 
		fitbit.sleepday_merged) as B
ON
	A.Id = B.Id 
	AND
	STR_TO_DATE(A.ActivityDate, '%m/%d/%Y') = B.date_clean
        
       
       