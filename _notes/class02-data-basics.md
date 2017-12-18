---
title: "Data Basics"
author: "Taylor Arnold"
output: html_notebook
---





### Data Frames

In this course we will store data in a tabular format.
These tables will have **observations** stored in rows and
**variables** stored in columns. So, each row represents a
particular object in our dataset and each column represents
some feature of the objects.

As an example, let's read in the Arbuthnot dataset again:


{% highlight r %}
births <- read_csv("https://raw.githubusercontent.com/statsmaths/stat_data/gh-pages/arbuthnot.csv")
{% endhighlight %}
<table class="table table-striped table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
<thead><tr>
<th style="text-align:left;"> head_of_state </th>
   <th style="text-align:right;"> year </th>
   <th style="text-align:right;"> boys </th>
   <th style="text-align:right;"> girls </th>
   <th style="text-align:right;"> total </th>
   <th style="text-align:right;"> boy_to_girl_ratio </th>
  </tr></thead>
<tbody>
<tr>
<td style="text-align:left;"> Charles I </td>
   <td style="text-align:right;"> 1629 </td>
   <td style="text-align:right;"> 5218 </td>
   <td style="text-align:right;"> 4683 </td>
   <td style="text-align:right;"> 9901 </td>
   <td style="text-align:right;"> 1.114 </td>
  </tr>
<tr>
<td style="text-align:left;"> Charles I </td>
   <td style="text-align:right;"> 1630 </td>
   <td style="text-align:right;"> 4858 </td>
   <td style="text-align:right;"> 4457 </td>
   <td style="text-align:right;"> 9315 </td>
   <td style="text-align:right;"> 1.090 </td>
  </tr>
<tr>
<td style="text-align:left;"> Charles I </td>
   <td style="text-align:right;"> 1631 </td>
   <td style="text-align:right;"> 4422 </td>
   <td style="text-align:right;"> 4102 </td>
   <td style="text-align:right;"> 8524 </td>
   <td style="text-align:right;"> 1.078 </td>
  </tr>
<tr>
<td style="text-align:left;"> Charles I </td>
   <td style="text-align:right;"> 1632 </td>
   <td style="text-align:right;"> 4994 </td>
   <td style="text-align:right;"> 4590 </td>
   <td style="text-align:right;"> 9584 </td>
   <td style="text-align:right;"> 1.088 </td>
  </tr>
<tr>
<td style="text-align:left;"> Charles I </td>
   <td style="text-align:right;"> 1633 </td>
   <td style="text-align:right;"> 5158 </td>
   <td style="text-align:right;"> 4839 </td>
   <td style="text-align:right;"> 9997 </td>
   <td style="text-align:right;"> 1.066 </td>
  </tr>
<tr>
<td style="text-align:left;"> Charles I </td>
   <td style="text-align:right;"> 1634 </td>
   <td style="text-align:right;"> 5035 </td>
   <td style="text-align:right;"> 4820 </td>
   <td style="text-align:right;"> 9855 </td>
   <td style="text-align:right;"> 1.045 </td>
  </tr>
<tr>
<td style="text-align:left;"> Charles I </td>
   <td style="text-align:right;"> 1635 </td>
   <td style="text-align:right;"> 5106 </td>
   <td style="text-align:right;"> 4928 </td>
   <td style="text-align:right;"> 10034 </td>
   <td style="text-align:right;"> 1.036 </td>
  </tr>
<tr>
<td style="text-align:left;"> Charles I </td>
   <td style="text-align:right;"> 1636 </td>
   <td style="text-align:right;"> 4917 </td>
   <td style="text-align:right;"> 4605 </td>
   <td style="text-align:right;"> 9522 </td>
   <td style="text-align:right;"> 1.068 </td>
  </tr>
<tr>
<td style="text-align:left;"> Charles I </td>
   <td style="text-align:right;"> 1637 </td>
   <td style="text-align:right;"> 4703 </td>
   <td style="text-align:right;"> 4457 </td>
   <td style="text-align:right;"> 9160 </td>
   <td style="text-align:right;"> 1.055 </td>
  </tr>
<tr>
<td style="text-align:left;"> Charles I </td>
   <td style="text-align:right;"> 1638 </td>
   <td style="text-align:right;"> 5359 </td>
   <td style="text-align:right;"> 4952 </td>
   <td style="text-align:right;"> 10311 </td>
   <td style="text-align:right;"> 1.082 </td>
  </tr>
</tbody>
</table>

The observations here correspond to a particular year. Each
variable describes something *about* that year. What exactly
constitutes a row of the data is called a **unit of analysis**.
Keeping in mind what the unit of analysis is will be very
important as we think about how data is being used.

The type of R object that stores such a dataset is called a
**data frame**.

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
##  [1] 4683 4457 4102 4590 4839 4820 4928 4605 4457 4952 4784 5332 5200 4910
## [15] 4617 3997 3919 3395 3536 3181 2746 2722 2840 2908 2959 3179 3349 3382
## [29] 3289 3013 2781 3247 4107 4803 4881 5681 4858 4319 5322 5560 5829 5719
## [43] 6061 6120 5822 5738 5717 5847 6203 6033 6041 6299 6533 6744 7158 7127
## [57] 7246 7119 7214 7101 7167 7302 7392 7316 7483 6647 6713 7229 7767 7626
## [71] 7452 7061 7514 7656 7683 5738 7779 7417 7687 7623 7380 7288
{% endhighlight %}

The function `mean` computes the average of a numeric variable.
Here we use this function to compute the average number of female
births in the dataset:


{% highlight r %}
mean(births$girls)
{% endhighlight %}



{% highlight text %}
## [1] 5534.646
{% endhighlight %}

Similarly, you could compute the average number of male births
or total births.

### Comma seperated values

Data frames store tabular data for us within R. We also need a
way to store tabular data as a file. One option would be to store
data as Google sheets or Excel file. While these programs are
great for data input, it is not a good idea to store raw data in
these formats. Instead, we want a minimal **plain text** format.
That is, the file should be readable by any basic text editor.

The plan text data format that we will use is called a
**comma-separated values** or CSV file. In this format, each
column of the data is (as the name suggests) seperated by a
comma. Every observation is stored on its own row. The first
row gives the names of the columns. Here are what the first few
rows of the Arbuthnot dataset look like stored as a CSV file:

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

