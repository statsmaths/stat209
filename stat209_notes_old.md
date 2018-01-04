## Class 01 - Introduction and R/GitHub Setup

- start by going through syllabus; this is not
mathematics nor is it AP statistics; holistic
grading approach; use classroom computers to
reduce distractions / issues
- setup GitHub accounts and GH classroom; have
some minimal user profile
- talk about downloading and installing R on
your own machine
- talk about R packages

Notes: Class Intro; Installing R and R packages;
Basic R commands

Lab: Read in a dataset, look at it in the data
viewer, grab a column of data, compute mean of
a column, compute table of a categorical column,
use qplot to create two simple plots

## Class 02 - Data Basics

- start by writing student schedules on the white
boards: class number (e.g., MATH209), meeting times,
professor; return to seats and talk about putting the
data together
- talk about the tabular data model: rows are
observations and columns are variables
- MATH209 variable name rules: all lower case, no
spaces, use underscores for spaces, using numbers
only when extrinsic
- these rules also apply to objects in R
- create a schema and data dictionary together for the
schedule data; remember to include student information
- have each student create data in excel and export as
a csv file; then upload to GitHub and I will put back
together and push it back
- other style guidelines: lines no longer than 79 characters,
group code into blocks; use only <- for assignment; one space
around <- and parameter names; indent continuation lines to
the proper point

Notes: MATH209 style guide

Lab: read the data into R from GitHub and do something
with it; create a new dataset, describe the variables;
push to GitHub and then read back into R and do something
with it

## Class 03 - Variable Types

- activity: go to boards and describe 6 questions you
would ask someone for (1) a job interview, (2) friend
interview, and (3) college admissions; divide class
so that different people work on different tasks, maybe
pairs?
- what is a schema? names of variables and variable
types:
  - integers
  - doubles
  - characters
  - dates
  - date-times
- as a group have students go to the board and label the
data types of each question
- what is a data dictionary? a description of the schema
along with descriptions of the variables
- show that R is strict about numeric data: cannot have
anything other than numbers and decimal points
- sometimes variables can be a bit of both, such as
class year

Notes: data types in R

Quiz: how to take mean of a column from dataset with name
THIS and variable THAT; which of the following are allowed
variables names in our style guide; generate a short data
dictionary for a specified task; maximum line length; how
to read CSV data into R from URL into dataset THIS

Lab: Create a data dictionary about your ten closest friends
and/or family members, then generate the data. Produce some
very simple plots. Convert numeric data to a categorical one
for a plot.

## Class 04 - Numeric Summaries

- this time, start with some notes about the following
measurments; write a small dataset on the board and
ask the class as a group to compute each measurement
by hand
  - mean and median of numeric data
  - quantiles, extension of median

  - variance is average squared distance from the mean
  - standard deviation is square-root of the variance;
  think of it as a measure of spread
- two standard deviations: for a "bell curve", 95% of the
data is within 2sd of the mean; for any dataset, 75% of
data is within 2sd
- activity: give students a dataset of 12 numbers; go to
the boards and compute the summary statistics for the
data
- activity: give list of variables and have students describe
estimates of the standard deviation and the five number
summary; will mean be greater or less than the median?

Notes: numeric summaries

Lab: Apply numeric measurements to American Community Survey Data

## Class 05 - ggplot and layers

- qplot are "quick" graphics; need a different set of tools
for building more complex graphics
- activity: at the board, have pairs of students create graphics
representing various geometries:
  - numeric scatter plot:
  - scatter plot with categorical variable
  - line plot: high tempurature by month
  - histogram: times students at dining hall
  - barplot
  - boxplot
- show how to build these in ggplot syntax: x and y aesthetics,
what happens with histogram and barplot?, adding two layers together
with lines and points
```{r}
ggplot(dataset, aes(x = x, y = y)) +
  geom_point()
```
- discuss: there are many other aspects that are being determined
automatically, such as the scales of the plot, color, size, and
labels; we will discuss these next time

Notes: using ggplot layers

Quiz: give variables and ask what data types they should be;
give small dataset and compute numeric summaries by hand;
code to construct a specific quantile from a variable; approximate
standard deviation of several quantities

Lab: apply ggplot to a dataset

## Class 06 - ggplot aesthetics

- activity: for four counties (US, China, UK, Switzerland)
gives five variables (name, population, alcohol per person,
life expectancy, continent). At the boards, have pairs of
students make ONE plot that tries to capture all of these
features at once.
- have trouble using more than 5-6 features
- what you used are called, like x and y, aesthetics in ggplot
- aethetics includes: color, shape, size, alpha (opacity),
and labels
- show syntax for these aesthetics in ggplot:
```{r}
ggplot(dataset, aes(x = x, y = y)) +
  geom_point(aes(color = z, size = w), alpha = 0.5)
```
- talk about aesthetic and data inheritance. Why we put x and
y at the top but not other aesthetics.
- show geom_text; it requires a label, which makes sense
- override y aesthetic in geom_text
- remember, you'll have to know this so resist copy and pasting
at least for now

Notes: ggplot aesthetics

Lab: apply aesthetics to several datasets

## Class 07 - Analyzing the Cancer Dataset

- look at the cancer dataset at the state level as a whole
class
- have groups create plots and numeric summaries of the
data and then discuss
- show geom_smooth and geom_smooth(method = "lm") for adding
trends to the plot
- RMarkdown

Notes: None

Quiz: understanding of a scatter plot; understanding of a
box plot; understanding of a histogram; write code for three
types of graphs

Lab: Practice writing about data using an Rmd file

## Class 08 - Extending plots

- show ggplot commands for annotating plots
- discuss using multiple datasets or changing x/y aesthetics
in ggplot; note that data should go after aes call
- show scales and themes in ggplot
- show x and y axis commands
- group activity: show plots and talk about how to create them
in ggplot

Notes: ggplot annotations and styles

Lab: construct two great plots using many ggplot layers

## Class 09 - Filtering data

- discuss boolean operators: ==, >, <, >=, <=, |, &
- activity: draw x-y axes from 0 to 10; call out various
boolean operations and have students label points in one
color with matching data and another with non matching
data AND have them write the equation on the board in
symbols
- introduct filter command from dplyr; discuss saving the
output as a new dataset and naming conventions (remember,
no numbers!)
- filtering categorical data: the %in% operator for set
containment

Notes: Boolean operators and the filter command

Quiz: review of ggplot commands and annotation extensions

Lab: Using filter to create datasubs sets and then creating
interesting plots from the results

## Class 10 - Summarizing data

- idea of changing the "level of analysis"; can't get more
grainular without more data but can aggregate by applying
summaries over groups of the data
- activity: go to whiteboard and describe a dataset; ask
what summaries and groups students might want to create

Notes: summarizing data

Lab: Using summarize to study several datasets, focus on
graphics

## Class 11 - Data analysis and review

- work with text data and summarization, filtering, graphing

Notes: none

Quiz: Filtering and summarizing data

Lab: Review questions for the Midterm

## Class 12 - MIDTERM II

- cumulative over first 6 weeks

## Class 13 - Inference and standard errors

- idea of statistical inference: sample from population
and estimate properties of new samples / the whole population
from the sample
- standard error measures standard deviation of our estimate
- use t.test to compare means
- grey bars on ggplot show standard errors of smoothing lines
- independence requirement

## Class 14 - Experimentation



## Class 15 - Normalized data


Quiz: Statistical inference

## Class 16 - Normalized data and schemas



## Class 17 - Joining data

## Class 18 - Joining data

## Class 19 - Messy data

## Class 20 - Messy data

## Class 21 - Case Study

## Class 22 - Midterm II

## Class 23 -

## Class 24 -

## Class 25 -

## Class 26 -

## Class 27 -

## Class 28 -















