---
title: "Introduction to R and GitHub"
author: "Taylor Arnold"
output: html_notebook
---





## R Basics

The notes here establish the most basic aspects of using
R. You will understand the basic components of R studio,
how to create and access variables in R, how to apply simple
functions, how to load R packages, and how to read in a CSV
dataset. Make sure you understand these notes very well for
the next class.

### Rstudio

R studio has four basic panels, as you can see in the following
diagram:

![](../assets/img/intro-rstudio.png)

The editor will not be visible until you create or open a code
script. You can create a new script by clicking on the green plus
button in the upper left hand corner.

The editor is where you write code. This is the only file that
ultimately gets saved on the computer. The console is the brains
of R. This is where code is run by the R engine. You can type
code directly here or, preferably, run it within the editor by
selecting chunks of code and hitting the Run button. The console
is also were you will see textual output. The output section in the
lower right shows plots, which we will study in depth over the next
few weeks. Finally, the upper right box shows all of the variables
and datasets that have been created. Clicking on a dataset opens a
tab in the editor space that lets you look at the raw data.

### Variables

As in other programming languages, you can store values into an
object called a variable. The variable can then be accessed and
manipulated by its name. To assign a variable in R use an arrow
`<-`. Here we will assign the number 95 to the variable called
`happy`:


{% highlight r %}
happy <- 95
{% endhighlight %}

If you run this, you will see the variable `happy` show up in the
environment box. We can then add one to the variable and see the
output


{% highlight r %}
happy + 1
{% endhighlight %}



{% highlight text %}
## [1] 96
{% endhighlight %}

Notice that this **does not** change the variable `happy`. To change
the variable we have to re-assign a new value to happy. So, to make
`happy` equal to 100 we could do this:


{% highlight r %}
happy <- happy + 5
happy
{% endhighlight %}



{% highlight text %}
## [1] 100
{% endhighlight %}
This behavior, that functions do not change variables unless we
redefine the variable using `<-`, is ubiquitous in R.

### Functions

In R, we can apply what are known as functions in order to do things
to the variables and data present in the current environment. For
example, the function `seq_len` takes a single number and create a
sequence of the integers from 1 to that number:


{% highlight r %}
set_len(happy)
{% endhighlight %}



{% highlight text %}
## Error in set_len(happy): could not find function "set_len"
{% endhighlight %}

We can save this output as a variable as well using the arrow
operator:


{% highlight r %}
hundred <- set_len(happy)
{% endhighlight %}



{% highlight text %}
## Error in set_len(happy): could not find function "set_len"
{% endhighlight %}

We will cover more details about R functions in the upcoming classes.

### Packages

In addition to the basic R functions that exist on start-up,
there are thousands of user-contributed packages the implement
various add-ons. Several are already installed on the machines
in class. Instructions for downloaded packages on your own
machine are included in the setup notes.

Once a package is installed, we also need to load it. While
installing the package only needs to be done once, we have to
load it each and every time we restart R. To load the **readr**
package, for instance, we would run the following:


{% highlight r %}
library(readr)
{% endhighlight %}

Once loaded, we can run commands from the readr package. We will
do this in just a moment.

### Loading Data

To load a dataset stored as a comma seperated file, we will use the
function `read_csv`. We will discuss the csv format more in the
next class. For now, here is the code for loading the Arbuthnot
dataset into R and storing as a variable called `births`:


{% highlight r %}
births <- read_csv("https://raw.githubusercontent.com/statsmaths/stat_data/gh-pages/arbuthnot.csv")
{% endhighlight %}



{% highlight text %}
## Parsed with column specification:
## cols(
##   head_of_state = col_character(),
##   year = col_integer(),
##   boys = col_integer(),
##   girls = col_integer(),
##   total = col_integer(),
##   boy_to_girl_ratio = col_double()
## )
{% endhighlight %}

Interactively in RStudio, you can see the data by clicking on the
table in the upper right-hand corner. Here, we will look at the first
few rows of data as a table:


{% highlight r %}
kable(births)
{% endhighlight %}



|head_of_state     | year| boys| girls| total| boy_to_girl_ratio|
|:-----------------|----:|----:|-----:|-----:|-----------------:|
|Charles I         | 1629| 5218|  4683|  9901|             1.114|
|Charles I         | 1630| 4858|  4457|  9315|             1.090|
|Charles I         | 1631| 4422|  4102|  8524|             1.078|
|Charles I         | 1632| 4994|  4590|  9584|             1.088|
|Charles I         | 1633| 5158|  4839|  9997|             1.066|
|Charles I         | 1634| 5035|  4820|  9855|             1.045|
|Charles I         | 1635| 5106|  4928| 10034|             1.036|
|Charles I         | 1636| 4917|  4605|  9522|             1.068|
|Charles I         | 1637| 4703|  4457|  9160|             1.055|
|Charles I         | 1638| 5359|  4952| 10311|             1.082|
|Charles I         | 1639| 5366|  4784| 10150|             1.122|
|Charles I         | 1640| 5518|  5332| 10850|             1.035|
|Charles I         | 1641| 5470|  5200| 10670|             1.052|
|Charles I         | 1642| 5460|  4910| 10370|             1.112|
|Charles I         | 1643| 4793|  4617|  9410|             1.038|
|Charles I         | 1644| 4107|  3997|  8104|             1.028|
|Charles I         | 1645| 4047|  3919|  7966|             1.033|
|Charles I         | 1646| 3768|  3395|  7163|             1.110|
|Charles I         | 1647| 3796|  3536|  7332|             1.074|
|Charles I         | 1648| 3363|  3181|  6544|             1.057|
|Charles I         | 1649| 3079|  2746|  5825|             1.121|
|None              | 1650| 2890|  2722|  5612|             1.062|
|None              | 1651| 3231|  2840|  6071|             1.138|
|None              | 1652| 3220|  2908|  6128|             1.107|
|Oliver Cromwell   | 1653| 3196|  2959|  6155|             1.080|
|Oliver Cromwell   | 1654| 3441|  3179|  6620|             1.082|
|Oliver Cromwell   | 1655| 3655|  3349|  7004|             1.091|
|Oliver Cromwell   | 1656| 3668|  3382|  7050|             1.085|
|Oliver Cromwell   | 1657| 3396|  3289|  6685|             1.033|
|Richard Cromwell  | 1658| 3157|  3013|  6170|             1.048|
|Richard Cromwell  | 1659| 3209|  2781|  5990|             1.154|
|Charles II        | 1660| 3724|  3247|  6971|             1.147|
|Charles II        | 1661| 4748|  4107|  8855|             1.156|
|Charles II        | 1662| 5216|  4803| 10019|             1.086|
|Charles II        | 1663| 5411|  4881| 10292|             1.109|
|Charles II        | 1664| 6041|  5681| 11722|             1.063|
|Charles II        | 1665| 5114|  4858|  9972|             1.053|
|Charles II        | 1666| 4678|  4319|  8997|             1.083|
|Charles II        | 1667| 5616|  5322| 10938|             1.055|
|Charles II        | 1668| 6073|  5560| 11633|             1.092|
|Charles II        | 1669| 6506|  5829| 12335|             1.116|
|Charles II        | 1670| 6278|  5719| 11997|             1.098|
|Charles II        | 1671| 6449|  6061| 12510|             1.064|
|Charles II        | 1672| 6443|  6120| 12563|             1.053|
|Charles II        | 1673| 6073|  5822| 11895|             1.043|
|Charles II        | 1674| 6113|  5738| 11851|             1.065|
|Charles II        | 1675| 6058|  5717| 11775|             1.060|
|Charles II        | 1676| 6552|  5847| 12399|             1.121|
|Charles II        | 1677| 6423|  6203| 12626|             1.035|
|Charles II        | 1678| 6568|  6033| 12601|             1.089|
|Charles II        | 1679| 6247|  6041| 12288|             1.034|
|Charles II        | 1680| 6548|  6299| 12847|             1.040|
|Charles II        | 1681| 6822|  6533| 13355|             1.044|
|Charles II        | 1682| 6909|  6744| 13653|             1.024|
|Charles II        | 1683| 7577|  7158| 14735|             1.059|
|Charles II        | 1684| 7575|  7127| 14702|             1.063|
|James II          | 1685| 7484|  7246| 14730|             1.033|
|James II          | 1686| 7575|  7119| 14694|             1.064|
|James II          | 1687| 7737|  7214| 14951|             1.072|
|James II          | 1688| 7487|  7101| 14588|             1.054|
|Mary II           | 1689| 7604|  7167| 14771|             1.061|
|Mary II           | 1690| 7909|  7302| 15211|             1.083|
|Mary II           | 1691| 7662|  7392| 15054|             1.037|
|Mary II           | 1692| 7602|  7316| 14918|             1.039|
|Mary II           | 1693| 7676|  7483| 15159|             1.026|
|Mary II           | 1694| 6985|  6647| 13632|             1.051|
|William of Orange | 1695| 7263|  6713| 13976|             1.082|
|William of Orange | 1696| 7632|  7229| 14861|             1.056|
|William of Orange | 1697| 8062|  7767| 15829|             1.038|
|William of Orange | 1698| 8426|  7626| 16052|             1.105|
|William of Orange | 1699| 7911|  7452| 15363|             1.062|
|William of Orange | 1700| 7578|  7061| 14639|             1.073|
|William of Orange | 1701| 8102|  7514| 15616|             1.078|
|Anne              | 1702| 8031|  7656| 15687|             1.049|
|Anne              | 1703| 7765|  7683| 15448|             1.011|
|Anne              | 1704| 6113|  5738| 11851|             1.065|
|Anne              | 1705| 8366|  7779| 16145|             1.075|
|Anne              | 1706| 7952|  7417| 15369|             1.072|
|Anne              | 1707| 8379|  7687| 16066|             1.090|
|Anne              | 1708| 8239|  7623| 15862|             1.081|
|Anne              | 1709| 7840|  7380| 15220|             1.062|
|Anne              | 1710| 7640|  7288| 14928|             1.048|

This is a relatively well-known dataset collected in the 17th century
to study the secondary sex ratio (ratio of of males to females at birth)
using baptism records.






