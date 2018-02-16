---
title: "Project B: Visualizing Communities"
author: "Taylor Arnold"
output: html_notebook
---

**Due**: 2018-03-08 (Thursday, start of class)

**Starter code**: <a href="https://raw.githubusercontent.com/statsmaths/stat209/master/projects/project-b.Rmd" download="project-b.Rmd" target="_blank">project-b.Rmd</a>

**Data dictionary**: [project-b-data-dictionary](https://statsmaths.github.io/stat209/notes/project-b-data-dictionary)

**Rubric**: [project-b-rubric.csv](https://github.com/statsmaths/stat209/blob/master/projects/project-b-rubric.csv)

**Questions deadline**:  2018-03-05; 5pm (Monday) - If you would like help
with the project, please see/e-mail me before this deadline. After this time
I will only help with technical issues, such as R crashing or GitHub being
down.

The overarching goal of this project is to tell an interesting narrative about
the demographics of a particular metropolitan area in the United States. The
structure of the report is much more open ended compared to the first project.

For this project we will all be working off of the same master dataset. The
data gives demographic information about [census tracts](https://en.wikipedia.org/wiki/Census_tract). You will each, however, be looking at different metropolitan
areas in the United States. We will discuss the metropolitan area assignments
in class on 2018-02-22.

Your task is to write a short essay in the style of a 538 news article.
The essay should describe one or more interesting elements you discovered
while investigating the metropolitan area that you have been assigned. Keep
in mind that you will want to draw on one or more of the following tasks
from exploratory data analysis:

- anomaly detection: identify areas that seem to behave differently than the
rest of the data
- perspective: pick a particular area of interest and compare it to the rest
of the data
- pattern recognition: understand the basic patterns present in your dataset

The final report should contain **exactly three visualizations**. This means
that you should take care to make each visualization as information dense as
possible. Aim to have a final report around 750-1000 words. The word length is
not a hard limit; it is just a guidelines to indicate the expected length
of the report. All of the plots should be integrated into the essay in a
meaningful way rather than all included at the start or end of the essay.

The grade for the assignment depends primarily on the effectiveness of the
graphics in conveying information, the quality of the writing, and execution
of how the writing and visualizations are integrated together.

## Code Examples

You may find it very helpful to make maps of the data from your tract. These
are great for exploratory work, but don't overuse them in the report. To make
a nice map, use the **ggmap** package

```{r}
library(ggmap)
acs_rva <- filter(acs, cbsa == "Richmond, VA")

qmplot(lon, lat, data = acs_rva, geom = "blank")
```

The `qmplot` function replaces the typical `ggplot()` function in the first
line of a graphic. You can add other layers just as before. The code here adds
points to the plot (notice that I set the alpha parameter to make sure the
points do not cover up the rest of the plot).

```{r}
qmplot(lon, lat, data = acs_rva, geom = "blank") +
  geom_point(aes(color = median_rent), alpha = 0.8) +
  scale_color_viridis()
```

You may also find it useful to construct new variables that aggregate the
granular ones I have provided. For example, if you want to find what percentage
of people have a commute of over 45 minutes you can do this:

```{r}
acs$ctime_45_plus <- acs$ctime_45_59 + acs$ctime_60_89 + acs$ctime_90_99
```

The name of the new variable (here, `ctime_45_plus`) is entirely up to you.



