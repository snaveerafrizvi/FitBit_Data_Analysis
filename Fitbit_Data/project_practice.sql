SELECT 
	*
FROM 
	fitbit.dailyactivity_merged as tab1
JOIN
	weightloginfo_merged as tab2
ON
	tab1.Id= tab2.Id