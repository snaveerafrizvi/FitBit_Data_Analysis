SELECT 
  I.Id,	
  I.ActivityHour,		
  I.TotalIntensity,	
  I.AverageIntensity,
  S.StepTotal,
  C.Calories
FROM hourlyintensities_merged as I
JOIN
	hourlysteps_merged as S 
ON 
	I.Id = S.Id
AND
	I.ActivityHour = S.ActivityHour
JOIN	
	hourlycalories_merged as C
ON 
	I.Id = C.Id
AND
	I.ActivityHour = C.ActivityHour