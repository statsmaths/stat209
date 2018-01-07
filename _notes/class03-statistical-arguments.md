---
title: "Statistical Evidence"
author: "Taylor Arnold"
output: html_notebook
---



Last class we looked at how we can explore data to uncover
interesting patterns and examples. Today we take this one
step further by investigating how the results of these
exploratory analyses can actually be used to make broader
claims.

## Rhetorical Persuasion

Before we begin, let's briefly refresh ourselves of what
exactly it means to *make an argument*, as obvious as that
may at first sound. Formally, we are talking about the
concept of **Rhetoric**, defined as:

> Rhetoric is the art of discourse, wherein a writer or
> speaker strives to inform, persuade or motivate particular
> audiences in specific situations

Hold on for a second here, because we are going to briefly
dip into some philosophy (and not for the only time this
semester). There is extensive research on the meaning and
content of exactly what constitute Rhetoric; most would
agree, though, that the concept was first formalized by
Aristotle's incredibly influential text *Rhetoric*.

To Aristotle, there are three primary ways of making an
argument:

1. *appeal to character (ethos; ἦθος)*: claims are
believed primarily because we trust the speaker on the
matter and hand. This requires that they (i) have a practical
understanding of the subject, (ii) are a 'virtuous character',
and (iii) they harbor some degree of good will towards their
audience.
2. *appeal to emotion (pathos; πάθος)*: claims are believed
because the audience is brought to a certain emotional state.
3. *appeal to argument (logos; λόγος)*: claims are believed
by the use of some logical statement and statements.

Good written and oral arguments often draw from one or more
of these methods. When I teach, for example, I draw from both
ethos and logos. Data — through visualizations, summary statistics,
and models — is primarily used for appeals to logos. Of course,
they may also factor indirectly to establish appeals to character
or appeals to emotion.

**Describe an example of where you have recently used each of
these methods to make an argument.**

## Thesis Statement

You have certainly heard of a thesis statement, but may struggle
to formally define what it is. A thesis statement:

> offers a concise summary of the main point or claim of the essay,
> research paper

A hypothesis, which is not the same concept, is:

> a supposition or proposed explanation made on the basis of
> limited evidence as a starting point for further investigation

That is, a hypothesis is a fixed explanation of something. A
thesis is a particular rhetorical element that exists within a
document or speech and is intended for a particular audience.
If you are designing an experiment or collecting data, you will
have a hypothesis. When you are writing a paper or giving a
presentation you will have a thesis (and that thesis may help to
confirm or contradict a prior hypothesis).

## Types of Argumentation

Within logos, there are two subtypes of arguments that
have a place in making arguments from data. These are:

- **deductive reasoning**
- **inductive reasoning**

In deductive reasoning we start with general assumptions and
show that certain conclusions logically follow from them. A
classic example is:

> Socrates is a man. All men are mortal. Therefore, Socrates is
> mortal.

If the assumptions of this statement (first two sentences) are
true, the conclusions **must** be true.

Inductive reasoning, in contrast, builds a conclusion by inferring
based on patterns seen in particular examples. For instance:

> I have taught a total of 700 students over the past 5 years. I
> enjoyed teaching all 700 of them. Therefore, I enjoy teaching all
> students.

While the data provides strong evidence for the conclusion, it does
not guarantee its validity even if the assumptions and logic is
infallible.

## Data-Driven Logical Arguments

Deductive reasoning occurs in statistics when some of our
facts (assumptions) are derived from an analysis of a dataset.
Generally this occurs when we are drawing data from a particular
population. For example, say we are looking at election results
from every county in the United States. The following is a
deductive argument:

> A presidential candidate that has more than 270 electoral votes
> wins the election (assumption). Candidate A had 300 elector votes
> in 2020 (assumption derived from data). Therefore, candidate A
> won the election.

Notice that often not **all** facts are derived from data, but
often some of them are. Inductive reasoning usually occurs in
statistics when sampling from a larger population or observing a
random process. For example:

> Only 1 of the 1000 patients injected with the vaccine had serious
> side-effects. Therefore, the vaccine is safe for distribution.

While inductive reasoning is more traditionally associated with
statistics, the deductive case is quite common in both industry
and academia.

## Examples

Okay, enough theory. Let's look at some actual data-drive arguments.
Below are ten articles from the website FiveThirtyEight. I tried to
grab articles that covered a good range of topics (Politics, Economics,
Sports, Media, and Science).

- [Hollywood Studios Barely Promoted Non-White Actors And Films](https://fivethirtyeight.com/features/oscars-diversity-hollywood-ad-campaign/)
- [The Minimum Wage Movement is Learning Tipped Workers Behind](https://fivethirtyeight.com/features/the-minimum-wage-movement-is-leaving-tipped-workers-behind/)
- [What Would Happen If We Just Gave People Money?](http://fivethirtyeight.com/features/universal-basic-income/)
- [What Went From in the Flight Water Crisis in Michigan](https://fivethirtyeight.com/features/what-went-wrong-in-flint-water-crisis-michigan/) (Just read Part I)
- [Shut Up About Harvard](https://fivethirtyeight.com/features/shut-up-about-harvard/)
- [How Trump's Supreme Court Could Overturn Roe v. Wade Without Overturning It](http://fivethirtyeight.com/features/how-trumps-supreme-court-could-overturn-roe-v-wade-without-overturning-it/)
- [Tom Brady Doesn't Need Gronk or Moss or Welker to Win](http://fivethirtyeight.com/features/tom-brady-doesnt-need-gronk-or-moss-or-welker-to-win/)
- [A Plagiarism Scandal Is Unfolding In The Crossword World](http://fivethirtyeight.com/features/a-plagiarism-scandal-is-unfolding-in-the-crossword-world/)
- [The Chris Paul Conundrum](https://fivethirtyeight.com/features/the-chris-paul-conundrum/)
- [Under a New System Clinton Could Have Won the Popular Vote by 5 Points and Still Lost](http://fivethirtyeight.com/features/under-a-new-system-clinton-could-have-won-the-popular-vote-by-5-points-and-still-lost/)

We will work in groups to read one of these (I recommend looking at
a few more outside of class as well). For each article answer these
questions:

1. what types of logic (logos, pathos, ethos; inductive or deductive) are
used in the piece
2. is there an explicit thesis statement in the article? if so, what is it?
if not, what do you think the implicit thesis statement is?
3. how many graphics and tables are included in the article?
4. how are the graphics or tables used in constructing an argument in the article?
5. where in the article do the graphics or tables come into play
6. what is the audience of the article? all college educated Americans?
sports fans? general audiences? Democrats/Republicans?

We'll take some time to look at these and then regroup as a class.

## Hybrid Approach in Statistics

Often, in an analysis of data I have observed a hybrid approach.
Namely, deductive reasoning is used to draw concrete conclusions
from data. These conclusions are then used as part of a larger
inductive reasoning.

For example, assume that you are a statistician working for a large
company and analyzing financial data. Using the data, you may
confirm that the company has increased year-over-year profits by
232% (by deductive reasoning). From this evidence, the company
decided to proceed with an IPO (by inductive reasoning).

Furthermore, these two logical approaches are also blended with
aspects of ethos and pathos. These can occur in non-obvious ways.
For example, I may draw on my own authority as a Ph.D. statistician
to assert that a particular model is appropriate to apply in a given
situation. This model is then used to establish a thesis by inductive
reason that plays on the audience's emotions.

## Assignment

For next class, we will discuss an excerpt from Leo Breiman's
"Statistical Modeling: The Two Cultures". Please just read the
first three sections; you'll find some of the terminology foreign,
but please struggle through to the end. The examples in section
three will help elucidate what Breiman is talking about in the
first section.

- [Statistical Modeling: The Two Cultures](https://projecteuclid.org/download/pdf_1/euclid.ss/1009213726)

We will dive into the concepts in this paper on Thursday.



