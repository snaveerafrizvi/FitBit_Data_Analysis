# FitBit_Data_Analysis

## Project Overview

This case study, part of the Google Data Analytics Capstone, analyzes Fitbit tracker data to provide actionable
insights for Bellabeat’s marketing strategy. Bellabeat is a high-tech manufacturer of health-focused smart
products for women and was co-founded by Urška Sršen and Sando Mur

## Business Understanding 
The goal of this analysis is to identify smart device usage trends and determine how these patterns can be
applied to Bellabeat’s customers to optimize their marketing strategy. It aims to answer the following 3
questions
1. What are some trends in smart device usage?
2. How could these trends apply to Bellabeat customers?
3. How could these trends help influence Bellabeat marketing strategy?

## Programming Languages and Tools used**

This Project uses R and SQL; I have used SQLite but the code can be adapted for BigQuery and MySQL as well.
SQL was used for all Data Processing and Cleaning up to and including the Join. R was used for formatting any SQL data and Data Visualization and Plots (including any analysis and
transformations post the join).

## Data Understanding and Source

This Project explores the Fitness Tracker Data publicly available on Kaggle.

* Downloaded link for the data: https://www.kaggle.com/datasets/arashnic/fitbit.
* A copy of the CSV files used as well as column descriptions are also uploaded
* An excel file for data description is also uploaded
  
As stated on Kaggle the data was sourced from this link: https://zenodo.org/records/53894#.X9oeh3Uzaao and was collected by:

  * Furberg, Robert
 
  * Brinton, Julia
 
  * Keating, Michael 
 
  * Ortiz, Alexa1

## Modeling and Evaluation

This project is structured into two parts:

Part 1 will analyze Daily data for the following indicators:
• Daily Activity
• Daily Calories
• Daily Intensities
• Daily Steps
• Daily Sleep
• Weight

Part 1 is further divided into 2 subsections:
• The Data Processing and Cleaning Section will shortlist, clean, and join daily level data for analysis
• The Data Visualization and Plots Section will first focus on understanding the individual distributions
and composition of variables and then proceed to identifying any key relationships between them

Part 2 will analyze Hourly data for the following indicators:
• Hourly Calories
• Hourly Intensities
• Hourly Steps

Part 2 is also further divided into 2 subsections:
• The Data Processing and Cleaning Section will shortlist, clean, and join hourly level data for analysis
• The Data Visualization and Plots Section will review key summary statistics and examine how the
distributions of the three indicators fluctuate throughout the hours of the day.

At the end, this case study concludes by summarizing the key findings, insights, and recommendations
aimed at helping the Bellabeat marketing team expand its market share and more effectively address customer
needs.

Please refer to the Fitbit_DetailedAnalysis_For_Bellabeat.md file for 

*  The detailed analysis and report
*  All code, tables and figures

A pdf file version as well as the original .Rmd file are also uploaded

## Key Insights and Summary

Bellabeat has a significant opportunity to target users effectively and increase its market share for its health
and fitness products. The analysis confirms the existence of a target demographic that can be motivated to
raise their calorie expenditure, boost their daily step counts, and achieve their activity goals while reducing
time spent being sedentary, with the help of Bellabeat’s products and interventions. 

**Key Demographic Identified** Overall, the data indicates that most respondents are primarily lightly active with Lightly Active Minutes accounting for approximately 85% of the total activity.Daily average for calories burned is 2,361 kcal and it peaks at around 2000 kcal. While this aligns
with standard dietary guidelines, it is at the lower end of the 2000-2000 recommended range. This suggests that many participants are not highly active, indicating a potential target audience forBellabeat

**Personalization is Crucial:** The data shows considerable variation in user performance and activity levels. 
* The average step count of 8,319 is within the typical 5,000–7,000 step range; however, the data reveals a user base with distinct segments of both high and low performers. High performers, who average more than 10,000 steps per day, constitute more than one-fifth or (21.2%) of respondents, elevating the overall mean. Interestingly, the proportion of Sedentary users, averaging less than 5,000 steps per day, is also the same i.e. 21.2% or slightly more than one fifth of the total repsondents. The analysis of activity distance also reveals a significant variation in respondent performance
* A universal, “one-size-fits-all” approach will be ineffective. Bellabeat should instead implement a diversified,
targeted strategy featuring personalized recommendations and user-specific activity plans.

![User Segments](https://github.com/snaveerafrizvi/FitBit_Data_Analysis/blob/main/Fitbit_DetailedAnalysis_For_Bellabeat_files/figure-gfm/seg_users-1.png)

**Address High Sedentary Behavior:** Sedentary Minutes constitute a striking **79.4%** of the total time. Alarmingly high sedentary behavior negatively impacts both activity and sleep quality. Bellabeat must intervene by setting up targeted messages and reminders to prompt activity
when a user’s sedentary time exceeds a predetermined limit.

![Low quality sleep](https://github.com/snaveerafrizvi/FitBit_Data_Analysis/blob/main/Fitbit_DetailedAnalysis_For_Bellabeat_files/figure-gfm/minasleep_vs_sedmin-1.png)

![Low Activity](https://github.com/snaveerafrizvi/FitBit_Data_Analysis/blob/main/Fitbit_DetailedAnalysis_For_Bellabeat_files/figure-gfm/totalactmin_vs_sedmin-1.png)

**Promote Step Count and Activity:** Messaging that encourages higher activity levels and step counts
should be integrated, as these indicators were found to correlate with increased calorie burn.

**Time and Day Segmentation:** The effectiveness of messaging varies significantly depending on the day
type and timing: 
* Weekends: A more proactive policy is needed, as weekends show more distinct changes in
behavior. Messaging is likely to be most effective earlier in the day, around 1 PM.
* Weekdays: Messaging is
likely to be more effective later in the evening, around 6 PM.

![time-day](https://github.com/snaveerafrizvi/FitBit_Data_Analysis/blob/main/Fitbit_DetailedAnalysis_For_Bellabeat_files/figure-gfm/hourlyavg_time_day-1.png)

 

    

  
