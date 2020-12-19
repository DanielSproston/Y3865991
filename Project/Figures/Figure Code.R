
#Please run RMD script if possible beforehand so all datasets for plots are available


#Graph showing location of sample sites
ggplot(Fungusdata,aes(x = Longitude, y = Latitude, color = HedgeLocation, shape = Field)) +
  geom_point(size = 3) +
  scale_color_manual(values=c("light blue", 'blue', 'dark blue', "dark red", 
                              'black', 'red', 'light green', 'green', 
                              'dark green', 'orange', 'yellow', "brown")) +
  theme(axis.line.x = element_line(color = "black", size = 1),
        axis.line.y = element_line(color = "black", size = 1),
        axis.ticks = element_line(size = 1, colour = "black")) +
  theme(panel.background = element_rect(fill = "white",colour = "black",
                                        size = 1, linetype = "solid")) +
  theme(text = element_text(size = 12), axis.text.y = element_text(size = 12),
        axis.text.x = element_text(size = 12), legend.title = element_text(size = 15),
        legend.text = element_text(size = 10), plot.title = element_text(size = 18),
        axis.title.x = element_text(size = 15), axis.title.y = element_text(size = 15)) +
  labs(subtitle="Locations of Hedgerow sample sites", 
       title="Locations", 
       caption = "Source:[Holden2019-ok]",
       color = "Hedgerow Site",
       shape = "Field") 


#Pie chart showing proportion of counts by phylum
pie <- ggplot(Fungusdata_no_na, aes(x = "", y = Count, fill = Fungusdata_no_na$Phylum)) + 
  geom_bar(width = 1, stat = "identity") +
  #geom_text(aes(y = cumsum(Count) - 1*Count, label = Count), color = "black") +
 # scale_fill_manual(values=c("blue", 'red', 'green', "yellow", 
  #                           'black', 'cyan', 'white', 'brown', 
   #                          'dark green')) +
  theme(plot.title = element_text(hjust=0.5), 
        axis.line.x = element_blank(),
        axis.line.y = element_blank(),
        axis.ticks = element_blank(),
        axis.text=element_text(size=0, color = "white", margin = margin(t = 100)),
        axis.title=element_text(color = "black", size=20),
        panel.background = element_rect(fill = "white",colour = "white",
                                        size = 0, linetype = "solid"),
        legend.title = element_text(size = 15),
        legend.text = element_text(size = 10)) +
  labs(subtitle="Proportion of each Phylum in total counts", 
       y="", 
       x="", 
       title="Phylum proportion", 
       caption = "Source:[Holden2019-ok]",
       fill = "Phylum") 

pie + coord_polar(theta = "y", start=0) 


#Variety of phylum in each field
ggplot(Fungusdata_no_na, aes(x = Fungusdata_no_na$Field, y = Fungusdata_no_na$Count, fill = Fungusdata_no_na$Phylum)) +
  geom_bar(stat = "identity", position = position_stack(reverse = TRUE)) +
  ylim(0, 125000) + scale_y_continuous(expand = c(0,0)) +
  geom_text(aes(x=1, y=125000, label="")) +
  theme(axis.line.x = element_line(color = "black", size = 1),
        axis.line.y = element_line(color = "black", size = 1),
        axis.ticks = element_line(size = 1, colour = "black"),
        panel.background = element_rect(fill = "white",colour = "white",
                                        size = 1, linetype = "solid"),
        text = element_text(size = 12), 
        axis.text.y = element_text(size = 12),
        axis.text.x = element_text(size = 12), 
        legend.title = element_text(size = 15),
        legend.text = element_text(size = 10), 
        plot.title = element_text(size = 18),
        axis.title.x = element_text(size = 15), 
        axis.title.y = element_text(size = 15)) +
  labs(subtitle="Phylum proportion per Field", 
       x="Field", 
       y="Count", 
       title="Phylum proportion", 
       caption = "Source:[Holden2019-ok]",
       fill = "Phylum") 


#Phylum variety by sample extraction location, with field annotations
ggplot(Fungusdata_no_na, aes(x = Fungusdata_no_na$HedgeLocation, y = Fungusdata_no_na$Count, fill = Fungusdata_no_na$Phylum)) +
  geom_bar(stat = "identity", position = position_stack(reverse = TRUE)) +
  ylim(0, 50000) + scale_y_continuous(expand = c(0,0)) +
  geom_text(aes(x=1, y=50000, label="")) +
  theme(axis.line.x = element_line(color = "black", size = 1),
        axis.line.y = element_line(color = "black", size = 1),
        axis.ticks = element_line(size = 1, colour = "black"),
        panel.background = element_rect(fill = "white",colour = "white",
                                        size = 1, linetype = "solid"),
        text = element_text(size = 12), 
        axis.text.y = element_text(size = 12),
        axis.text.x = element_text(size = 7), 
        legend.title = element_text(size = 15),
        legend.text = element_text(size = 10), 
        plot.title = element_text(size = 18),
        axis.title.x = element_text(size = 15), 
        axis.title.y = element_text(size = 15)) +
  geom_vline(xintercept=3.5, linetype="dashed", 
             color = "black", size=0.7) +
  geom_vline(xintercept=6.5, linetype="dashed", 
             color = "black", size=0.7) +
  geom_vline(xintercept=9.5, linetype="dashed", 
             color = "black", size=0.7) +
  annotate("text", x = 2, y = 71000, label = "BSSE") +
  annotate("text", x = 5, y = 71000, label = "BSSW") +
  annotate("text", x = 8.6, y = 71000, label = "Copse") +
  annotate("text", x = 11.9, y = 71000, label = "Hill") +
  labs(subtitle="Phylum by hedge locoation (fields annotated)", 
       x="Hedge Locations", 
       y="Count", 
       title="Phylum proportion", 
       caption = "Source:[Holden2019-ok]",
       fill = "Phylum") 

#boxplot showing simpson test by field
boxplot(simpson_by_field)



