# Set plot images to a nice size
options(repr.plot.width = 4, repr.plot.height = 4)
#Load ggplot2
library(ggplot2)

# Set the values of angle and points
angle <- 13*pi/180
points <- 2000

#create the formula
t <- (1:points)*angle
x <- sin(t)
y <- cos(t)
df <- data.frame(t, x, y)

# create the  flower
flower_plot <- ggplot(df, aes(x*t, y*t))
flower_plot + geom_point(size=80, alpha=0.1, shape = 1, color= "indianred4")+ 
              theme(legend.position="none",
                panel.background = element_rect(fill="white"),
                panel.grid=element_blank(),
                axis.ticks=element_blank(),
                axis.title=element_blank(),
                axis.text=element_blank())+
              ggsave("Phyllotaxis.png",width = 4, height = 4, units = "in")
