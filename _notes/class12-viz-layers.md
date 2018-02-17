---
title: "Class 12: Further Visualization Layers"
author: "Taylor Arnold"
output: html_notebook
---





### Learning Objectives

Today we will cover several remaining layer types and examples in the grammar
of graphics.

### GapMinder Data

For the final time, we'll make use the gapminder dataset:


{% highlight r %}
gapminder_2007 <- read_csv("https://statsmaths.github.io/stat_data/gapminder_2007.csv")
{% endhighlight %}

### Facets

A special layer type within the **ggplot2** framework, facets allow us
to produce many small plots for each value of a character variable. It
can be added onto almost any other plot.


{% highlight r %}
ggplot(gapminder_2007, aes(gdp_per_cap, life_exp)) +
  geom_point() +
  facet_wrap(~continent)
{% endhighlight %}

<img src="../assets/class12-viz-layers/unnamed-chunk-3-1.png" title="plot of chunk unnamed-chunk-3" alt="plot of chunk unnamed-chunk-3" width="100%" />

Notice that the scales of the axes are all the same. Sometimes this is
useful, but in other cases it is useful to allow these to change. We
can do this by adding the option `scales="free"`:


{% highlight r %}
ggplot(gapminder_2007, aes(gdp_per_cap, life_exp)) +
  geom_point() +
  facet_wrap(~continent, scales = "free") + scale_color_viridis(option = "A")
{% endhighlight %}

<img src="../assets/class12-viz-layers/unnamed-chunk-4-1.png" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" width="100%" />

There are also options `scales="free_x"` and `scales="free_y"` if you
would like to only allow one axis to change.

### Scales

Another layer type are scales. These control the exact way that aesthetics
are mapped to visual features. For example, we have seen that we can change
the color pallet used with the **viridis** package:


{% highlight r %}
ggplot(gapminder_2007, aes(gdp_per_cap, life_exp)) +
  geom_point(aes(color = life_exp)) +
  scale_color_viridis()
{% endhighlight %}

<img src="../assets/class12-viz-layers/unnamed-chunk-5-1.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" width="100%" />

Similarly, we can add `scale_x_log10()` and/or `scale_y_log10()` to plot
values on the logarithmic scale:


{% highlight r %}
ggplot(gapminder_2007, aes(gdp_per_cap, life_exp)) +
  geom_point(aes(color = life_exp)) +
  scale_color_viridis() +
  scale_x_log10(breaks = c(500, 5000, 50000))
{% endhighlight %}

<img src="../assets/class12-viz-layers/unnamed-chunk-6-1.png" title="plot of chunk unnamed-chunk-6" alt="plot of chunk unnamed-chunk-6" width="100%" />

There are a lot of things you can do with the scale functions by changing
the default options:


{% highlight r %}
ggplot(gapminder_2007, aes(gdp_per_cap, life_exp)) +
  geom_point(aes(color = life_exp)) +
  scale_color_viridis() +
  scale_x_log10(breaks = c(500, 5000, 50000)) +
  scale_y_continuous(breaks = c(40, 60, 80))
{% endhighlight %}

<img src="../assets/class12-viz-layers/unnamed-chunk-7-1.png" title="plot of chunk unnamed-chunk-7" alt="plot of chunk unnamed-chunk-7" width="100%" />

I won't quiz you on the details of these, but look back to these notes when
you find ourself wanting to do something with the scales or range of the
plot.

### Practice

For today's class, we will starting working on the next project, Project B.







