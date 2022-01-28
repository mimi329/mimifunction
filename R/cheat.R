#'Prints out the code that is the solution for exercises in Q3.1
#'@export
#'@param exercise_n numeric variable
cheat <-function (exercise_n) {
  if(exercise_n == 11) {
    print( 'library(dplyr)
    library(tidyverse)
    library(gganimate)
    library(gifski)
    library(coronavirus)
    #extracting the data
    covid19<-refresh_coronavirus_jhu()
    covid19NL <- covid19[covid19$location=="Netherlands",]
    #preparing the data
    c19NL<-aggregate(value ~ data_type + date, data=covid19NL, FUN = sum)
    c19NL <- c19NL %>% mutate(value = ifelse(data_type=="cases_new", value/10, value))
    #plotting two lines
    plot_C<-ggplot(data=c19NL) +
      geom_line(mapping = aes (x=date, y=value, group=data_type, colour=as.factor(data_type)))+
      theme(legend.title = element_blank())+
      labs(title = "Covid-19 in NL")+
      scale_color_discrete(rm(),labels = c("cases/10", "deaths"))
    #animating the plot
    anim <- plot_C +
      transition_reveal(c19NL$date)
    animate(anim, renderer = gifski_renderer()) ')
  } else if(exercise_n == 6) {
    print ('max_circumference <- aggregate(circumference ~ Tree, data=Orange, max)
    Orange2<-max_circumference
    Orange2$Tree = as.numeric(levels(Orange2$Tree)[as.integer(Orange2$Tree)])
    plot1<-ggplot(data=Orange2, aes(x = Tree, y = circumference)) +
      geom_bar(stat= "identity", )
    plot1 ')
  } else if(exercise_n == 2) {
    print (' dev.off()
    ggplot(mtcars, aes(x = as.factor(cyl), y = hp, fill = as.factor(cyl))) +
      geom_violin() +
      geom_dotplot(binaxis = "y", binwidth = 6, stackdir = "center") +
      labs(y = "Gross horsepower", x = "Number of cylinders") +
      theme(legend.position = "none") ')
  } else if(exercise_n == 4) {
    print('ggplot(data=titanic_train) +
      geom_bar(mapping = aes(x = factor(Sex), fill = Survived)) +
      labs(fill ="How did it go?") +
      scale_fill_brewer(palette = "Pastel2") ')
  } else if(exercise_n == 5) {
    print(' dev.off()
    ggplot(mtcars, aes(x = as.factor(cyl), y = hp, fill = as.factor(cyl))) +
      geom_violin() +
      geom_dotplot(binaxis = "y", binwidth = 6, stackdir = "center") +
      labs(y = "Gross horsepower", x = "Number of cylinders") +
      theme(legend.position = "none") ") ')
  } else {
    print("Sorry, I don't have the solution to this exercise number. Please enter number 2, 4, 5, 6 or 11.")
  }
}
