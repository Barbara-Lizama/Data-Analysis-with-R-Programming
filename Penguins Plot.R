install.packages("ggplot2")

install.packages("palmerpenguins")

library(ggplot2)
library(palmerpenguins)

data("penguins")

View(penguins)

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))

ggplot(data = penguins) + geom_point(mapping = aes(x=bill_length_mm, y=bill_depth_mm))

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,color=species))

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,shape=species))

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,shape=species,color=species))

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,shape=species,color=species,size=species))

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,alpha=species))

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g),color="purple")

ggplot(data = penguins) + geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g))

ggplot(data = penguins) + geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g))

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,color=species))+
  facet_grid(sex~species)

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,color=species))+
  facet_grid(~species)

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,color=species))+
  facet_grid(~sex)

ggplot(data = penguins) + geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g,linetype=species))

ggplot(data = penguins) + geom_smooth(mapping = aes(x=flipper_length_mm, y=body_mass_g)) +
  geom_jitter(mapping = aes(x=flipper_length_mm, y=body_mass_g))

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,color=species)) + 
  facet_wrap(~species)

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length" )

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species" )

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption = "Data collected by Dr. Kristen Gorman")

ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption = "Data collected by Dr. Kristen Gorman")+
  annotate("text",x=220, y=3500, label="The Gentoos are the largest",color="purple", 
           fontface="bold",size=4.5,angle=25)

p <- ggplot(data = penguins) + geom_point(mapping = aes(x=flipper_length_mm, y=body_mass_g,color=species)) +
  labs(title="Palmer Penguins: Body Mass vs. Flipper Length", subtitle = "Sample of Three Penguin Species",
       caption = "Data collected by Dr. Kristen Gorman")

p+annotate("text",x=220, y=3500, label="The Gentoos are the largest")

ggsave("Three Penguin Species.png")

