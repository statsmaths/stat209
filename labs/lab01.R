# Title: "Introduction to R and RStudio"
# Name:

##############################################################################
# 1. R will evaluate any command and by default it will print the answer to
# the console in the lower lefthand pane of RStudio. Let's try some simple
# math. Run the following command by highlighting the row and hitting the Run
# button in the upper left hand corner.

1 + 1

# There's your result, 2. It's printed on the console right after your entry.

##############################################################################
# 2. Type the string "Hello there!" in the code below. (Don't forget the
# quotes!) Then highlight it and Run the code. It should just spit out the
# string verbatim back at you.



##############################################################################
# 3. Now try multiplying 6 times 7 (* is the multiplication operator). Again,
# write the code below, highlight, and click run.



##############################################################################
# 4. Some expressions return a "logical value": TRUE or FALSE. (Many
# programming languages refer to these as "boolean" values.) Let's try running
# an expression that gives us a logical value:

3 < 5

##############################################################################
# 5. And another logical value (note that you need a double-equals sign to
# check whether two values are equal - a single-equals sign won't work):

2 + 2 == 5

##############################################################################
# 6. As in other programming languages, you can store values into a variable
# to access it later. Type x <- 42 below and run it to store a value in x.
# You should notice the variable show up in the right hand corner of the
# RStudio screen.



##############################################################################
# 7. The object x can now be used in expressions in place of the original
# result. Try dividing x by 2 (/ is the division operator).



##############################################################################
# 8. You can re-assign any value to a variable at any time. Try assigning the
# string "Arr, matey!" to x.



##############################################################################
# 9. We can also read data in from another file. Here we load a dataset from
# the course website and assign it to a variable named `births`. The first
# line loads the **readr** package, which gives us the read_csv function.

library(readr)
births <- read_csv("https://raw.githubusercontent.com/statsmaths/stat_data/gh-pages/arbuthnot.csv")

##############################################################################
# 10. Click on the dataset in the upper right-hand corner of RStudio. You
# should see a tabular view of the data. How many girls were born in England
# in 1643?

# Answer:

##############################################################################
# 11. Save and store this completed lab somewhere you can find it on this
# computers (perhaps the Desktop). Then open your stat209 GitHub page and drag
# this file into the web browser. Make sure to commit the file! Then double
# check that the lab01.R file exists in the repository.



