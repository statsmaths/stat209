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
the variable. For example, here are all of the female births
in the dataset:


{% highlight r %}
births$girls
{% endhighlight %}



{% highlight text %}
## Error in eval(expr, envir, enclos): object 'births' not found
{% endhighlight %}

The function `mean` computes the average of a numeric variable.
Here we use this function to compute the average number of female
births in the dataset:


{% highlight r %}
mean(births$girls)
{% endhighlight %}



{% highlight text %}
## Error in mean(births$girls): object 'births' not found
{% endhighlight %}

Similarly, the function `qplot` produces a basic plot of a variable:


{% highlight r %}
qplot(births$head_of_state)
{% endhighlight %}



{% highlight text %}
## Error in eval(aesthetics$x, data, env): object 'births' not found
{% endhighlight %}

Try it will the other variables and notice the differences. We'll cover
much more about data visualization in the coming weeks.

