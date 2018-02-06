---
title: "Markdown and Project A"
author: "Taylor Arnold"
output: html_notebook
---



### Overview

Today we will finish talking about GitHub, RMarkdown, and the first project.

### GitHub (part 2)

You should now all having working GitHub repositories for your work. You can
reach the page through this link (you'll have to sign into your GitHub
account):

- [https://classroom.github.com/a/KS89RYkf](https://classroom.github.com/a/KS89RYkf)

Now, take the photo you brought to class. Put it in the `img` directory on the
GitHub repository (I recommend giving it a short name with no spaces).

Next, click on the file `index.html` in the repository. Then click on the
pencil button on the right hand side to the right of the Raw/Blame/History
buttons. You can now edit the file. Change my name on line 16 to your name.
Then, on line 17, change the link `figure.jpg` to the name of your figure.
Scroll down and click "Commit changes".

If you followed along with the instructions for today, you should be able to
see the website at this link with your username filled in:

- [https://urstats.github.io/stat209-s18-YOURUSERNAME/](https://urstats.github.io/stat209-s18-YOURUSERNAME)

But now, your name and photo will appear. If you put the `first.html` file on
the site correctly, you will also be able to click on the first link and see
it appear.

### Reproducible Data

One element of our current pipeline prohibits our analysis from being
completely reproducible. While someone that finds the repository would have
our code and analysis together, they cannot actually run the script without
our data. Even if they had the data, they would need to figure out how to
download it and change the path the to data to the correct link.

To fix this, verify that you have uploaded the class dataset to your GitHub
repository. Then, we need to re-access the `first.Rmd` file. This is
trickier than it should be because the GitHub assumes that you want **all** of
the files downloaded. That's okay though, at least for now. Click on the green
Clone or Download button on the repository page and select Download ZIP.
Unzip the file and you'll see the `first.Rmd` file there which you should be
able to double click on.

Once you have the markdown file re-opened, scroll down to where you loaded the
dataset into R. Modify this line to read it in from your website


{% highlight r %}
class <- read_csv("https://raw.githubusercontent.com/URstats/stat209-s18-USERNAME/master/DATANAME.csv")
{% endhighlight %}

Verify that this produces the data you were expecting.

### Extending RMarkdown

I have expanded on only a few elements of the RMarkdown format. Several others
will be useful in preparing your data projects.

Notice that the first chunk of code includes the option `include=FALSE`. This
makes it so that, while the code runs when knit, the code and any output is
not included in the text. Other options include:

- `echo=FALSE`, echo refers to whether the code should be shown; this turns it
off for a particular chunk but unlike `include=FALSE` plots and other output
are still shown
- `message=FALSE` to suppress any messages; note that messages are still shown
with `include=FALSE`, so you'll probably want this in the first chunk as well
- `warning=FALSE` to suppress any warnings; similar to messages, these are
included even when `include=FALSE`

Experiment with setting this options and note the differences in the output.

You can also use special markings to make words in bold (put them between
double `*` symbols) or italics (put them between single `*` symbols). Try this
will two things in the report. For a complete reference see the RMarkdown
cheatsheet:

- [RMarkdown Cheatsheet](https://www.rstudio.com/wp-content/uploads/2015/02/rmarkdown-cheatsheet.pdf)
- [RMarkdown: HTML Documents](http://rmarkdown.rstudio.com/html_document_format.html)

These are great references for all of the possible things we can do with
RMarkdown.

Finally, re-knit the RMarkdown file and re-upload both the HTML and Rmd file.

**Note: It is essential that you do this correctly and give the exact correct
name of the file.** Some of your have not been doing the assignments that I
give at the end of class. I will start verifying that you have done these and,
as explained in the syllabus, will consider this equivalent to an absence.

### Project A

Details for the first project are now available on the website. The project is
due at the start of class on Tuesday, February 20th. Note that the
instructions are spread across three documents: a webpage with a the basic
outline, an RMarkdown file to be used as a template, and a rubric with a
detailed breakdown of the expected elements.

Please do not wait until the last minute to work on this project and also
please make sure to triple check that you are following the instructions as
specified.





