---
title: "Class 19: Inference Several Means"
author: "Taylor Arnold"
output: html_notebook
---





## Objectives

Extend the inference methods from last class to measure the difference
between two or more means.

## Comparing Two Means

The `lm_basic` function allows for much more complex models than
describing a simple mean. Consider a second set of data where
coins have been taken from two different cups:


{% highlight r %}
coins2
{% endhighlight %}



{% highlight text %}
## # A tibble: 8 x 2
##   number   cup
##    <dbl> <chr>
## 1      1     A
## 2      1     A
## 3      4     A
## 4      5     A
## 5      1     B
## 6      3     B
## 7      4     B
## 8      4     B
{% endhighlight %}

In this case, we may want to model the mean of both cups. To
do this with `lm_basic`, we just add the new variable to the
formula:


{% highlight r %}
model <- lm_basic(number ~ 1 + cup, data = coins2)
reg_table(model)
{% endhighlight %}



{% highlight text %}
## 
## Call:
## lm_basic(formula = number ~ 1 + cup, data = coins2)
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
## -2.000 -1.750  0.500  1.062  2.250 
## 
## Coefficients:
##             Estimate
## (Intercept)     2.75
## cupB            0.25
## 
## Residual standard error: 1.768 on 6 degrees of freedom
## Multiple R-squared:  0.006623,	Adjusted R-squared:  -0.1589 
## F-statistic:  0.04 on 1 and 6 DF,  p-value: 0.8481
{% endhighlight %}

How do we read this new table? The intercept gives the mean
value for the **A** cup and the second term, called a slope,
gives the additional amount needed to get the mean of the
coins from cup **B**. So, the best guess of cup B's mean is
equal to 3. What does the table look like when we add confidence
intervals:


{% highlight r %}
reg_table(model, level = 0.95)
{% endhighlight %}



{% highlight text %}
## 
## Call:
## lm_basic(formula = number ~ 1 + cup, data = coins2)
## 
## Residuals:
##    Min     1Q Median     3Q    Max 
## -2.000 -1.750  0.500  1.062  2.250 
## 
## Coefficients:
##             Estimate   2.5 % 97.5 %
## (Intercept)   2.7500  0.5872  4.913
## cupB          0.2500 -2.8086  3.309
## 
## Residual standard error: 1.768 on 6 degrees of freedom
## Multiple R-squared:  0.006623,	Adjusted R-squared:  -0.1589 
## F-statistic:  0.04 on 1 and 6 DF,  p-value: 0.8481
{% endhighlight %}

The mean of cup A is predicted to be between 0.5872 and 4.913.
The difference between cup B's mean and cup A's mean is somewhere
between -2.8086 and 3.309. Because this difference includes zero,
we say that there is no statistical evidence (at the 95% level)
that the mean of the two cups is different... Think about this
statement for a bit. Why would a value of zero be important in
this model?

## Comparing Three Categories

Let's apply this to a more complex situation using the mammals sleep
dataset. We can model the average time spent awake as a function
of the diet type of a given mammal:


{% highlight r %}
model <- lm_basic(awake ~ 1 + vore, data = msleep)
reg_table(model, level = 0.95)
{% endhighlight %}



{% highlight text %}
## 
## Call:
## lm_basic(formula = awake ~ 1 + vore, data = msleep)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -9.0263 -4.0128  0.4237  3.4255  7.7237 
## 
## Coefficients:
##             Estimate   2.5 % 97.5 %
## (Intercept)  13.6263 11.5832 15.669
## voreherbi     0.8643 -1.7150  3.444
## voreinsecti  -4.5663 -9.0425 -0.090
## voreomni     -0.5513 -3.4044  2.302
## 
## Residual standard error: 4.467 on 72 degrees of freedom
##   (7 observations deleted due to missingness)
## Multiple R-squared:  0.08514,	Adjusted R-squared:  0.04702 
## F-statistic: 2.234 on 3 and 72 DF,  p-value: 0.09162
{% endhighlight %}

Now each of these values gives the difference between the base level,
carnivores, and all of the others. So the predicted mean for hours
spent awake for insectivores is 13.6263 + (-4.5662), or about 9 hours.
The confidence intervals tell us whether there is evidence that a
given diet type is different from carnivores. We see, for example,
that there is statistical evidence that insectivores differ from
carnivores, but no evidence for distinctions between carnivores
and any other groups.

The careful observer will notice that there is a problem with this
approach: what if we want to compare two values when one is not the
base level? To do so, use the `fct_relevel` command with the new
baseline used as the second parameter:


{% highlight r %}
msleep$vore_new <- fct_relevel(msleep$vore, "insecti")
model <- lm_basic(awake ~ 1 + vore_new, data = msleep)
reg_table(model, level = 0.95)
{% endhighlight %}



{% highlight text %}
## 
## Call:
## lm_basic(formula = awake ~ 1 + vore_new, data = msleep)
## 
## Residuals:
##     Min      1Q  Median      3Q     Max 
## -9.0263 -4.0128  0.4237  3.4255  7.7237 
## 
## Coefficients:
##               Estimate   2.5 % 97.5 %
## (Intercept)     9.0600  5.0773 13.043
## vore_newcarni   4.5663  0.0901  9.043
## vore_newherbi   5.4306  1.1480  9.713
## vore_newomni    4.0150 -0.4378  8.468
## 
## Residual standard error: 4.467 on 72 degrees of freedom
##   (7 observations deleted due to missingness)
## Multiple R-squared:  0.08514,	Adjusted R-squared:  0.04702 
## F-statistic: 2.234 on 3 and 72 DF,  p-value: 0.09162
{% endhighlight %}

Now everything is compared to the `insecti` category.

## Model Fit

We will not discuss all of the output of the `reg_table` function in
this course, but one other piece of information will come in handy:
the Multiple R-squared. We define the residual of a model as the
difference between the actual observed response minus the fitted
mean. So, in this case we would have the following residuals:

$$ \begin{align*}
\text{residual}_{\text{Cheetah}} &= \text{awake}_{\text{Cheetah}} - \text{mean}(\text{awake hours for all carnivores}) \\
\text{residual}_{\text{Owl monkey}} &= \text{awake}_{\text{Owl monkey}} - \text{mean}(\text{awake hours for all omnivores}) \\
\text{residual}_{\text{Mountain beaver}} &= \text{awake}_{\text{Mountain beaver}} - \text{mean}(\text{awake hours for all herbivores}) \\
\text{residual}_{\text{Cow}} &= \text{awake}_{\text{Cow}} - \text{mean}(\text{awake hours for all herbivores}) \\
&\vdots \\
\text{residual}_{\text{Red fox}} &= \text{awake}_{\text{Red fox}} - \text{mean}(\text{awake hours for all carnivores})
\end{align*} $$

Then, the multiple R-squared is given by:

$$ \begin{align*}
R^2 &= 1 - \frac{Var(\text{all residuals})}{Var(\text{all response values})}
\end{align*} $$

This quantity will always be between 0 and 1, with values closer to 1 indicating
that the model is describing a large proportion of the variation in the response variable.
Notice that the R-squared value is always equal to 0 for a simple model with just a single
mean.

### Practice

We will work on the next lab for the remainder of the class:
<a href="https://raw.githubusercontent.com/statsmaths/stat209/master/labs/lab19.Rmd" download="lab19.Rmd" target="_blank">lab19.Rmd</a>

Please upload your script to GitHub ahead of the next class.







