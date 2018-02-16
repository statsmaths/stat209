---
title: "Project B: Data Dictionary"
author: "Taylor Arnold"
output: html_notebook
---

The dataset for the project gives demographic data about each census tract
in the United States (a small set of tracts have been filtered out due to
missing data). All variables are numeric unless otherwise noted.

Basic metadata about the tract:

- **state**: the state in which the tract resides
- **county**: the county in which the tract resides
- **cbsa**: the [core-based statistical area](https://en.wikipedia.org/wiki/Core-based_statistical_area) of the tract
- **lon**: the longitude coordinates at the center of the tract
- **lat**: the latitude coordinates at the center of the tract
- **population**: estimated population

Average income in the tract:

- **hh_income_q1**: the mean income for households in the first quartile
- **hh_income_q2**: the mean income for households in the second quartile
- **hh_income_q3**: the mean income for households in the third quartile
- **hh_income_q4**: the mean income for households in the fourth quartile
- **hh_income_q5**: the mean income for households in the fifth quartile
- **hh_income_top_5**: the 5th percentile of household income
- **hh_gini**: the [gini coefficient](https://en.wikipedia.org/wiki/Gini_coefficient) of the household income
- **median_rent**: median rent

Gender distribution:

- **sex_male**: percentage of residents who are male
- **sex_female**: percentage of residents who are female

Age distribution:

- **age_00_17**: percentage of residents who are less than 17 years old
- **age_18_24**: percentage of residents who are 18-24 years old
- **age_25_59**: percentage of residents who are 25-59 years old
- **age_60_plus**: percentage of residents who are over 60 years old

Race:

- **race_white**: percentage of residents who identify as white
- **race_black**: percentage of residents who identify as black
- **race_ntvam**: percentage of residents who identify as native american
- **race_asian**: percentage of residents who identify as asian
- **race_pacif**: percentage of residents who identify as a pacific islander
- **race_other**: percentage of residents who identify as another race
- **race_multi**: percentage of residents who identify as two or more races

Place of birth:

- **born_same_st**: percentage of residents who were born in the state they now live in
- **born_other_ne**: percentage of residents who were born in another state in the northeastern US
- **born_other_midwest**: percentage of residents who were born in another state in the midwestern US
- **born_other_south**: percentage of residents who were born in another state in the southern US
- **born_other_west**: percentage of residents who were born in another state in the western US

Method of commute:

- **commute_car**: percentage of residents who commute to work by car
- **commute_public**: percentage of residents who commute to work by public transit
- **commute_bike**: percentage of residents who commute to work by bike
- **commute_walk**: percentage of residents who commute to work by walking
- **commute_athome**: percentage of residents who work from home

Time of commute, given as a percentage of commuters:

- **leave_0000_0459**
- **leave_0500_0529**
- **leave_0530_0559**
- **leave_0600_0629**
- **leave_0629_0659**
- **leave_0700_0729**
- **leave_0730_0759**
- **leave_0800_0829**
- **leave_0829_0859**
- **leave_0900_0959**
- **leave_1000_1059**
- **leave_1100_1159**
- **leave_1200_1559**
- **leave_1600_2359**

Typical length of a commute in minutes, given as percentage of commuters:

- **ctime_00_05**
- **ctime_05_09**
- **ctime_10_14**
- **ctime_15_19**
- **ctime_20_24**
- **ctime_25_29**
- **ctime_30_34**
- **ctime_35_39**
- **ctime_40_44**
- **ctime_45_59**
- **ctime_60_89**
- **ctime_90_99**

Distribution of income in thousands of dollars, given as a percentage of
households:

- **income_000_010**
- **income_010_015**
- **income_015_020**
- **income_020_025**
- **income_025_030**
- **income_030_035**
- **income_035_040**
- **income_040_045**
- **income_045_050**
- **income_050_060**
- **income_060_075**
- **income_075_100**
- **income_100_125**
- **income_125_150**
- **income_150_200**
- **income_200_999**

Distribution of proportion of income spent on rent, given as percentage
of households who rent their residence:

- **rent_by_income_00_10**
- **rent_by_income_10_15**
- **rent_by_income_15_20**
- **rent_by_income_20_25**
- **rent_by_income_25_30**
- **rent_by_income_30_35**
- **rent_by_income_35_40**
- **rent_by_income_40_50**
- **rent_by_income_50_99**


