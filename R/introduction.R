x = 100 + 1

# It is better practice when assining an object
# to use the <- assign operator

x <- 100
y <- 5
x * y

log(x)

# can't create object names with specific ways
# 2x

# The filesystem in R
# finding where you are
# What is your working directory
getwd()

# you can change your working directory
# but don't
# setwd()

# commented lines
# 1 + 1

# list files in the working directory
list.files()

# finding help on functions using '?'
?list.files

# list folders but not recursivley
list.dirs(recursive = FALSE)

#create directories in our working directory
dir.create("data")

# or we can be explict in the filename
# dir.create("C:/Users/U8011054/OneDrive - USQ/Cloudstor/R/GettingStartedInR_210506/data")

# downloading data from the internet
# open help file
?download.file

# download the data using the 'download.file()' function
download.file(url = "https://raw.githubusercontent.com/swcarpentry/files/master/inflammation-01.csv", 
              destfile = "data/inflammation-01.csv")

