WITH clean_activity AS (
    SELECT *, STR_TO_DATE(ActivityDate, '%c/%e/%Y') AS activity_date_clean
    FROM fitbit.dailyactivity_merged
),
clean_sleep AS (
    SELECT *, STR_TO_DATE(SleepDay, '%c/%e/%Y') AS sleep_date_clean
    FROM fitbit.sleepday_merged
)
SELECT 
    a.*,
   s.TotalSleepRecords, s.TotalMinutesAsleep, s.TotalTimeInBed
FROM clean_activity a
LEFT JOIN clean_sleep s 
    ON a.Id = s.Id AND a.activity_date_clean = s.sleep_date_clean;