---
title: "Reproducible Research"
author: "Taylor Arnold"
output: html_notebook
---



### Overview

Today we will cover a new code format that will be used in your data projects,
set up GitHub, and setup GitHub Pages. As usual, I will
try to put as many details on possible on the website. Note however that there
will likely be details (particularly in setting up GitHub) that are only
covered fully in class.

### Reproducibility

Recall that the final third of the data analysis pipeline consists in
communicating our results to the world. If this step is lacking, the rest of
the statistical process is rendered nearly meaningless. To make this point
particularly clear, you are each going to build a public-facing website to
house our data analysis reports. We'll start with setting this site up and
then move to details of how to format the reports.

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
your repository show up as a website. It can sometimes take a while (upwards
of 30 minutes or more) for this first push to work, so that is why we are
starting here. Eventually your website will show up at:

- [https://urstats.github.io/stat209-s18-YOURUSERNAME/](https://urstats.github.io/stat209-s18-YOURUSERNAME)

With your particular GitHub username filled in. In case there is a delay in
getting these set-up, eventually the site will look similar to this one:

- [https://statsmaths.github.io/stat209-projects/](https://statsmaths.github.io/stat209-projects/)

Next, click on the file `index.html` in the repository. Then click on the
pencil button on the right hand side to the right of the Raw/Blame/History
buttons. You can now edit the file. Change my name on line 16 to your name.
Scroll down and click "Commit changes".

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
- code blocks contained within triple backticks (this is the same key we saw
when dealing with variables that have spaces in them; it is right below the
tilde key on most US keyboards) and then `{r}`.

The idea of an Rmarkdown file is that we can integrate code and text together.
This makes it self-documenting and allows analyses to be reproducible.

You can run the R commands in the code chunks in two different ways. In the
first, you either either highlight and click run at the top (as before) or
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
4. In the first section, write two sentences describing the dataset and follow
this with a code chunk that reads in the dataset.
5. In the second section, create three code chunks that each show a different
plot. Before each chunk write a short description of what the plot illustrates
to you. You'll need to actually run the code to see the plots so that you can
answer these questions.

When you are done with this, knit the entire file and look at the output.

**Note:** Timing permitting, notice that the first chunk of code includes the
option `include=FALSE`. This makes it so that, while the code runs when knit,
the code and any output is not included in the text. Other options include
`echo=FALSE`, where output is show but not the source code and `message=FALSE`
to suppress any messages. Experiment with setting this options and note the
differences in the output.

### Upload to GitHub

As a final step, we will upload the files you just created to GitHub. Go to
the main page of your repository. Drag and drop **both** `first.Rmd` and
`first.html` into the repository. This should load them into GitHub. Scroll to
the bottom and click "Commit Changes". Once finished, these two files should
show up on your website. You should even be able to click on the second link
and have the markdown-generated website pop up.

### Assignment

For next class, find a photo of your self, convert to a JPEG file, and name it
`figure.jpg`. Go to your GitHub repository and click on the `img` directory.
Drag and drop the `figure.jpg` image into the directory. You should now have
this file show up on your class website (it may take a few minutes and require
you to manually refresh the page).

Finally, look at the first project assignment. I will answer further questions
and offer more exposition about this in our next class meeting.


