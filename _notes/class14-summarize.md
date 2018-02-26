---
title: "Class 14: Summarizing Data"
author: "Taylor Arnold"
output: html_notebook
---





### Learning Objectives

Understand the concepts behind summarizing datasets by a grouping variable
and be able to apply this to a new dataset using the syntax in R.

### NYC Flights Data

Once again we are going to work today with the NYC Flights dataset.


{% highlight r %}
flights <- read_csv("https://statsmaths.github.io/stat_data/flights.csv")
{% endhighlight %}



{% highlight text %}
## Parsed with column specification:
## cols(
##   year = col_integer(),
##   month = col_integer(),
##   day = col_integer(),
##   dep_time = col_integer(),
##   sched_dep_time = col_integer(),
##   dep_delay = col_integer(),
##   arr_time = col_integer(),
##   sched_arr_time = col_integer(),
##   arr_delay = col_integer(),
##   carrier = col_character(),
##   flight = col_integer(),
##   tailnum = col_character(),
##   origin = col_character(),
##   dest = col_character(),
##   air_time = col_integer(),
##   distance = col_integer(),
##   hour = col_integer(),
##   minute = col_integer(),
##   time_hour = col_datetime(format = "")
## )
{% endhighlight %}



{% highlight r %}
flights
{% endhighlight %}



{% highlight text %}
## # A tibble: 327,346 x 19
##     year month   day dep_time sched_dep_time dep_delay arr_time
##    <int> <int> <int>    <int>          <int>     <int>    <int>
##  1  2013     1     1      517            515         2      830
##  2  2013     1     1      533            529         4      850
##  3  2013     1     1      542            540         2      923
##  4  2013     1     1      544            545        -1     1004
##  5  2013     1     1      554            600        -6      812
##  6  2013     1     1      554            558        -4      740
##  7  2013     1     1      555            600        -5      913
##  8  2013     1     1      557            600        -3      709
##  9  2013     1     1      557            600        -3      838
## 10  2013     1     1      558            600        -2      753
## # ... with 327,336 more rows, and 12 more variables: sched_arr_time <int>,
## #   arr_delay <int>, carrier <chr>, flight <int>, tailnum <chr>,
## #   origin <chr>, dest <chr>, air_time <int>, distance <int>, hour <int>,
## #   minute <int>, time_hour <dttm>
{% endhighlight %}

Take note of the unit of observation here: each row is a flight.

### Changing the Unit of Observation

Often, it is useful to change the unit of observation within a dataset.
The most common way of doing this is to group the dataset by a combination
of variables and aggregate the numeric variables by taking sums, means, or
some other summary statistics. Some common examples include:

- aggregating individual shot attempts in soccer to summary statistics about each player
- aggregating census tract data to a county or state level
- aggregating information about individual patients to summaries about demographic groups

We have seen a few simple ways of doing this already within a plot (such as
counting occurances in a group with `geom_bar`). Today we will see how to do this
with the `group_summarize` command.

### Summarizing data

The group summarize command comes from the **smodels** package. Applying it to a
dataset with no additional options yields a new dataset with just a single line.
Variables in the new dataset summarize the numeric variables in the raw data.


{% highlight r %}
flight_line <- group_summarize(flights)
flight_line
{% endhighlight %}



{% highlight text %}
## # A tibble: 1 x 57
##   year_mean month_mean day_mean dep_time_mean sched_dep_time_mean
##       <dbl>      <dbl>    <dbl>         <dbl>               <dbl>
## 1      2013   6.564803 15.74082       1348.79            1340.335
## # ... with 52 more variables: dep_delay_mean <dbl>, arr_time_mean <dbl>,
## #   sched_arr_time_mean <dbl>, arr_delay_mean <dbl>, flight_mean <dbl>,
## #   air_time_mean <dbl>, distance_mean <dbl>, hour_mean <dbl>,
## #   minute_mean <dbl>, year_median <dbl>, month_median <dbl>,
## #   day_median <dbl>, dep_time_median <dbl>, sched_dep_time_median <dbl>,
## #   dep_delay_median <dbl>, arr_time_median <dbl>,
## #   sched_arr_time_median <dbl>, arr_delay_median <dbl>,
## #   flight_median <dbl>, air_time_median <dbl>, distance_median <dbl>,
## #   hour_median <dbl>, minute_median <dbl>, year_sd <dbl>, month_sd <dbl>,
## #   day_sd <dbl>, dep_time_sd <dbl>, sched_dep_time_sd <dbl>,
## #   dep_delay_sd <dbl>, arr_time_sd <dbl>, sched_arr_time_sd <dbl>,
## #   arr_delay_sd <dbl>, flight_sd <dbl>, air_time_sd <dbl>,
## #   distance_sd <dbl>, hour_sd <dbl>, minute_sd <dbl>, year_sum <int>,
## #   month_sum <int>, day_sum <int>, dep_time_sum <int>,
## #   sched_dep_time_sum <int>, dep_delay_sum <int>, arr_time_sum <int>,
## #   sched_arr_time_sum <int>, arr_delay_sum <int>, flight_sum <int>,
## #   air_time_sum <int>, distance_sum <int>, hour_sum <int>,
## #   minute_sum <int>, n <int>
{% endhighlight %}

Specifically, we see the following summaries for each numeric variable (the new names add a suffix
to the original variable name):

- `mean`: the average of all the observations
- `median`: if we ordered all observations from smallest to largest, the middle value
- `sd`: the standard deviation, a measurment of how much the number varies across observations (more on this after the break)
- `sum`: the sum of all the observations

There is also a variable just called `n` at the end, giving the total number of observations in
the entire dataset.

### Group Summarize

The magic of the `group_summarize` command comes from specifying other variables in function call.
If we specify a grouping variable, here I'll use `month`, the summarizing will be done *within*
each month. So, here, the new dataset has 12 rows with each row summarizing a given month:


{% highlight r %}
flight_month <- group_summarize(flights, month)
print(flight_month, n = 12)
{% endhighlight %}



{% highlight text %}
## # A tibble: 12 x 54
##    month year_mean day_mean dep_time_mean sched_dep_time_mean
##    <int>     <dbl>    <dbl>         <dbl>               <dbl>
##  1     1      2013 15.84775      1346.628            1339.066
##  2     2      2013 14.95498      1347.691            1340.016
##  3     3      2013 16.13802      1359.336            1351.681
##  4     4      2013 15.41384      1352.872            1344.696
##  5     5      2013 15.93444      1350.588            1340.592
##  6     6      2013 15.46984      1350.204            1336.275
##  7     7      2013 16.22974      1351.879            1339.384
##  8     8      2013 15.88152      1350.252            1341.918
##  9     9      2013 15.67468      1333.900            1330.451
## 10    10      2013 16.00321      1340.180            1335.061
## 11    11      2013 15.30930      1344.589            1342.228
## 12    12      2013 15.87372      1356.923            1342.379
## # ... with 49 more variables: dep_delay_mean <dbl>, arr_time_mean <dbl>,
## #   sched_arr_time_mean <dbl>, arr_delay_mean <dbl>, flight_mean <dbl>,
## #   air_time_mean <dbl>, distance_mean <dbl>, hour_mean <dbl>,
## #   minute_mean <dbl>, year_median <dbl>, day_median <dbl>,
## #   dep_time_median <dbl>, sched_dep_time_median <dbl>,
## #   dep_delay_median <dbl>, arr_time_median <dbl>,
## #   sched_arr_time_median <dbl>, arr_delay_median <dbl>,
## #   flight_median <dbl>, air_time_median <dbl>, distance_median <dbl>,
## #   hour_median <dbl>, minute_median <dbl>, year_sd <dbl>, day_sd <dbl>,
## #   dep_time_sd <dbl>, sched_dep_time_sd <dbl>, dep_delay_sd <dbl>,
## #   arr_time_sd <dbl>, sched_arr_time_sd <dbl>, arr_delay_sd <dbl>,
## #   flight_sd <dbl>, air_time_sd <dbl>, distance_sd <dbl>, hour_sd <dbl>,
## #   minute_sd <dbl>, year_sum <int>, day_sum <int>, dep_time_sum <int>,
## #   sched_dep_time_sum <int>, dep_delay_sum <int>, arr_time_sum <int>,
## #   sched_arr_time_sum <int>, arr_delay_sum <int>, flight_sum <int>,
## #   air_time_sum <int>, distance_sum <int>, hour_sum <int>,
## #   minute_sum <int>, n <int>
{% endhighlight %}

This dataset can then be used in further visualizations. Such as:


{% highlight r %}
ggplot(flight_month, aes(month, dep_delay_mean)) +
  geom_line(color = "salmon", size = 1) +
  geom_line(aes(y = arr_delay_mean), color = "olivedrab", size = 1) +
  scale_x_continuous(breaks = c(1,2,3,4,5,6,7,8,9,10,11,12)) +
  annotate("text", x = 6.5, y = 23, label = "Delays Peak in July and August...") +
  annotate("text", x = 9, y = -5, label = "... And dip in September") +
  annotate("text", x = 3, y = 15, color = "salmon", label = "Departure") +
  annotate("text", x = 3, y = 4, color = "olivedrab", label = "Arrival") +
  xlab("Month of the Year") +
  ylab("Average Delay in Minutes")
{% endhighlight %}

<img src="../assets/class14-summarize/unnamed-chunk-5-1.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" width="100%" />

Notice that it would be impossible to produce this graphic without the summarize command.

### Summarize By Multiple Variables

By supplying multiple variables to the `group_summarize` command, we can group simultaneously by both.
Here we have a unique row for each combination of carrier and departure airport:


{% highlight r %}
flight_carrier <- group_summarize(flights, carrier, origin)
{% endhighlight %}

Which allows us to make plots like this:


{% highlight r %}
ggplot(flight_carrier, aes(carrier, arr_delay_mean)) +
  geom_point(aes(color = origin)) +
  xlab("Carrier Code") +
  ylab("Average Arrival Delay (minutes)")
{% endhighlight %}

<img src="../assets/class14-summarize/unnamed-chunk-7-1.png" title="plot of chunk unnamed-chunk-7" alt="plot of chunk unnamed-chunk-7" width="100%" />

As you can imagine, summarizing data can quickly allow for very complex
graphics and analyses.

### Practice

We will work on Lab14 today in order to practice using the `group_summarize`
command:
<a href="https://raw.githubusercontent.com/statsmaths/stat209/master/labs/lab14.Rmd" download="lab14.Rmd" target="_blank">lab14.Rmd</a>
Please upload your script to GitHub ahead of the next class.








