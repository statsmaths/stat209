---
title: "Numeric Summaries"
author: "Taylor Arnold"
output: html_notebook
---





### Variable Types


{% highlight r %}
commute <- read_csv("https://raw.githubusercontent.com/statsmaths/stat_data/gh-pages/acs_commute.csv")
{% endhighlight %}

{% highlight text %}
## # A tibble: 906 x 12
##                           name      lat        lon prop_housing
##                          <chr>    <dbl>      <dbl>        <dbl>
##  1                Aberdeen, SD 45.52158  -98.69595     16.16231
##  2                Aberdeen, WA 47.14445 -123.82847     21.54960
##  3                 Abilene, TX 32.44969  -99.71768     19.82418
##  4                     Ada, OK 34.72800  -96.68444     18.07076
##  5                  Adrian, MI 41.89508  -84.06637     21.17295
##  6                   Akron, OH 41.14873  -81.34953     20.58453
##  7              Alamogordo, NM 32.61316 -105.74168     19.70749
##  8                  Albany, GA 31.58951  -84.17389     24.45320
##  9                  Albany, OR 44.48868 -122.53432     23.96531
## 10 Albany-Schenectady-Troy, NY 42.78851  -73.94198     20.53007
## # ... with 896 more rows, and 8 more variables: median_income <dbl>,
## #   avg_duration <dbl>, median_age <dbl>, same_house <dbl>,
## #   same_county <dbl>, car_alone <dbl>, public_transit <dbl>,
## #   time_0900_0959 <dbl>
{% endhighlight %}

### Data Dictionary

- **name** (chr): name of the metropolitan or micropolitan area
- **lat** (dbl): latitude of the centroid of the area
- **lon** (dbl): longitude of the centroid of the area
- **prop_housing** (dbl): average proportion of income spent on housing (0-100)
- **median_income** (dbl): median annual household income (dollars)
- **avg_duration** (dbl): average duration of commute (in minutes)
- **median_age** (dbl): median age of all people in the area
- **same_house** (dbl): proportion of households in the same house one year prior (0-100)
- **same_county** (dbl): proportion of households in the same county one year prior (0-100)
- **car_alone** (dbl): proportion of workers commuting by car alone (0-100)
- **public_transit** (dbl): proportion of workers commuting by public transit (0-100)
- **time_0900_0959** (dbl): proportion of workers commuting to work between 9am and 10am (0-100)

### Measures of Central Tendency

$$ \text{mean}(x) = \frac{x_1 + x_2 + \cdots + x_n}{n} $$


{% highlight r %}
mean(commute$avg_duration)
{% endhighlight %}



{% highlight text %}
## [1] 21.53447
{% endhighlight %}


{% highlight r %}
mean(commute$car_alone)
{% endhighlight %}



{% highlight text %}
## [1] 80.15011
{% endhighlight %}


{% highlight r %}
median(commute$avg_duration)
{% endhighlight %}



{% highlight text %}
## [1] 21.46115
{% endhighlight %}


### Measures of Distribution



{% highlight r %}
deciles(commute$avg_duration)
{% endhighlight %}



{% highlight text %}
## Error in deciles(commute$avg_duration): could not find function "deciles"
{% endhighlight %}


{% highlight r %}
percentiles(commute$public_transit)
{% endhighlight %}



{% highlight text %}
## Error in percentiles(commute$public_transit): could not find function "percentiles"
{% endhighlight %}

### Measures of Variation

$$ \text{var}(x) = \frac{(x_1 - mean(x))^2 + (x_2 - mean(x))^2 + \cdots + (x_n - mean(x))^2}{n - 1} $$



$$ \text{sd}(x) = \sqrt{\text{var}(x)}



{% highlight r %}
sd(commute$median_income)
{% endhighlight %}



{% highlight text %}
## [1] 9517.503
{% endhighlight %}

### Standard Deviation Rule (66-95-99.6)


{% highlight r %}
mean(commute$median_age)
{% endhighlight %}



{% highlight text %}
## [1] 38.40971
{% endhighlight %}


{% highlight r %}
sd(commute$median_age)
{% endhighlight %}



{% highlight text %}
## [1] 4.817763
{% endhighlight %}

Expect 66% of the data from 33.6 to 43.2 years and 95%
between 28.8 and 48 years.


{% highlight r %}
qplot(median_age, data = commute)
{% endhighlight %}



{% highlight text %}
## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
{% endhighlight %}

<img src="../assets/class04-numeric-summaries/unnamed-chunk-12-1.png" title="plot of chunk unnamed-chunk-12" alt="plot of chunk unnamed-chunk-12" width="100%" />
