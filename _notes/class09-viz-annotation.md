---
title: "Annotating Data Visualizations"
author: "Taylor Arnold"
output: html_notebook
---





### Learning Objectives

Today we will review the elements of the grammar of graphics and extend
this grammar to allow for manual annotations of data visualizations.

### GapMinder Data


For today's notes, we will once again use the `gapminder_2007` dataset:


{% highlight r %}
gapminder_2007 <- read_csv("https://statsmaths.github.io/stat_data/gapminder_2007.csv")
{% endhighlight %}

Here is a plot showing several of the ways that layers and aesthetics can
be used to construct an informative visualization:


{% highlight r %}
ggplot(gapminder_2007, aes(gdp_per_cap, life_exp)) +
  geom_point(aes(size = pop), color = "salmon")
{% endhighlight %}

<img src="../assets/class09-viz-annotation/unnamed-chunk-3-1.png" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" width="100%" />

I have changed the size of the points to scale with the population, but the
color of the points is set to a fixed value.

## Labels

As you saw in `lab08.Rmd`, we can add labels to the plot by adding
new layers to the plot:

- `xlab("text for the x-axis")`
- `ylab("text for the y-axis")`
- `ggtitle("text for the title/top of the plot")`
- `labs(size = "label for the size legend")`

Let's add these to the current plot: 


{% highlight r %}
ggplot(data=gapminder_2007, aes(x=gdp_per_cap, y=life_exp)) +
  geom_point(aes(size=pop), color = "salmon") +
  xlab("Gross domestic product per capita (USD)") +
  ylab("Life expectancy at birth (years)") +
  labs(size = "Population") +
  ggtitle("Macroeconomic variables by country (2007)")
{% endhighlight %}

<img src="../assets/class09-viz-annotation/unnamed-chunk-4-1.png" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" width="100%" />

Do not feel that you need to add complex labels to plots as we are doing
an exploratory analysis. However, when presenting plots in a report these
should certainly be used to clarify the plot to the audience or readers.

### Annotations

While we can use graphics simply for our own exploratory work, they can
often also be used to make visual arguments. That's the case, for example,
whenever we use a graphic in a report or presentation. In order to strengthen
a visual argument it is useful to add manual annotations to the plot to help
explain our main points.

In order to add manual annotations, we will use the function `annotate`.
For each annotation, simply add another layer. The exact syntax differs
based on whether we want a point:


{% highlight r %}
annotate("point", x = [X COORDINATE], y = [Y COORDINATE], [OTHER OPTIONS])
{% endhighlight %}

Text:


{% highlight r %}
annotate("text", x = [X COORDINATE], y = [Y COORDINATE], label = [TEXT],
         [OTHER OPTIONS])
{% endhighlight %}

Or a rect(angle):


{% highlight r %}
annotate("text", xmin = [VALUE], xmax = [VALUE], ymin = [VALUE],
                 ymax = [VALUE], [OTHER OPTIONS])
{% endhighlight %}

For example, to add the current life expectancy (79.1) and GDP (51736) of Virginia
onto the plot, I would do this:


{% highlight r %}
ggplot(data=gapminder_2007, aes(x=gdp_per_cap, y=life_exp)) +
  geom_point(aes(size=pop)) +
  annotate("point", x = 51736, y = 79.1, color = "red", size = 3)
{% endhighlight %}

<img src="../assets/class09-viz-annotation/unnamed-chunk-8-1.png" title="plot of chunk unnamed-chunk-8" alt="plot of chunk unnamed-chunk-8" width="100%" />

Similarly, I could label the US on the plot:


{% highlight r %}
ggplot(data=gapminder_2007, aes(x=gdp_per_cap, y=life_exp)) +
  geom_point(aes(size=pop, color = continent)) +
  annotate("text", x = 42950, y = 767, label = "USA")
{% endhighlight %}

<img src="../assets/class09-viz-annotation/unnamed-chunk-9-1.png" title="plot of chunk unnamed-chunk-9" alt="plot of chunk unnamed-chunk-9" width="100%" />

Or, highlight the healthy and wealthy part of the plot:


{% highlight r %}
ggplot(data=gapminder_2007, aes(x=gdp_per_cap, y=life_exp)) +
  annotate("rect", xmin = 30000, xmax = 50000,
                   ymin = 75, ymax = 83,
                   fill = "purple", alpha = 0.1) +
  geom_point(aes(size=pop)) +
  annotate("text", x = 40000, y = 76,
           label = "Healthiest and Wealthiest Countries")
{% endhighlight %}

<img src="../assets/class09-viz-annotation/unnamed-chunk-10-1.png" title="plot of chunk unnamed-chunk-10" alt="plot of chunk unnamed-chunk-10" width="100%" />

Notice here that I set the aesthetics `fill` (that the filled color
of the rectangle) and `alpha` (how opaque the rectangle is); I also
put the rectangle first so that the points were plotted behind the
rectangle.

### Practice

We will, once again, work on a lab for the remainder of the class:
<a href="https://raw.githubusercontent.com/statsmaths/stat209/master/labs/lab09.Rmd" download="lab09.Rmd" target="_blank">lab09.Rmd</a>
Upload your script (no need to include the HTML file) to GitHub ahead of the
next class.








