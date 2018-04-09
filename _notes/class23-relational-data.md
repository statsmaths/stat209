---
title: "Class 24: Relational Data"
author: "Taylor Arnold"
output: html_notebook
---





## Objectives

Today we will continue to dive into the Chicago Crime dataset.


## Airline data again

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

## Mutating joins

Mutating joins take two tables and combine them into a single table
that contains all variables in either original table. We can use them
for operations such as adding weather information to the flights dataset.

Before moving forward, I'll create a smaller version of the flights
dataset to make sure that this prints out well in the HTML notes:


{% highlight r %}
flights_sml <- flights %>%
  select(year:day, hour, tailnum, carrier)
{% endhighlight %}

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

As mentioned before, the key of interest may have different names in each
data set. The `by` option can be modified to specific the name of the key
in the first table and the name of the key in the second table. Here we
use it to combine the flights dataset with the airports data:


{% highlight r %}
flights_sml <- flights %>%
  select(year:day, hour, origin, dest)
left_join(flights_sml, airports, by = c("dest" = "faa"))
{% endhighlight %}



{% highlight text %}
## # A tibble: 327,346 x 13
##     year month   day  hour origin dest  name         lat   lon   alt    tz
##    <int> <int> <int> <int> <chr>  <chr> <chr>      <dbl> <dbl> <int> <int>
##  1  2013     1     1     5 EWR    IAH   George Bu…  30.0 -95.3    97   - 6
##  2  2013     1     1     5 LGA    IAH   George Bu…  30.0 -95.3    97   - 6
##  3  2013     1     1     5 JFK    MIA   Miami Intl  25.8 -80.3     8   - 5
##  4  2013     1     1     5 JFK    BQN   <NA>        NA    NA      NA    NA
##  5  2013     1     1     6 LGA    ATL   Hartsfiel…  33.6 -84.4  1026   - 5
##  6  2013     1     1     5 EWR    ORD   Chicago O…  42.0 -87.9   668   - 6
##  7  2013     1     1     6 EWR    FLL   Fort Laud…  26.1 -80.2     9   - 5
##  8  2013     1     1     6 LGA    IAD   Washingto…  38.9 -77.5   313   - 5
##  9  2013     1     1     6 JFK    MCO   Orlando I…  28.4 -81.3    96   - 5
## 10  2013     1     1     6 LGA    ORD   Chicago O…  42.0 -87.9   668   - 6
## # ... with 327,336 more rows, and 2 more variables: dst <chr>, tzone <chr>
{% endhighlight %}

Notice that the destination for the fourth row did not match
with any rows of the airports data. The airport "BQN" was not found
(if you are curious, BQN is in Aguadilla, Puerto Rico; presumably
the airports data onlyincludes those in the 50 US states).

### Inner and outer joins

There are four mutating joins available in **dplyr**. These have the
same syntax. If the join key is a primary key in one table and there
are no missing matches, they all function exactly the same. If the
join key is a primary key in one table and not all foreign keys in
the other table match an entry in the other, the following happens:

- `left_join` only non-matching rows in the first dataset are kept
- `right_join` only non-matching rows in the second dataset are kept
- `full_join` non-matching rows are included from either table
- `inner_join` only matching rows from both tables are included

All of this can become quite complicated. I follow one simple rule
that make this much easier:

- make sure that the key used for the join is a primary key for
the *second* dataset; that is, it unique defines each row of the
second dataset (usually this dataset contains metadata about the
first dataset)

If you follow this rule, you only ever need `left_join` (if you are
okay with missing values in the metadata) and `inner_join`
(if you want to remove rows that did not have associated metadata).

### Composite keys

Recall that a key may consist of multiple variables. To
join on many variables at once, provide a vector of all the names
to the option `by`:


{% highlight r %}
flights_sml <- flights %>%
  select(year:day, hour, origin, dest)

inner_join(flights_sml, weather,
          by = c("year", "month", "day", "hour", "origin"))
{% endhighlight %}



{% highlight text %}
## # A tibble: 326,160 x 16
##     year month   day  hour origin dest   temp  dewp humid wind_dir
##    <int> <int> <int> <int> <chr>  <chr> <dbl> <dbl> <dbl>    <int>
##  1  2013     1     1     6 LGA    ATL    39.9  26.1  57.3      260
##  2  2013     1     1     6 EWR    FLL    39.0  26.1  59.4      270
##  3  2013     1     1     6 LGA    IAD    39.9  26.1  57.3      260
##  4  2013     1     1     6 JFK    MCO    39.0  26.1  59.4      260
##  5  2013     1     1     6 LGA    ORD    39.9  26.1  57.3      260
##  6  2013     1     1     6 JFK    PBI    39.0  26.1  59.4      260
##  7  2013     1     1     6 JFK    TPA    39.0  26.1  59.4      260
##  8  2013     1     1     6 JFK    LAX    39.0  26.1  59.4      260
##  9  2013     1     1     6 EWR    SFO    39.0  26.1  59.4      270
## 10  2013     1     1     6 LGA    DFW    39.9  26.1  57.3      260
## # ... with 326,150 more rows, and 6 more variables: wind_speed <dbl>,
## #   wind_gust <dbl>, precip <dbl>, pressure <dbl>, visib <dbl>,
## #   time_hour <dttm>
{% endhighlight %}

### Common variables

Sometimes there may be a variable name present in two datasets that
we want to merge together but that has a different meaning in each
dataset. For example, `year` is the year of the flight in the `flights`
dataset but the year of creating in the `airplanes` dataset. If
we join these two, we see that a suffix is added to each variable:


{% highlight r %}
flights_sml <- flights %>%
  select(year:day, tailnum)

inner_join(flights_sml, planes,
          by = c("tailnum"))
{% endhighlight %}



{% highlight text %}
## # A tibble: 279,017 x 12
##    year.x month   day tailnum year.y type      manufacturer model  engines
##     <int> <int> <int> <chr>    <int> <chr>     <chr>        <chr>    <int>
##  1   2013     1     1 N14228    1999 Fixed wi… BOEING       737-8…       2
##  2   2013     1     1 N24211    1998 Fixed wi… BOEING       737-8…       2
##  3   2013     1     1 N619AA    1990 Fixed wi… BOEING       757-2…       2
##  4   2013     1     1 N804JB    2012 Fixed wi… AIRBUS       A320-…       2
##  5   2013     1     1 N668DN    1991 Fixed wi… BOEING       757-2…       2
##  6   2013     1     1 N39463    2012 Fixed wi… BOEING       737-9…       2
##  7   2013     1     1 N516JB    2000 Fixed wi… AIRBUS INDU… A320-…       2
##  8   2013     1     1 N829AS    1998 Fixed wi… CANADAIR     CL-60…       2
##  9   2013     1     1 N593JB    2004 Fixed wi… AIRBUS       A320-…       2
## 10   2013     1     1 N793JB    2011 Fixed wi… AIRBUS       A320-…       2
## # ... with 279,007 more rows, and 3 more variables: seats <int>,
## #   speed <int>, engine <chr>
{% endhighlight %}

This behavior is fine, but it is better to manually describe
what the suffix should be:


{% highlight r %}
inner_join(flights_sml, planes,
          by = c("tailnum"),
          suffix = c("", "_plane"))
{% endhighlight %}



{% highlight text %}
## # A tibble: 279,017 x 12
##     year month   day tailnum year_plane type    manufacturer model engines
##    <int> <int> <int> <chr>        <int> <chr>   <chr>        <chr>   <int>
##  1  2013     1     1 N14228        1999 Fixed … BOEING       737-…       2
##  2  2013     1     1 N24211        1998 Fixed … BOEING       737-…       2
##  3  2013     1     1 N619AA        1990 Fixed … BOEING       757-…       2
##  4  2013     1     1 N804JB        2012 Fixed … AIRBUS       A320…       2
##  5  2013     1     1 N668DN        1991 Fixed … BOEING       757-…       2
##  6  2013     1     1 N39463        2012 Fixed … BOEING       737-…       2
##  7  2013     1     1 N516JB        2000 Fixed … AIRBUS INDU… A320…       2
##  8  2013     1     1 N829AS        1998 Fixed … CANADAIR     CL-6…       2
##  9  2013     1     1 N593JB        2004 Fixed … AIRBUS       A320…       2
## 10  2013     1     1 N793JB        2011 Fixed … AIRBUS       A320…       2
## # ... with 279,007 more rows, and 3 more variables: seats <int>,
## #   speed <int>, engine <chr>
{% endhighlight %}

### Unspecified key

If we do not specify the key to join with in the `by` option, **dplyr**
will assume that we want to join on all common keys. A warning will be
produced warning which variables were choosen. This can be useful in a
pinch, but generally is a bad idea to rely on.

## Filtering joins

There are two additional two table verbs that act like the `filter`
command, returning a subset of the rows, rather than like `mutate`,
which adds new columns. Specifically:

- `semi_join(x, y)` keeps all rows in `x` that have a match in `y`
- `anti_join(x, y)` keeps all rows in `x` that do not have a match in `y`

Unlike mutating joins, we do not need to be nearly as careful to make
sure that the joining key is a primary key for the second dataset.

We will see that filtering joins are particularly useful when working
with spatial and text data.

## Practice

Today, work on the first lab concerned with the Chicago Crime data:
<a href="https://raw.githubusercontent.com/statsmaths/stat209/master/labs/lab24.Rmd" download="lab24.Rmd" target="_blank">lab24.Rmd</a>

Please upload your script to GitHub ahead of the next class.







