---
title: "Introduction to R"
author: "Taylor Arnold"
output: html_notebook
---





## R Basics

The notes here establish the most basic aspects of using
R. You will understand the basic components of R studio,
how to create and access variables in R, how to apply simple
functions, how to load R packages, and how to read in a CSV
dataset. Make sure you understand these notes very well for
the next class.

### Rstudio

R studio has four basic panels, as you can see in the following
diagram:

![](../assets/img/intro-rstudio.png)

The editor will not be visible until you create or open a code
script. You can create a new script by clicking on the green plus
button in the upper left hand corner.

The editor is where you write code. This is the only file that
ultimately gets saved on the computer. The console is the brains
of R. This is where code is run by the R engine. You can type
code directly here or, preferably, run it within the editor by
selecting chunks of code and hitting the Run button. The console
is also were you will see textual output. The output section in the
lower right shows plots, which we will study in depth over the next
few weeks. Finally, the upper right box shows all of the variables
and datasets that have been created. Clicking on a dataset opens a
tab in the editor space that lets you look at the raw data.

### Variables

As in other programming languages, you can store values into an
object called a variable. The variable can then be accessed and
manipulated by its name. To assign a variable in R use an arrow
`<-`. Here we will assign the number 95 to the variable called
`happy`:


{% highlight r %}
happy <- 95
{% endhighlight %}

If you run this, you will see the variable `happy` show up in the
environment box. We can then add one to the variable and see the
output


{% highlight r %}
happy + 1
{% endhighlight %}



{% highlight text %}
## [1] 96
{% endhighlight %}

Notice that this **does not** change the variable `happy`. To change
the variable we have to re-assign a new value to happy. So, to make
`happy` equal to 100 we could do this:


{% highlight r %}
happy <- happy + 5
happy
{% endhighlight %}



{% highlight text %}
## [1] 100
{% endhighlight %}
This behavior, that functions do not change variables unless we
redefine the variable using `<-`, is ubiquitous in R.

### Functions

In R, we can apply what are known as functions in order to do things
to the variables and data present in the current environment. For
example, the function `seq_len` takes a single number and create a
sequence of the integers from 1 to that number:


{% highlight r %}
str_len(happy)
{% endhighlight %}



{% highlight text %}
## Error in str_len(happy): could not find function "str_len"
{% endhighlight %}

We can save this output as a variable as well using the arrow
operator:


{% highlight r %}
hundred <- str_len(happy)
{% endhighlight %}



{% highlight text %}
## Error in str_len(happy): could not find function "str_len"
{% endhighlight %}

We will cover more details about R functions in the upcoming classes.

### Packages

In addition to the basic R functions that exist on start-up,
there are thousands of user-contributed packages the implement
various add-ons. Several are already installed on the machines
in class. Instructions for downloaded packages on your own
machine are included in the setup notes.

Once a package is installed, we also need to load it. While
installing the package only needs to be done once, we have to
load it each and every time we restart R. To load the **readr**
package, for instance, we would run the following:


{% highlight r %}
library(readr)
{% endhighlight %}

Once loaded, we can run commands from the readr package. We will
do this in just a moment.

### Loading Data

To load a dataset stored as a comma seperated file, we will use the
function `read_csv`. We will discuss the csv format more in the
next class. For now, here is the code for loading the Arbuthnot
dataset into R and storing as a variable called `births`:


{% highlight r %}
births <- read_csv("https://raw.githubusercontent.com/statsmaths/stat_data/gh-pages/arbuthnot.csv")
{% endhighlight %}



{% highlight text %}
## Parsed with column specification:
## cols(
##   head_of_state = col_character(),
##   year = col_integer(),
##   boys = col_integer(),
##   girls = col_integer(),
##   total = col_integer(),
##   boy_to_girl_ratio = col_double()
## )
{% endhighlight %}

Interactively in RStudio, you can see the data by clicking on the
table in the upper right-hand corner. Here, we will look at the first
few rows of data as a table:



This is a relatively well-known dataset collected in the 17th century
to study the secondary sex ratio (ratio of of males to females at birth)
using baptism records.






