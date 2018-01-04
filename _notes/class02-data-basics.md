---
title: "Data Basics"
author: "Taylor Arnold"
output: html_notebook
---





### Loading Data

To load a dataset stored as a comma seperated file, we will use the
function `read_csv`. This can load a file locally on disk, or pull
a file remotely from the web. Here is the code for loading the Arbuthnot
dataset into R and storing as a variable called `births`:


{% highlight r %}
births <- read_csv("https://raw.githubusercontent.com/statsmaths/stat_data/gh-pages/arbuthnot.csv")
{% endhighlight %}

Interactively in RStudio, you can see the data by clicking on the
table in the upper right-hand corner. Here, we will look at the first
few rows of data as a table:

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
</tbody>
</table>

This is a relatively well-known dataset collected in the 17th century
to study the secondary sex ratio (ratio of of males to females at birth)
using baptism records.

In this course we will store data in a tabular format.
These tables will have **observations** stored in rows and
**variables** stored in columns. So, each row represents a
particular object in our dataset and each column represents
some feature of the objects.

The observations here correspond to a particular year. Each
variable describes something *about* that year. What exactly
constitutes a row of the data is called a **unit of analysis**.
Keeping in mind what the unit of analysis is will be very
important as we think about how data is being used.

The type of R object that stores such a dataset is called a
**data frame**.

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


