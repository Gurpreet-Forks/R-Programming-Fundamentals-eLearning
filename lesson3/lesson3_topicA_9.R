data("mtcars")

summary(lm(mpg~cyl,data=mtcars))

summary(lm(mpg~as.factor(cyl),data=mtcars))
