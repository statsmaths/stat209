---
title: "Data Basics"
author: "Taylor Arnold"
output: html_notebook
---





### Data Dictionary

It is important to understand and document exactly what each
variable in a dataset is describing. A description of all the
variables in a dataset is called a **data dictionary**. Often
these seem self-explanatory, but it is still useful to briefly
describe all of the variables. Here is an example of a data
dictionary for the Arburthnot dataset:

- **head_of_state**: who was the Head of State for the country
representing London
- **year**: calendar year of the dataset
- **boys**: number of male baptised in London in a given year
- **girls**: number of female baptised in London in a given year
- **total**: total number of children baptised in London in a given year
- **boy_to_girl_ratio**: ratio of male births to female births
in London in a given year

Notice that you probably guess the basic meaning of many of these,
but may not have been aware of some of the specifics.

### Style Guide

In order to make your code easily readable by others, it is
important to follow certain rules in how you create code. In
programming a collection of such rules is known as a style
guide.

One of the most important rules that we will follow is to
create consistent variable names:

- use all lower case letters in variable names
- never use spaces; use an underscore `_` instead (e.g., `head_of_state`)
- do not use numbers unless they have an extrinsic meaning (so `year_1990`
is okay, but `births2` is not)

These variable rules apply to raw R objects as well as the
column names in your dataset.

Other rules that we will follow (some of these may not make sense
yet):

- keep code lines no longer than 79 characters, other than URLs
- group code into blocks separated by single new line
- use only <- for assignment
- one space around the arrow <- and parameter names
- indent continuation lines to the proper point

For example, only the first line here follows the guidelines:

```
photo <- mean(data$variable)
photo<- mean(data$variable)
photo <-mean(data$variable)
```

These details may seem unimportant, but trust me that sticking to
them will greatly simplify your ability to read and debug R code.
I will expect you to follow these rules in all of the work you
do in this course.

### Accessing data variables

Often it will be useful to access a single variable within
a data frame by name. To do so, we use the name of the data
frame, followed by a dollar sign, followed by the name of
the variable. For example, let's load the Arbuthnot dataset
once again:


{% highlight r %}
births <- read_csv("https://raw.githubusercontent.com/statsmaths/stat_data/gh-pages/arbuthnot.csv")
{% endhighlight %}

Here are all of the female births in the dataset:


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

The function `mean` computes the average of a numeric variable.
Here we use this function to compute the average number of female
births in the dataset:


{% highlight r %}
mean(births$girls)
{% endhighlight %}



{% highlight text %}
## [1] 5534.646
{% endhighlight %}

Similarly, the function `qplot` produces a basic plot of a variable:


{% highlight r %}
qplot(births$head_of_state)
{% endhighlight %}

<img src="../assets/class07-describing-data/unnamed-chunk-5-1.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" width="100%" />

Try it will the other variables and notice the differences. We'll cover
much more about data visualization in the coming weeks.

