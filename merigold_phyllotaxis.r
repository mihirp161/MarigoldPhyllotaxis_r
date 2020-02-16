#Load ggplot2
library(ggplot2)

# Set the values of angle and points
golden_angle <- 13*pi/180 #actual golden angle forumla is Golden Angle= pi * (3 - sqrt(5))
points <- 2000

#create the formula
t <- (1:points) * golden_angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# create the  flower
ggplot(df, aes(x*t, y*t))+
    geom_point(size= 80, alpha= 0.1, shape= 1, color= "indianred4")+ 
    theme(legend.position= "none",
      panel.background = element_rect(fill= "white"),
      panel.grid= element_blank(),
      axis.ticks= element_blank(),
      axis.title= element_blank(),
      axis.text= element_blank())+
    ggsave("Phyllotaxis.png", width= 4, height= 4, units= "in")
