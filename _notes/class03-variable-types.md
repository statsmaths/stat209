---
title: "Variable Types"
author: "Taylor Arnold"
output: html_notebook
---





### Variable Types


{% highlight r %}
birds <- read_csv("https://raw.githubusercontent.com/statsmaths/stat_data/gh-pages/birds.csv")
{% endhighlight %}
<table class="table table-striped table-hover table-condensed" style="margin-left: auto; margin-right: auto;">
<thead><tr>
<th style="text-align:left;"> genus </th>
   <th style="text-align:left;"> species </th>
   <th style="text-align:left;"> name </th>
   <th style="text-align:left;"> type </th>
   <th style="text-align:right;"> egg_mass </th>
   <th style="text-align:right;"> male_mass </th>
   <th style="text-align:right;"> mating_system </th>
   <th style="text-align:right;"> display </th>
   <th style="text-align:right;"> resource </th>
   <th style="text-align:right;"> clutch_size </th>
  </tr></thead>
<tbody>
<tr>
<td style="text-align:left;"> Acanthagenys </td>
   <td style="text-align:left;"> rufogularis </td>
   <td style="text-align:left;"> Spiny-cheeked </td>
   <td style="text-align:left;"> Honeyeater </td>
   <td style="text-align:right;"> 5.45 </td>
   <td style="text-align:right;"> 47.1 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 2.20 </td>
  </tr>
<tr>
<td style="text-align:left;"> Acanthisitta </td>
   <td style="text-align:left;"> chloris </td>
   <td style="text-align:left;"> NA </td>
   <td style="text-align:left;"> Rifleman </td>
   <td style="text-align:right;"> 1.34 </td>
   <td style="text-align:right;"> 5.6 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 4.00 </td>
  </tr>
<tr>
<td style="text-align:left;"> Acanthiza </td>
   <td style="text-align:left;"> chrysorrhoa </td>
   <td style="text-align:left;"> Yellow-rumped </td>
   <td style="text-align:left;"> Thornbill </td>
   <td style="text-align:right;"> 1.44 </td>
   <td style="text-align:right;"> 9.4 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 3.50 </td>
  </tr>
<tr>
<td style="text-align:left;"> Acanthiza </td>
   <td style="text-align:left;"> ewingii </td>
   <td style="text-align:left;"> Tasmanian </td>
   <td style="text-align:left;"> Thornbill </td>
   <td style="text-align:right;"> 1.46 </td>
   <td style="text-align:right;"> 7.2 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 3.50 </td>
  </tr>
<tr>
<td style="text-align:left;"> Acanthiza </td>
   <td style="text-align:left;"> lineata </td>
   <td style="text-align:left;"> Striated </td>
   <td style="text-align:left;"> Thornbill </td>
   <td style="text-align:right;"> 1.32 </td>
   <td style="text-align:right;"> 7.6 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 3.00 </td>
  </tr>
<tr>
<td style="text-align:left;"> Acanthiza </td>
   <td style="text-align:left;"> pusilla </td>
   <td style="text-align:left;"> Brown </td>
   <td style="text-align:left;"> Thornbill </td>
   <td style="text-align:right;"> 1.40 </td>
   <td style="text-align:right;"> 7.4 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 3.00 </td>
  </tr>
<tr>
<td style="text-align:left;"> Acanthorhynchus </td>
   <td style="text-align:left;"> superciliosus </td>
   <td style="text-align:left;"> Western </td>
   <td style="text-align:left;"> Spinebill </td>
   <td style="text-align:right;"> 1.73 </td>
   <td style="text-align:right;"> 10.5 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 1.56 </td>
  </tr>
<tr>
<td style="text-align:left;"> Acrocephalus </td>
   <td style="text-align:left;"> arundinaceus </td>
   <td style="text-align:left;"> Great </td>
   <td style="text-align:left;"> Reed-Warbler </td>
   <td style="text-align:right;"> 3.15 </td>
   <td style="text-align:right;"> 32.3 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 4.00 </td>
  </tr>
<tr>
<td style="text-align:left;"> Aegolius </td>
   <td style="text-align:left;"> funereus </td>
   <td style="text-align:left;"> Boreal </td>
   <td style="text-align:left;"> Owl </td>
   <td style="text-align:right;"> 12.40 </td>
   <td style="text-align:right;"> 101.0 </td>
   <td style="text-align:right;"> 2 </td>
   <td style="text-align:right;"> 3 </td>
   <td style="text-align:right;"> 0 </td>
   <td style="text-align:right;"> 5.29 </td>
  </tr>
<tr>
<td style="text-align:left;"> Agelaius </td>
   <td style="text-align:left;"> phoeniceus </td>
   <td style="text-align:left;"> Red-winged </td>
   <td style="text-align:left;"> Blackbird </td>
   <td style="text-align:right;"> 3.95 </td>
   <td style="text-align:right;"> 57.3 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 4 </td>
   <td style="text-align:right;"> 1 </td>
   <td style="text-align:right;"> 3.28 </td>
  </tr>
</tbody>
</table>

- **genus** (chr): taxonomic rank of the bird
- **species** (chr): scientific species name of the bird
- **name** (chr): common name of the bird
- **type** (chr): common name of the type of bird
- **egg_mass** (dbl): average mass of an egg when laid (grams)
- **male_mass** (dbl): average observed mass of an adult male (grams)
- **mating_system** (int): scores of mating system. Intensity of male-male competition increases from 1 to 5.
    - polyandry
    - monogamy (<5% polygyny)
    - mostly monogamy, but occasional polygyny (5–15% polygyny)
    - mostly polygyny (> 15% polygyny)
    - lek or promiscuous
- **display** (int): mating display agility
    - ground displays only, including displays on trees and bushes
    - ground displays, but with occasional jumps/leaps into the air
    - both ground and non-acrobatic flight displays
    - mainly aerial displays, non-acrobatic
    - mainly aerial displays, acrobatic
- **resource** (int): scores of territoriality and between-mate resource sharing
    0. males and females don't share resources and they feed away from their breeding territory
    1. males and females share resources on their territory only during the breeding season
    2. males and females share resources on their territory all year round.
- **clutch_size** (dbl): average number of eggs produced per clutch


### Simple Plots


{% highlight r %}
qplot(male_mass, data = birds)
{% endhighlight %}



{% highlight text %}
## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.
{% endhighlight %}

<img src="../assets/class03-variable-types/unnamed-chunk-4-1.png" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" width="100%" />


{% highlight r %}
qplot(type, data = birds)
{% endhighlight %}

<img src="../assets/class03-variable-types/unnamed-chunk-5-1.png" title="plot of chunk unnamed-chunk-5" alt="plot of chunk unnamed-chunk-5" width="100%" />



### Converting to Characters


### Converting


