## Class 01 - Introduction to Statistics

- you can basically start by just going through the
class notes; what is statistics; about me; Hans Roslin;
R; past projects; syllabus
- hand out survey for the class
- stick around for questions after

Assignment: What is Statistics (Madigan and Gelman)

## Class 02 - Exploratory Data Analysis

- start by discussing "What is Statistics"
  - what is the point of the article
  - anything confuse you?
  - anything surprise you?
  - agree / disagree?
- then, again just walk through the class notes
- reminder about ASSESSMENT A

Assignment: Find a news article that uses data or
graphics.

## Class 03 - Statistical Evidence

- start with the class notes
- answer questions about the 538 article
- answer questions with your article
- ASSESSMENT A

Assignment: None

## Class 04 - Statistical Modelling

- start with the notes
- show the ML video, time permitting
- look at NEJoM example
- look at another example from one of the other sources

Assignment: Introductory chapters in "The Art of Data Science"

## Class 05 - Introduction and R/GitHub Setup

- have everyone open RStudio on the lab machines;
walk through the basics of the notes:

  - four panes of RStudio
  - create code and run from within R; only thing saved
  - variables; assignment and access
  - functions
  - packages

- talk about downloading and installing R on
your own machine
- ASSESSMENT B

## Class 06 - Data Basics

- start the class by having students go to each board
and construct a dataset of sorts:

  - four favorite restaurants: name; location; cuisine;
    fav dish; cost of a meal; last time you visited

- return to seats and talk about putting the data
together into one large file
- talk about the tabular data model: rows are observations
and columns are variables
- create a schema for the class, share link, and upload the
data to GoogleDocs
- then, download the file as a csv file; talk about CSV
- read the file into R and look at it in the data viewer;
we have assigned this to a variable with a name that we can
then manipulate
- talk about what a data frame is
- can also load data from a file remotely, such as in the
notes

## Class 07 - Describing Data

- show notes of a data dictionary
- extracting a variable from a data frame
- apply a function to a variable (such as the mean)
- talk about style guidelines for code
- Activity: In pairs, write a data dictionary for the data
from class 02; read the dataset in and make some plots/tables
- regroup and summarize: we can create, describe, read, and
create simple plots of a data set; impressive!

- QUIZ B

## Class 08 - Variable Types

- activity: go to boards and describe 6 questions you
would ask someone for (1) a job interview, (2) friend
interview, and (3) college admissions; divide class
so that different people work on different tasks, maybe
pairs? Make sure that you have numeric as well as short
answers / categories
- pull up the notes and describe variable types a schema
of the eggs dataset
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

- pull notes back up
- what do we care? show how variable type influences plots;
also cannot, for example, take the mean of a categorical variable
- sometimes variables can be a bit of both, like the mating
system
- can first apply the `as.character` function to convert to a
category where appropriate
- can also use the `cut` function to break a numeric variable
into categories based on a range

## Class 13 - Application?


## Class 14 - Numeric Summaries

- write a very small dataset of populations in the six counties
of northern ireland:

  618, 174, 531, 61, 247, 177

- ask the class: what's the average value of these? (~301)
- what's the median value? ((177 + 247) / 2 = 212)
- what's the 20% percentile? (174)

  61  => 0%
  174 => 20%
  177 => 40%
  247 => 60%
  531 => 80%
  618 => 100%

- how to measure the spread of the data? go to the notes
- work on the lab



