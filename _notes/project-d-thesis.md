---
title: "Project D: Making Arguments with Statistics"
author: "Taylor Arnold"
output: html_notebook
---

**Thesis Due**: 2018-04-24 (Tuesday, start of class)

**Final Due**: 2018-04-26 (Thursday, start of class)

**Starter code**: <a href="https://raw.githubusercontent.com/statsmaths/stat209/master/projects/project-d.Rmd" download="project-d.Rmd" target="_blank">project-d.Rmd</a>

**Rubric**: [project-d-rubric.csv](https://github.com/statsmaths/stat209/blob/master/projects/project-d-rubric.csv)

**Questions deadline**:  2018-04-25; 5pm (Wednesday) - If you would like help
with the project, please see/e-mail me before this deadline. After this time
I will only help with technical issues, such as R crashing or GitHub being
down.

The overarching goal of this project is to form a thesis statement and support
this thesis with data-driven arguments. You will be able to choose from one of
four datasets (each has a different structure and focus):

- NFL play-by-play data from the entire 2015 season
- NBA shot data from the entire 2015 season
- NYC taxi rides data; information about a random subset of all taxi rides
taken in the city
- US County-level cancer incidence rates and demographics

Links to all four are included in the starter code. Please delete the three
that you do not plan on working with. Data dictionaries are provided below.

The final report will resemble Project B, free flowing text without any
code or specific format. The only difference is that in addition to telling a
story you must have a thesis statement included in the first paragraph of your
report and each graphic or model should be offering support for your thesis.

## Data Dictionaries

### NFL Play-by-Play Data

The following fields are available for you to work with:

- `offense_team`: name of the offensive team on the play
- `defense_team`: name of the defensive team on the play
- `yards_gained`: yards gained on the play
- `yards_net`: net yards on the drive
- `yards_to_go`: yards to go for the first down (start of play)
- `quarter`: quarter of the game
- `down`: down number at the start of the play
- `first_down`: was the result a first down?
- `interception`: was the result an interception
- `fumble`: was the result a fumble
- `pass`: did the team attempt a pass on the play?
- `pass_complete`: was the pass complete
- `poss_team_score`: current score of the offensive team (start of play)
- `def_team_score`: current score of the defensive team (start of play)
- `yards_to_touchdown`: yards to a touchdown (start of play)
- `drive`: drive number
- `pass_location`: location of the field that the pass went to
- `run_location`: location of the field that the rushed attempted to run
- `passer`: name of the passer
- `rusher`: name of the rusher
- `receiver`: name of the receiver

You may decide to concentrate on another problem, but two good
places to start are:

- what decisions effect that number of yards gained? what decisions effect
whether the team gets a first down.
- how do the answers above differ based on the time of the game? are there
team-specific effects?

### NBA Shot Data

The following fields are available for you to work with:

- `matchup`: string description of the game
- `location`: location of the game (home or away) relative to the shooter
- `w`: result of the game relative to the shooter
- `final_margin`: margin of the game relative to the shooter
- `shot_number`: number of the shot relative to the shooter
- `period`: period of the game
- `game_clock`: amount of time on the game clock
- `shot_clock`: amount of time left on the shot clock
- `dribbles`: number of dribbles the shooter took
- `touch_time`: amount of time the shooter held the ball
- `shot_dist`: distance of the shot
- `pts_type`: whether the shot was 2pt or 3pt
- `shot_result`: result of the shot
- `closest_defender`: name of closest defender
- `closest_defender_player_id`: id of the closest defender
- `close_def_dist`: distance of the closest defender (feet)
- `fgm`: field goals made
- `pts`: total points
- `player_name`: player name
- `player_id`: id of the shooter
- `shooter_height`: height of the shooter (inches)
- `defender_height`: height of the defender (inches)

### NYC Taxi Data

The following fields are available for you to work with:

- `pickup_hour`: hour of the day
- `pickup_month`: month of the year
- `pickup_week`: week of the year, starting at 1
- `pickup_doy`: day of the year, starting at 1
- `pickup_wday`: day of the week, starting at 1=Sunday
- `length_time`: length of the trip in seconds
- `pickup_BoroCode`: borough where taxi was picked up
- `pickup_NTACode`: neighborhood where taxi was picked up
- `dropoff_BoroCode`: borough where passenger was dropped off
- `dropoff_NTACode`: neighborhood  where passenger was dropped off
- `pickup_longitude`: longitude where taxi was picked up
- `pickup_latitude`: latitude where taxi was picked up
- `dropoff_longitude`: longitude where passenger was dropped off
- `dropoff_latitude`: latitude where passenger was dropped off
- `vendor_id`: vender code; meaning is unclear
- `passenger_count`: number of passengers in the cab
- `trip_distance`: total distance covered by the trip
- `fare_amount`: amount of the fare
- `tip_amount`: tip amount

### County-level Cancer Incidence Rates

The following fields are available for you to work with, with one row for a
particular county (many small counties are missing due to low rates or no
reporting to the CDC):

- `name`: the name of the county, parish, or census area
- `state`: two letter abbreviation of the state
- `population`: estimated total population
- `breast`: incidence rate per 100,000 women over 18 years of age
- `colorectal`: incidence rate per 100,000 adults over 18 years of age
- `prostate`: incidence rate per 100,000 men over 18 years of age
- `lung`: incidence rate per 100,000 men over 18 years of age
- `melanoma`: incidence rate per 100,000 men over 18 years of age
- `poverty`: percentage of households below the poverty line
- `income`: median household income
- `region`: the state's region of the country from 9 possible categories
- `white_alone`: percentage of the county identifying as 'white'
- `black_alone`: percentage of the county identifying as 'black'
- `asian_alone`: percentage of the county identifying as 'asian'
- `lat`: decimal latitude of the county centroid
- `lon`: decimal longitude of the county centroid




