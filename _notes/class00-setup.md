---
title: "Class 00: Installing R"
author: "Taylor Arnold"
output: html_notebook
---





In class, you will be using the lab computers to work with
the R programming language. I strongly suggest that you also
setup R on your own machine for working with the homework and
data reports. R is an open source programming language, meaning
that you can install it for free on nearly any operating system.
The note here guide you through install the core R system, the
RStudio IDE, and relevant R packages.

## Download R

The first step is to download the R programming language. To do
this go to [https://cran.r-project.org/](https://cran.r-project.org/)
and select your platform:

![](../assets/img/cran01.jpeg)

For macOS, just download R-3.4.1 (or whatever is the most recent):

![](../assets/img/cran02.jpeg)

For Windows, first select **base**

![](../assets/img/cran03.jpeg)

And then *Download R 3.4.1*

![](../assets/img/cran04.jpeg)

One you have the .pkg (macOS) or .exe (Windows) file,
install this on your computer according to the default
settings.

## RStudio

The files we just downloaded are the core R language files
doing all the hard work of processing data. Next, we'll
install a helpful GUI frontend that make calling R easier.

Go to [https://www.rstudio.com/](https://www.rstudio.com/).
Click on Products => RStudio.

![](../assets/img/rstudio01.jpeg)

Scroll down to the **DOWNLOAD RSTUDIO DESKTOP** button
and click on it.

![](../assets/img/rstudio02.jpeg)

Scroll down again to the **Installers for Supported Platforms**.
The Windows link gives you an exe:

![](../assets/img/rstudio03.jpeg)

And the macOS link gives a dmg:

![](../assets/img/rstudio04.jpeg)

Now, install R or RStudio as you would any other program. It
should link automatically to the version of R you just
installed.

## Installing R packages

The final step is to download all of the R packages that we will
need for the semester. It is generally easier to do these all at
once rather than as we go along.

Go ahead and launch RStudio. You should see a window that looks like
this, as we saw on the class computers:

![](../assets/img/r-interface-2016.png)

To install the packages required for class, run the following lines
of code in the console. There may be a warning about one or two
packages not being available. Note that this may take 5-10 minutes
to finish; on slower connections or older computers, it may take even
longer. If you run into any problems, please let me know!


{% highlight r %}
pkgs <- c("dplyr", "ggplot2", "stringr", "ggmap", "ggrepel",
          "devtools", "viridis", "plotly", "jsonlite", "lazyeval",
          "knitr", "readr")

install.packages(pkgs,
                 repos = "https://cloud.r-project.org",
                 type = "binary",
                 dependencies = TRUE,
                 quiet = TRUE)
{% endhighlight %}

Now, you will also need install the `smodels` package. I have written
this package for this course, so you need to install it in a slightly
different way.


{% highlight r %}
devtools::install_github("statsmaths/smodels")
{% endhighlight %}

Finally, make the following changes in the RStudio IDE. These
are very important, so don't skip this step:

- In the RStudio menu click on `Tools > Global Options...`
- Look for the first drop-down: `Save the workspace to .RData on exit`
- Change this first drop-down to `Never`
- All of the check-boxes above this dropdown should be unchecked.

And that should be it! You now have the same system running on
your machine that we have in class. If you run into any issues,
please let me know. It is likely that I will need to see your
computer to help, so bring your laptop to class or office hours
and I will help get you setup.


