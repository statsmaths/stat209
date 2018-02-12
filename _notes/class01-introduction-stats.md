---
title: "Class 01: Introduction to Statistics"
author: "Taylor Arnold"
output: html_notebook
---



### Course Description

This course broadly covers the entire process of collecting,
cleaning, visualizing, modeling, and presenting datasets. It
has a MATH designation but is not a *mathematics* course.
The focus is on applied statistics and data analysis
rather than a detailed study of symbolic mathematics.

By the end of the semester you will feel confident collecting,
analyzing, and writing about datasets from a variety of fields.
You will be able to use these skills to address data-driven problems
in a wide range of application domains.

### John Tukey

<img src="../assets/img/tukey.jpg" alt="Tukey" style="width: 200px;"/>

- "The best thing about being a statistician is that
you get to play in everyone's backyard."

### About me

I am an *applied statistician*. A sampling of projects and datasets
I have worked on include:

- cell phone telemetry
- emergency room patient flow
- finding holes in specialized medical coverage in rural US
- Canadian court case citations
- Olympic figure skating scoring
- auto insurance risk factors
- 170k documentary photographs from the 1930's
- treatment outcomes for open-angle glaucoma
- detecting radicalization from social media data
- financial warfare

We will talk about many of these projects throughout the semester.

### Hans Rosling

Hans Rosling's 200 Countries, 200 Years, 4 Minutes:

- [https://www.youtube.com/watch?v=jbkSRLYSojo](https://www.youtube.com/watch?v=jbkSRLYSojo)

I have shown this to nearly all of my statistics courses, and while
a bit dated it is still the best representation of what this course
is all about.

### NYTimes

Of course, most of our arguments will be in a written form.
For an example of that, see this NYTimes article *Gun homicides
in New Zealand are about as common as deaths from
falling from a ladder in the United States*:

- [http://nyti.ms/28yRifm](http://nyti.ms/28yRifm)

Notice how statistics is used as evidence in a larger arugment.

### FiveThirtyEight

Or, if you like sports, here is the 538 article *Steroids Probably
Aren't Causing Baseball's Power Surge*:

- [http://53eig.ht/2aKodni](http://53eig.ht/2aKodni)

I'll often give those of you interested in a particular subject
(i.e., sports, economics, medicine) the chance to work with data
that matches your interests.

### Statistics in 209

This course is truly about the holistic process of **doing**
statistics. There will be very little mathematical content. For that,
you'll need the MATH329 (Probability) and MATH330 (Statistics)
sequence.

**So, come into this course with an open mind about
what we will be covering. I believe you will find it interesting,
fun, and incredibly useful.**

### Data Analysis

If we are not doing much mathematics, what will we be doing?
We will be covering the basic elements of data analysis:

![](../assets/img/data_science_all.png)

In order to actually *do* these things, we will work with
the R programming language:

![](../assets/img/RStudio-Logo-Blue-Gray-250.png)

It is freely available for all major operating systems and
is pre-installed on many campus computers.

### Prior projects

To get an idea of the kinds of analysis we'll be working on
here are two projects from other applied statitistics courses
I've taught:

- [Complexity of Shakespeare’s Plays](../assets/project_example_289.html)
- [Fruit/Vegetable Classification](https://statsmaths.github.io/stat395-f17/assets/final_project/dedominicis.html)

I've avoided projects from other 209 courses because we may
re-use some of those datasets. However, the basic structure
of the projects, particularly the first one, is very similar.

# Syllabus

### In-Class Assessments (quizzes)

On most Tuesdays, there will be a short assessment covering
the material from the prior week. Note that this includes both
a conceptual understanding of the topics covered as well as the
ability to apply these concepts to data with code. I will provide
details on the class website with the exact topics on each assessment.

### Data Projects

While the assessments serve to make sure you are following along
with the general concepts, the core aim of the course is to teach
you how to *apply* statistics to real-world questions. To
this end, we will complete several data-oriented projects. These
are the real heart of the course.

These projects consist of short written documents that mix code,
graphics, and prose to provide a comprehensive analysis of a data set.

### Final Grades

The in-class assessments are graded on a strictly pass/fail basis.
The whole of these are converted into a letter grade according to
how many you have passed (see syllabus for the conversion).

Your projects will receive a letter grade according to a rubric that
I will distribute ahead of the due-date. The final grade will be
determined by weighting the assessments and projects as follows:

- **Projects**: 67%
- **Assessments**: 33%

To pass the course, you must also miss no more than four class
meetings. Attendance requires that you arrive on-time, complete
any out of class assignments for the day, and fully engage with
the course material. Failing to fulfill these attendance requirements
may result in a failing grade for the course.

### Course Policies

- **Academic honesty:** Cheating and plagiarism are grave scholarly
offenses and potential grounds
for expulsion; they are also a major barrier to your intellectual development.
You are expected to familiarize yourself with the entirety of the
University of Richmond’s Honor Code. If you are confused or unsure about
appropriate citation protocol or any other aspect of the Honor code,
please consult me before turning in an assignment.
- **Special approval:** If you have special approval forms for extra
time on exams or any other circumstances I should know about, please speak
with me as early as possible so that we can best accommodate your needs.
- **Late work:** You are expected to submit all work on-time. Late reports
will be accepted after the due date with a full letter grade deduction for each
24 hour period it is late (rounded up).
- **Attendance:** You are expected to both attend and participate in most
class meetings. If you must be absent due to illness or other pressing
need, please let me know by email as soon as possible. A habit of arriving
late, failing to participate, or failing to accomplish any out of class assignments
is considered equivalent to an absence.
- **Make-up work:** In instances where students have a valid excuse for
missing a quiz, please arrange to meet with me as soon as possible.
- **Class conduct:** During class I expect you to refrain from checking
email, being on phones, or working on assignments for other classes.
- **Computers:** During programming assignments started in class, I expect you
to use the computers in the lab. This is helpful for several reasons: it
reduces distractions from iMessages and other materials on your laptop;
all of the lab computers are configured using the same software and language
set-up, reducing errors specific to your machine; and, other students and
myself can share the same screen without worrying about modifying something
on your personal machine.
- **Office hours:** If you would like to meet during my office hours,
please just come by. No need to schedule an appointment. If you find me in
my office at other times of the week, I am usually glad to meet then as well.
Finally, I am also happy to make appointments outside of my normal
office hours. These appointments are meant for discussing
longer issues that are not appropriate for regular office hours (i.e., asking
for recommendation letters or discussing an extended absence) or for students
who cannot make my normal office hours. Please note that appointments should
be booked at least 24 hours ahead of time.
- **Email:** I will also answer questions by email (it can, in fact,
be much faster than scheduling an appointment for small issues). During the
week, I aim to respond within 24 hours, with emails sent over the weekend
responded to by Monday morning. If your question involves code, please attach
your current lab or report as that will expedite my answering your question(s).

These address some of the most common questions and concerns that
students have. If anything is unclear, please feel free to contact
me for clarification at any point in the semester.

### Assignment

For the next class, please read the following short comment from the article
"What is Statistics" by Emery N. Brown and Robert E. Kass. The original
article is great but its written for academic statisticians who already
know the field very well. The comments by David Madigan and Andrew Gelman
(Columbia) are addressed to a more generalist audience:

[What is Statistics (Comments)](../assets/pdfs/what-is-statistics-sub.pdf)

We will discuss this on Thursday.
