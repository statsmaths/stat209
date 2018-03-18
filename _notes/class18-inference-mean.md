---
title: "Class 18: Inference for the Mean"
author: "Taylor Arnold"
output: html_notebook
---





## Objectives

Today we turn our attention to modeling, the third and
final aspect of data analysis. The first model we will look at is
modeling the mean value of some random process. In these notes
we will start to see how to implement this model directly in R and how
to analyze how well it fits the data at hand.

## A simple example

We want to take the observations of some numeric variable and provide
an estimate of its **true** mean. The techniques we
cover today will apply to two similar but conceptually different
cases. These are:

- a variable sampled independently from a larger population
- a variable observed from repeated trials of a random process

In the first case, the true mean is the mean of the entire population.
For the second case, the true mean is the average value we would get from
an infinite number of trials. As long as the sample from the population
is taken at random and the output collected from each random trial
is independent of prior trials, the same exact technique is used for
estimating the mean of both situations.

Consider a random sample of coins from a cup similar to the one we
have in class:


{% highlight r %}
coins
{% endhighlight %}



{% highlight text %}
## # A tibble: 8 x 1
##   number
##    <dbl>
## 1   1.00
## 2   2.00
## 3   2.00
## 4   3.00
## 5   4.00
## 6   4.00
## 7   4.00
## 8   5.00
{% endhighlight %}

Our best guess for the average value of all of the coins in the cups
might be the mean of the sample we took:


{% highlight r %}
mean(coins$number)
{% endhighlight %}



{% highlight text %}
## [1] 3.125
{% endhighlight %}

Let's do this is a different way that will allow us to extrapolate
on this single number:


{% highlight r %}
model <- lm_basic(number ~ 1, data = coins)
{% endhighlight %}

This says to construct a model for the variable `number` from the data
set `coins`. The `1` indicates that we are fitting a
single mean to the dataset; we will see later how to fit more
complex models. To see the output of the model, run `reg_table`:


{% highlight r %}
reg_table(model)
{% endhighlight %}



{% highlight text %}
## 
## Call:
## lm_basic(formula = number ~ 1, data = coins)
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
## -2.125 -1.125  0.375  0.875  1.875 
## 
## Coefficients:
##             Estimate
## (Intercept)    3.125
## 
## Residual standard error: 1.356 on 7 degrees of freedom
{% endhighlight %}

The model calls the mean an intercept, for reasons that will become
clear shortly, and it gives the exact same value as with our old
technique. The other numbers above and below the table can be useful
but are not our primary subject of interest at the moment.

Why bother with this more involved method for finding a mean? For
one thing, `reg_table` provides an option called `level` that can
be set to a number between 0 and 1. For example:


{% highlight r %}
reg_table(model, level = 0.9)
{% endhighlight %}



{% highlight text %}
## 
## Call:
## lm_basic(formula = number ~ 1, data = coins)
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
## -2.125 -1.125  0.375  0.875  1.875 
## 
## Coefficients:
##             Estimate   5 %  95 %
## (Intercept)    3.125 2.217 4.033
## 
## Residual standard error: 1.356 on 7 degrees of freedom
{% endhighlight %}

The table now includes two additional numbers of the mean: the
10th and 90th percentiles of a *confidence interval*. A confidence
interval provides a guess for where the **true** mean, defined in either
of the ways described as above, actually lies. The construction of
a confidence interval involves some surprisingly deep mathematics,
including the law of large numbers and the central limit theorem.
Using confidence intervals is, however, incredibly simple!

The confidence level, here 90%, gives the probability that the testing
procedure will lead to a correct result if a sample or experiment
is repeated many times. Common confidence levels include 90%, 95%,
and 99%.

Taking a set of sampled flight times from paper helicopters:


{% highlight r %}
helicopter
{% endhighlight %}



{% highlight text %}
## # A tibble: 6 x 1
##   flight_time
##         <dbl>
## 1       0.900
## 2       1.11 
## 3       1.13 
## 4       0.920
## 5       1.16 
## 6       1.11
{% endhighlight %}

We can run the exact same analysis:


{% highlight r %}
model <- lm_basic(flight_time ~ 1, data = helicopter)
reg_table(model, level = 0.95)
{% endhighlight %}



{% highlight text %}
## 
## Call:
## lm_basic(formula = flight_time ~ 1, data = helicopter)
## 
## Residuals:
##      1      2      3      4      5      6 
## -0.155  0.055  0.075 -0.135  0.105  0.055 
## 
## Coefficients:
##             Estimate  2.5 % 97.5 %
## (Intercept)   1.0550 0.9354  1.175
## 
## Residual standard error: 0.114 on 5 degrees of freedom
{% endhighlight %}

Unless we have a specific reason to use a different level, we will
usually use a 95% confidence interval in this course.

### Practice

We will work on the next lab for the remainder of the class:
<a href="https://raw.githubusercontent.com/statsmaths/stat209/master/labs/lab18.Rmd" download="lab18.Rmd" target="_blank">lab18.Rmd</a>

Please upload your script to GitHub ahead of the next class.





