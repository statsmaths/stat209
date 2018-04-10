---
title: "Class 23: Relational Data"
author: "Taylor Arnold"
output: html_notebook
---





## Airline data

Today we will once again look at the NYC flights dataset:


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

This time we will also look at several other tables that describe
various aspects of the flights. Most of the names of these
should be self-explanatory:


{% highlight r %}
airlines <- read_csv("https://statsmaths.github.io/stat_data/f_airlines.csv")
{% endhighlight %}



{% highlight text %}
## Parsed with column specification:
## cols(
##   carrier = col_character(),
##   name = col_character()
## )
{% endhighlight %}



{% highlight r %}
airports <- read_csv("https://statsmaths.github.io/stat_data/f_airports.csv")
{% endhighlight %}



{% highlight text %}
## Parsed with column specification:
## cols(
##   faa = col_character(),
##   name = col_character(),
##   lat = col_double(),
##   lon = col_double(),
##   alt = col_integer(),
##   tz = col_integer(),
##   dst = col_character(),
##   tzone = col_character()
## )
{% endhighlight %}



{% highlight r %}
planes <- read_csv("https://statsmaths.github.io/stat_data/f_planes.csv")
{% endhighlight %}



{% highlight text %}
## Parsed with column specification:
## cols(
##   tailnum = col_character(),
##   year = col_integer(),
##   type = col_character(),
##   manufacturer = col_character(),
##   model = col_character(),
##   engines = col_integer(),
##   seats = col_integer(),
##   speed = col_integer(),
##   engine = col_character()
## )
{% endhighlight %}



{% highlight r %}
weather <- read_csv("https://statsmaths.github.io/stat_data/f_weather.csv")
{% endhighlight %}



{% highlight text %}
## Parsed with column specification:
## cols(
##   origin = col_character(),
##   year = col_integer(),
##   month = col_integer(),
##   day = col_integer(),
##   hour = col_integer(),
##   temp = col_double(),
##   dewp = col_double(),
##   humid = col_double(),
##   wind_dir = col_integer(),
##   wind_speed = col_double(),
##   wind_gust = col_double(),
##   precip = col_double(),
##   pressure = col_double(),
##   visib = col_double(),
##   time_hour = col_datetime(format = "")
## )
{% endhighlight %}

## Relational data keys

All of these tables are connected by way of common shared
variables known in database theory as *keys*. A key may be
a single variable or a collection of variables (known as
a composite key). There are two types of keys:

- a **primary key** uniquely identifies a row in a data table
- a **foreign key** uniquely identifies a row in another data table

An individual variable may be part of both a primary and foreign
key even within the same table. Notice that variables in a key
may have a different name in another table. In fact, they may
even map to multiple variables in another table. An example is the
`faa` code in the airports dataset, which maps to both the
origin and destination fields in the `flights` dataset.

The diagram below shows all of the connections between the five
tables that we have loaded:

![](../assets/img/relational-nycflights.png)

A primary key and the corresponding foreign key in another table form a *relation*.
Typically a relation maps a single row in one dataset to many rows in another.
For example, each flight has one origin, but each origin has many flights.

# Two table verbs

Recall that we called the functions from **dplyr** that take a dataset and
return another dataset *verbs*. Specifically, all of the verbs we have learned
so far are *one table verbs* as they take just a single table as an input.
When working with relational data we need verbs that take two tables and
return some sort of new output. These are called **two table verbs**. In
case you are wondering, there are no three table verbs. To work with more
than two tables, simply chain together multiple two table verbs.

In my experience, the two table verb `left_join` is by far the most
commonly used way of combining two tables. The function takes two
tables as its first two arguments, followed by the input `by` that
describes which variables are going to be used to join the tables.
Here we see that it returns a new table with the same number of rows
as the `flights_sml` dataset but now with the full name of the carrier:




{% highlight r %}
left_join(flights_sml, airlines, by = "carrier")
{% endhighlight %}



{% highlight text %}
## # A tibble: 327,346 x 7
##     year month   day  hour tailnum carrier name                    
##    <int> <int> <int> <int> <chr>   <chr>   <chr>                   
##  1  2013     1     1     5 N14228  UA      United Air Lines Inc.   
##  2  2013     1     1     5 N24211  UA      United Air Lines Inc.   
##  3  2013     1     1     5 N619AA  AA      American Airlines Inc.  
##  4  2013     1     1     5 N804JB  B6      JetBlue Airways         
##  5  2013     1     1     6 N668DN  DL      Delta Air Lines Inc.    
##  6  2013     1     1     5 N39463  UA      United Air Lines Inc.   
##  7  2013     1     1     6 N516JB  B6      JetBlue Airways         
##  8  2013     1     1     6 N829AS  EV      ExpressJet Airlines Inc.
##  9  2013     1     1     6 N593JB  B6      JetBlue Airways         
## 10  2013     1     1     6 N3ALAA  AA      American Airlines Inc.  
## # ... with 327,336 more rows
{% endhighlight %}

And the resulting dataset combines all of the variables by the common key.

## Practice

Today, work on the first lab concerned with the Chicago Crime data:
<a href="https://raw.githubusercontent.com/statsmaths/stat209/master/labs/lab23.Rmd" download="lab23.Rmd" target="_blank">lab23.Rmd</a>

Please upload your script to GitHub ahead of the next class.







