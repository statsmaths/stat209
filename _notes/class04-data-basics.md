---
title: "Data Basics"
author: "Taylor Arnold"
output: html_notebook
---



### Tabular data formats

In this course we will store data in a tabular format.
These tables will have **observations** stored in rows and
**variables** stored in columns. The individual elements are
called **values**. So, each row represents a
particular object in our dataset and each column represents
some feature of the objects.

![](../assets/img/tidy-1.png)

Let's look at the births dataset again from last time:


{% highlight r %}
library(readr)

births <- read_csv("https://statsmaths.github.io/stat_data/arbuthnot.csv")
births
{% endhighlight %}



{% highlight text %}
## # A tibble: 82 x 6
##    head_of_state  year  boys girls total boy_to_girl_ratio
##            <chr> <int> <int> <int> <int>             <dbl>
##  1     Charles I  1629  5218  4683  9901             1.114
##  2     Charles I  1630  4858  4457  9315             1.090
##  3     Charles I  1631  4422  4102  8524             1.078
##  4     Charles I  1632  4994  4590  9584             1.088
##  5     Charles I  1633  5158  4839  9997             1.066
##  6     Charles I  1634  5035  4820  9855             1.045
##  7     Charles I  1635  5106  4928 10034             1.036
##  8     Charles I  1636  4917  4605  9522             1.068
##  9     Charles I  1637  4703  4457  9160             1.055
## 10     Charles I  1638  5359  4952 10311             1.082
## # ... with 72 more rows
{% endhighlight %}

The observations here are *years* and the variables are: `head_of_state`,
`year`, `boys`, `girls`, `total`, and `boy_to_girl_ratio`. Each variable
measures something about a given observation. What exactly
constitutes a row of the data is called a **unit of analysis**.
Keeping in mind what the unit of analysis is will be very
important as we think about how data is being used.

### Comma separated values

The type of R object that stores such a dataset is called a
**data frame**. Data frames store tabular data for us within R. We also
need a way to store tabular data as a file. One option would be to store
data as Google sheets or Excel file. While these programs are
great for data input, it is not a good idea to store raw data in
these formats. Instead, we want a minimal **plain text** format.
That is, the file should be readable by any basic text editor.

The plan text data format that we will use is called a
**comma-separated values** or CSV file. In this format, each
column of the data is (as the name suggests) separated by a
comma. Every observation is stored on its own row. The first
row gives the names of the columns. Here are what the first few
rows of the births dataset look like stored as a CSV file:

```
head_of_state,year,boys,girls,total,boy_to_girl_ratio
Charles I,1629,5218,4683,9901,1.114
Charles I,1630,4858,4457,9315,1.09
Charles I,1631,4422,4102,8524,1.078
Charles I,1632,4994,4590,9584,1.088
Charles I,1633,5158,4839,9997,1.066
Charles I,1634,5035,4820,9855,1.045
```

A CSV file can be created and read by R, Excel, GoogeSheets,
OpenOffice, and most other data processing and statistical tools.
It is one of the most common formats that you will see data stored
as online. By convention, a CSV file has the extension ".csv".

As we have seen, we can read a dataset using the `read_csv` function. The
function either takes a URL, as we have above, or a path to the file on your
computer. We will test out the second example now.

### Activity: Data creation

We are now going to collect some data as a class. Specifically, you will each
record information about your four favorite restaurants:

  - name of the restaurant
  - location
  - cuisine
  - favorite dish
  - cost of a typical meal per person
  - how many times you visit each year
  - last time that you visited

Let's start by doing this individually in Google Sheets (I'll explain these
steps in person). Once you are done, download the dataset as a CSV file.

### Reading in a local file

Once you have downloaded the file, rename it to `my_restaurants.csv`, place it
someone on your computer's Desktop. To read the file in using the computers
in the lab, you will need to run the following command:


{% highlight r %}
mine <- read_csv("C:\\Users\\Public\\Desktop\my_restaurants.csv")
{% endhighlight %}

Notice that I have called it something short but memorable to make it easier
to write code about the dataset. If you are later doing this on MacOS, try
this instead:


{% highlight r %}
mine <- read_csv("~/Desktop/my_restaurants.csv")
{% endhighlight %}

That should work on any Mac. If you have a windows computer with a different
set-up, you may need a slightly different path. I am happy to assist with this
when we start working on the projects.

### Simple plotting, again

Recall that we can create plots with the `qplot` function from the **ggplot2**
package. Specifically, we use something like this:


{% highlight r %}
ggplot(mine, aes(cuisine)) +
  geom_bar()
{% endhighlight %}

To get a bar plot of the cuisine types. Or,


{% highlight r %}
ggplot(mine, aes(year, cost)) +
  geom_point()
{% endhighlight %}

For a scatter plot of how often you visit each year and the average cost.
Construct several plots of the various variables in the dataset. If you have
time, try to include color as well.

*Q: Are there any surprises in the output of these commands?*

### Combining the data

It will be much more interesting if we can combine the data from everyone in
the class. Use the links here to link into the collective Google Sheet and
add your data to the appropriate sheet:

- [Favorite Restaurants](https://docs.google.com/spreadsheets/d/10LFQMcRRBiRXEauX1aUfv3dYhiJ4zS616BwyDnXC3kc/edit?usp=sharing)

Once we are finished with the, you will then download the entire class' data
as a single file. Download it and name the file `class_restaurants.csv`. Load
it into R as a dataset called `class`.

### Plotting, once again

Now, repeat the plots with the class dataset. Compare them to the ones you
had with your own data. Other than the increased size note any interesting
differences.

*Q: As you explore the dataset, are there any interesting patterns or outliers
in the data?*

### Consistency

Depending on how the class goes, we may find that there are inconsistencies in
how the data is formatted from student to student. Of most importance is that
if any value in a variable does not look like a number the entire column will
be considered as a categorical variable. With the time remaining we will try
to adjust this

Next week we will dig deeper in to the specific types of data in R and how the
effect our graphics and analyses.

### New variables (time remaining)

If we have time remaining, we will add additional variables to our dataset
such as the latitude and longitude of the restaurant.

### Assignment

For next class, please just come prepared for the next assessment. Note that
this one will require you to be able to write R code from memory, an important
skill (having to look up every single command stops us from getting in the
flow of doing exploratory work).

Starting next week, we will set up your GitHub accounts and I will assign the
first project.



