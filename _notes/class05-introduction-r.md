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

As in other programming languages, you can store values into an
object called a variable. The variable can then be accessed and
manipulated by its name. To assign a variable in R use an arrow
`<-`. Here we will assign the number 95 to the variable called
`happy`:


{% highlight r %}
happy <- 95
{% endhighlight %}

Run this. Notice that the variable `happy` show up in the environment box in
the upper left-hand corner. We can then add one to the variable and see the
output


{% highlight r %}
happy + 1
{% endhighlight %}



{% highlight text %}
## [1] 96
{% endhighlight %}

Notice that this **does not** change the variable `happy`. The variable is
still equal to `95`, not `96`. To change the variable we have to re-assign a
new value to happy. So, to make `happy` equal to 100 we could do this:


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
seq_len(happy)
{% endhighlight %}



{% highlight text %}
##   [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
##  [18]  18  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34
##  [35]  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51
##  [52]  52  53  54  55  56  57  58  59  60  61  62  63  64  65  66  67  68
##  [69]  69  70  71  72  73  74  75  76  77  78  79  80  81  82  83  84  85
##  [86]  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100
{% endhighlight %}

Note that this is exactly the same as calling `seq_len(95)`. We can save the
output as a variable as well using (once again) the arrow operator:


{% highlight r %}
hundred <- seq_len(happy)
{% endhighlight %}

We will cover more details about R functions in the upcoming classes.

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
happy <- happy + 5
hundred <- seq_len(happy)
hundred
{% endhighlight %}



{% highlight text %}
##   [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
##  [18]  18  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34
##  [35]  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51
##  [52]  52  53  54  55  56  57  58  59  60  61  62  63  64  65  66  67  68
##  [69]  69  70  71  72  73  74  75  76  77  78  79  80  81  82  83  84  85
##  [86]  86  87  88  89  90  91  92  93  94  95  96  97  98  99 100 101 102
## [103] 103 104 105
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
an annual basis, separated by their sex. Interactively in RStudio, you can see
the data by clicking on the table in the upper right-hand corner. **What years
are included in the study?**


Now will load the **ggplot2** package and the `qplot` function to produce a
scatter plot. Again, just copy this for now. We will go into the mechanics
more fully in the next few classes:


{% highlight r %}
library(ggplot2)
qplot(births$year, births$total)
{% endhighlight %}

<img src="../assets/class05-introduction/unnamed-chunk-11-1.png" title="plot of chunk unnamed-chunk-11" alt="plot of chunk unnamed-chunk-11" width="100%" />

You should see a plot of the data show up in the bottom right. You can click
on the magnification symbol to make the plot larger. How would you describe
the pattern here?

Finally, let's use one more package function to create an interactive
plot:


{% highlight r %}
library(plotly)
{% endhighlight %}



{% highlight text %}
## 
## Attaching package: 'plotly'
{% endhighlight %}



{% highlight text %}
## The following object is masked from 'package:ggplot2':
## 
##     last_plot
{% endhighlight %}



{% highlight text %}
## The following object is masked from 'package:stats':
## 
##     filter
{% endhighlight %}



{% highlight text %}
## The following object is masked from 'package:graphics':
## 
##     layout
{% endhighlight %}



{% highlight r %}
ggplotly()
{% endhighlight %}



{% highlight text %}
## We recommend that you use the dev version of ggplot2 with `ggplotly()`
## Install it with: `devtools::install_github('hadley/ggplot2')`
{% endhighlight %}

<img src="../assets/class05-introduction/unnamed-chunk-12-1.png" title="plot of chunk unnamed-chunk-12" alt="plot of chunk unnamed-chunk-12" width="100%" />

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

I have posted notes on the website, called **Class 00**, for installing R,
RStudio and all of the required packages on your own machine. If you plan on
using your own computer in this course, which I highly recommend (you'll need
to write all of the projects using RStudio), please follow this instructions
before the next class. I do not want to be debugging R installations on the
eve of the first project's due date.







