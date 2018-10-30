#Load up our data
data("mtcars")
str(mtcars)

data("iris")
str(iris)

#Quick look at what factors "are"
class(iris$Species)
typeof(iris$Species)

levels(iris$Species)

#anytime you have a variable that has a set number of categories then should
#convert to factor

#which variables in mtcars could be factors?
str(mtcars)

#plot changes default behaviour if factor
plot(iris$Species)
plot(mtcars$cyl)

