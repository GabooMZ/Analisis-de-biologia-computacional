library('ggplot2')

setwd("C:/Users/gabri/Desktop/Análisis de biología computacional (Gpo 14)")
p <- ggplot(iris)
p <- p + aes(x=Petal.Length, y = Petal.Width, colour = Species)
summary(p)
p <- p + geom_point()
p

ggplot(iris, aes(x=Petal.Length, y = Petal.Width, colour = Species)) + geom_point()

ggplot(iris, aes(x=Petal.Length, y = Petal.Width, colour = Species)) + geom_point() + geom_smooth()

ggsave("mi_grafico.png")

ggsave("mi_grafico.png",plot = p, width = 10, height = 5)
# ggsave("mi_grafico.pdf", plot = grafico, dpi =600)
# ggsave("mi_grafico.pdf", plot = grafico, dpi =600)

ggplot(iris, aes(x=Petal.Length, y = Petal.Width)) +geom_point() + geom_smooth() + facet_grid(~ Species)

ggplot(iris, aes(x=Petal.Length, y = Petal.Width)) +geom_point() + geom_smooth() + 
  facet_grid(~ Species) + theme_bw()

ggplot(iris, aes(x=Petal.Length, y = Petal.Width, color=Species))+
  geom_point(size = 1) + geom_smooth() + 
  facet_grid(~ Species) + theme_bw() + xlab("Longitud del Petalo") + ylab("Ancho del petalo") + 
  ggtitle("Relacion entre longitud y acnho del petalo para diferentes especies de iris") + 
  scale_color_manual(values = c("red","blue","green"), name = "") + theme(legend.position = "bottom")
