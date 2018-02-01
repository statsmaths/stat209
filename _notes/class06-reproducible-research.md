---
title: "Reproducible Research"
author: "Taylor Arnold"
output: html_notebook
---



### Overview

Today we will cover a new code format that will be used in your data projects,
set up GitHub, and setup GitHub Pages. As usual, I will
try to put as many details as possible on the website. However, there
will likely be details (particularly in setting up GitHub) that are only
covered fully in class.

### Reproducibility

Recall that the final third of the data analysis pipeline consists in
communicating our results to the world. If this step is lacking, the rest of
the statistical process is rendered nearly meaningless. To make the importance
of this point particularly clear, you are each going to build a public-facing
website to house our data analysis reports. We'll start with setting this site
up and then move to details of how to format the reports.

### GitHub

If you do not already have an account, go to the main webpage and create a
free account. Try to pick a professional name as you may find that you want
to make this public at some point:

- [https://github.com/](https://github.com/)

Next, follow this link and accept the invitation:

- [https://classroom.github.com/a/KS89RYkf](https://classroom.github.com/a/KS89RYkf)

Assuming you have a valid GitHub account, this will set up a repository where
all of your projects for this semester should be posted.

You should now see what is called a repository. This is where you will save
all of your projects this semester. Next, click on the Settings tab. Scroll to
the GitHub Pages section. Select "master Branch" under Source. This will make
your repository show up as a website.

**I have been having trouble with this today, so let's just attempt to do this
today but we'll come back to it on Tuesday**

### RMarkdown

Next, let's open RStudio again. Instead of opening an RScript, though, this
time open an RMarkdown file. It will ask you to save the file before
continuing. Name it first.Rmd.

R will start by showing you a template for building an Rmarkdown document.
There are four elements to a markdown file:

- the first few lines are called the YAML header. Edit this to your name,
create a title ("My first markdown document" or something like that), and remove
the date line.
- lines that start with pound signs (`##`) are titles; one pound sign is a
large chapter title, two a section title, three a sub-section, and four a
sub-sub-section. There needs to be blank lines before and after the title and
a single space after the pounds before the title
- plain text, which is where we can type as if we were in a notepad program
- code blocks contained within triple backticks (this is the same character we
saw when dealing with variables that have spaces in them; it is right below
the tilde key on most US keyboards) and then `{r}`.

The idea of an Rmarkdown file is that we can integrate code and text together.
This makes it self-documenting and allows analyses to be reproducible.

You can run the R commands in the code chunks in two different ways. In the
first, you either highlight and click run at the top (as before) or
use the play  button at the start of the chunk. These copy the code into the
console, constructing data in the environment tab and plots in the plot tab.
This is a good way of starting an analysis.

The second way to run an Rmarkdown file is to click the Knit button at the
top. This runs each chunk in order *within a new R session* (so make sure
the code can run on its own) and outputs the entire document as an HTML file.
This is how you will eventually submit each project. Try this now!

*Q: How does the Rmarkdown approach to constructing a report assist in
reproducibility?*

### Activity

Let us now redo the analysis on the class survey using an Rmarkdown
document. Follow these steps:

1. Delete the template code from lines 11-31 (should be the end of the
document).
2. In the first chunk, add lines loading the following packages: **dplyr**,
**readr**, and **ggplot2**.
3. Now add two sections using `##`. Call these **Reading the Data**,
**Plotting the Data**
4. Download the class data, now newly formatted, as a CSV file.
5. In the first section, write two sentences describing the dataset and follow
this with a code chunk that reads in the dataset.
6. In the second section, create three code chunks that each show a different
plot. Before each chunk write a short description of what the plot illustrates
to you. You'll need to actually run the code to see the plots so that you can
answer these questions.

When you are done with this, knit the entire file and look at the output.

### Assignment

For next class, in addition to preparing for the Assessment C, please make
sure to do the following:

- verify that your GitHub page is working
- upload the work from class today to GitHub
- start-up GitHub pages
- bring a digital photo that you want to use for your website







