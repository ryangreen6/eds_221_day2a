


### testing out different data types

dogs <- c("teddy", "khora", "waffle", "banjo")

typeof(dogs)
class(dogs)

weights <- c(50, 55, 25, 35)

typeof(weights)
class(weights)

dog_age <- c(5L, 6L, 1L, 7L)

typeof(dog_age)
class(dog_age)

is.numeric(dog_age)

dog_info <- c("teddy", 50, 5L)

typeof(dog_info)
class(dog_info)
is.character(dog_info)

dog_food <- c(teddy = "purina",
              khora = "alpo",
              waffles = "fancy feast",
              banjo = "blue diamond")

### these square brackets can be used to extract a single value from a vector, in this case the second value

dog_food[2]
dog_food["khora"]

#####


cars <- c("red", "orange", "white", "blue", "silver", "black")

cars[5]
cars[2:4]    ### get a range of values with a colon between two values

i <- 6       ### now we can call certain values by assigning them to a variable

cars[i]

i <- seq(1:3)  ### and a sequence to get multiple values

cars[i]
 
cars[3] <- "Burritos"

cars


## now playing with matrices. putting sequences in matrices. *cleared global environment

fish_size <- matrix(c(0.8, 1.2, 0.4, 0.9), ncol=2, nrow=2, byrow=FALSE)
fish_size

typeof(fish_size)
class(fish_size)

#

dog_walk <- matrix(c("teddy", 5, "khora", 10), ncol=2, nrow=2, byrow=FALSE)
dog_walk

typeof(dog_walk)
class(dog_walk)

#

whale_travel <- matrix(data=c(31.8, 1348, 46.9, 1587), ncol=2, nrow=2, byrow=FALSE)
whale_travel

typeof(whale_travel)
class(whale_travel)

whale_travel[1,2]    ## here we can have it find a certain value in a matrix. in this case, first row, second column [1,2]

whale_travel[2,]     ## we can get everything in the second column with this 

whale_travel[2]      ## Omit the comma for just the second value in the matrix

### you can also reassign values from a matrix, like this:

whale_travel[1] <- "whale"
whale_travel

## now you can see the first value in the matrix is now "whale"

#

## now making a list with multiple data types. This can store multiple data types without changing their type, as you saw in line 23.
## idk why we're calling it urchins.

urchins <- list("blue", c(1,2,3), c("a cat", "a dog"), 5L)

## if we want to pull a value from a list, we need to use double brackets, as below. otherwise it will deliver the value's position in the list too.

urchins[[1]]

## new list example.. 

tacos <- list(topping=c("onion", "cilantro", "guacamole"), fillings=c("beans", "meat", "veggies"))

tacos[[2]]

## we can also use the $ to pull info from a list, as below. same function as the double brackets [[]]

tacos$topping

## what if you want only one of the toppings in the list?

tacos$topping[2]

#

## now moving on to data frames -- 

fruit <- data.frame(type=c("apple", "banana", "peach"),
           mass=c(130, 195, 250))
fruit
class(fruit)

## accessing elements in a data frame works a lot like it does for matrices
## here we get the value in the third row, first column

fruit[3,1]

## now we can overwrite it

fruit[2,1] <- "pineapple"

fruit[2,1]

## now that value is pineapple yum

## now let's say we want to see only the mass of a pineapple

fruit[fruit$type == "pineapple",]$mass

## you have to add the comma after "pineapple" to tell R that it is looking for a row. 




















