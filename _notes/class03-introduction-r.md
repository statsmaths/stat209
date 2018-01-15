---
title: "Introduction to R"
author: "Taylor Arnold"
output: html_notebook
---





## R Basics

The notes here establish the most basic aspects of using
R. You will understand the components of R studio,
how to create and access variables in R, how to apply simple
functions, how to load R packages, and how to read in a CSV
dataset. Make sure you understand these notes very well for
the next class.


### RStudio

Now, open the RStudio file on the lab computers. Make sure you are opening
RStudio and not R itself. You should see screen like this (its a screen
shot from my Mac, but looks very similar on Windows):

![](../assets/img/r-interface-2016.png)

The window on the left hand side is called the **console**. It is the brains
of R. This is where code is actually R by the R engine. Start by writing a
simple math equation; you should see the results echo out on the screen in the
console:


{% highlight r %}
2 + 4
{% endhighlight %}



{% highlight text %}
## [1] 6
{% endhighlight %}

We will now see how to do more complex calculations using functions.

### Functions

In R, we can apply functions to values and datasets. These range for
very simple cases, such as trigonometric functions mimicking those of
high-school mathematics courses, to very complex modelling functions
that can take years to fully understand.

To apply a function, we use the convention you have probably seen in
an algebra or calculus class:


{% highlight r %}
sin(0.5)
{% endhighlight %}



{% highlight text %}
## [1] 0.4794255
{% endhighlight %}

Running this code computes the sine of the value `0.5`. Functions
that work similarly include `tan` and `sqrt`. The function `runif`
returns a number of randomly chosen values on an interval. The first
input to the function tells R how many values to return:


{% highlight r %}
runif(10)
{% endhighlight %}



{% highlight text %}
##  [1] 0.1919877 0.9048163 0.4360245 0.5563414 0.1771601 0.5139584 0.5694975
##  [8] 0.8655054 0.9610985 0.8481033
{% endhighlight %}

By default these values are computer between 0 and 1. We can change
this by specifying additional inputs (or arguments) to the function:


{% highlight r %}
runif(10, min = 5, max = 10)
{% endhighlight %}



{% highlight text %}
##  [1] 8.134408 9.831230 8.682582 7.629209 6.266051 6.057745 8.250404
##  [8] 9.253535 8.488865 6.400520
{% endhighlight %}

These inputs, `min` and `max`, have default values (0 and 1, respectively)
so we do not need to specify them. Note that we can also call the same
function as above without naming the arguments, it is just harder to read:


{% highlight r %}
runif(10, 5, 10)
{% endhighlight %}



{% highlight text %}
##  [1] 5.826240 8.143826 5.633262 9.132376 6.545283 9.696840 5.896738
##  [8] 8.237813 5.606390 7.792904
{% endhighlight %}

There are thousands of functions in R; we will cover only a small set
of them in this semester. If you want to kn

### Code files

We can type commands directly into the console, as you have seen, but this is
generally not very good practice. A better option is to write code into an
Rscript. This script can then be (1) saved as a file and (2) run automatically
line by line in R. To create a new script click the green plus button in the
upper left-hand corner of RStudio. You should create a new `.R` file and then
will see something like this:

![](../assets/img/intro-rstudio.png)

Try typing the code we had before in the editor:


{% highlight r %}
sin(0.5)
{% endhighlight %}



{% highlight text %}
## [1] 0.4794255
{% endhighlight %}



{% highlight r %}
runif(10, min = 5, max = 10)
{% endhighlight %}



{% highlight text %}
##  [1] 6.493070 6.314060 9.860064 7.254032 7.592583 7.095110 7.494942
##  [8] 9.196885 6.902607 9.553970
{% endhighlight %}

To run these lines, highlight them all and hit the run button on the top of
the editor. You'll see that there are also commands for running the current
line and whole script (there are even helpful shortcuts for doing these, which
you will find are very useful going forward).

With R, we save scripts rather than the actual variables and analyses. Save
the `.R`. file somewhere on the Desktop to see how to save and then re-open
the code.

### Packages

In addition to the basic R functions that exist on start-up,
there are thousands of user-contributed packages the implement
various add-on functions. Several are already installed on the machines
in class. Instructions for downloaded packages on your own
machine are included in the setup notes.

Once a package is installed, we also need to load it. While
installing the package only needs to be done once, we have to
load it each and every time we restart R. To load the **readr**
package, for instance, we would run the following:


{% highlight r %}
library(readr)
{% endhighlight %}

Once loaded, we can run commands from the readr package.

### Loading data

We will spend the next class on a deep dive into structuring, saving, and
load data into R. Today, just copy these lines into R to load a dataset into
R. Please copy them into the editor first and then run them:


{% highlight r %}
library(readr)
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

This is loading a dataset showing the number of children born in London on
an annual basis, separated by their sex. The `<-` symbol has saved this dataset
as an object called `births`. Notice that it appears in the environment pane in
the upper right-hand corner of the plot.

Interactively in RStudio, you can see the data by clicking on the table in the
upper right-hand corner. **What years are included in the study?**

To access a particular variable within R, take the name of the dataset.
follow it by the `$` and the name of the variable:


{% highlight r %}
births$girls
{% endhighlight %}



{% highlight text %}
##  [1] 4683 4457 4102 4590 4839 4820 4928 4605 4457 4952 4784 5332 5200 4910
## [15] 4617 3997 3919 3395 3536 3181 2746 2722 2840 2908 2959 3179 3349 3382
## [29] 3289 3013 2781 3247 4107 4803 4881 5681 4858 4319 5322 5560 5829 5719
## [43] 6061 6120 5822 5738 5717 5847 6203 6033 6041 6299 6533 6744 7158 7127
## [57] 7246 7119 7214 7101 7167 7302 7392 7316 7483 6647 6713 7229 7767 7626
## [71] 7452 7061 7514 7656 7683 5738 7779 7417 7687 7623 7380 7288
{% endhighlight %}

We can then use this as an input to a function, such as the function `mean`:


{% highlight r %}
mean(births$girls)
{% endhighlight %}



{% highlight text %}
## [1] 5534.646
{% endhighlight %}

To get the average number of girls born each year of the course of the dataset.

### Visualization

Now will load the **ggplot2** package to produce a plot. Again, just
copy this for now. We will go into the mechanics more fully next week:


{% highlight r %}
library(ggplot2)
ggplot(births, aes(year, total)) +
  geom_line()
{% endhighlight %}

<img src="../assets/class05-introduction/unnamed-chunk-12-1.png" title="plot of chunk unnamed-chunk-12" alt="plot of chunk unnamed-chunk-12" width="100%" />

You should see a plot of the data show up in the bottom right. You can click
on the magnification symbol to make the plot larger. How would you describe
the pattern here?

Finally, let's use one more package function to create an interactive plot:


{% highlight r %}
library(plotly)
ggplotly()
{% endhighlight %}



{% highlight text %}
## Error in loadNamespace(name): there is no package called 'webshot'
{% endhighlight %}

By default, this function will make whatever the last plot you created
interactive (you can also zoom into this one as well). You can't see it here,
as the HTML program I use to create the notes does not support interactivity,
but hopefully can see it in RStudio on your own. Scroll over a data point to
see the exact year and number of births.

### Summary

Today we have seen the basic usage of R and RStudio: creating variables,
loading packages, reading data, and creating simple interactive plots. We
will dive more deeply into these steps in the upcoming classes, but hopefully
you can begin to see how we are replicating the pre-boxed analyses we saw in
the first week using interactive websites built for a particular dataset.

### Assignment

I have posted a file called `lab03.R` (Note: lab numbers correspond to the class
number). Open this in R and follow the instructions. 

I have also posted notes on the website, called **Class 00**, for installing R,
RStudio and all of the required packages on your own machine. If you plan on
using your own computer in this course, which I highly recommend (you'll need
to write all of the projects using RStudio), please follow this instructions
before the next class. I do not want to be debugging R installations on the
eve of the first project's due date.







