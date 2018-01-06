# Title: "Variable Types"
# Name:

##############################################################################
# 01. Read in the diamonds dataset, which gives metadata for a set
# of 1000 diamonds

diamonds <- read_csv("https://statsmaths.github.io/stat_data/diamonds_small.csv")

# The variable names are:
#
#   price   - price in US dollars (\$326-\$18,823)
#   carat   - weight of the diamond (0.2-5.01)
#   cut     - quality of the cut (Fair, Good, Very Good, Premium, Ideal)
#   color   - diamond colour, from J (worst) to D (best)
#   clarity - a measurement of how clear the diamond is (I1 (worst),
#             SI1, SI2, VS1, VS2, VVS1, VVS2, IF (best))
#   x       - length in mm (0-10.74)
#   y       - width in mm (0-58.9)
#   z       - depth in mm (0-31.8)
#   depth   - total depth percentage = z / mean(x, y) = 2 * z / (x + y)
#   table   - width of top of diamond relative to widest point

##############################################################################
# 02. Determine the data types for each of the variables.



##############################################################################
# 03. Draw a bar plot of the clarity variable. Which clarity is most common?



##############################################################################
# 04. Draw a bar plot of the carat variable cut into 5 groups. Which group is
# the most common?


