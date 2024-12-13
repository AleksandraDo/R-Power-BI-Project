df<- read.csv("https://public.tableau.com/app/sample-data/HollywoodsMostProfitableStories.csv")
#Take a look at the data: 



View(df)
#Load library: 



install.packages("tidyverse") 
#Import library 


library(tidyverse)
# Check data types: 



str(df)
#Summary Statistics: 

summary(df)




#scatterplot 

ggplot(df, aes(x=Lead.Studio, y=Rotten.Tomatoes..)) + geom_point()+ scale_y_continuous(labels = scales::comma)+coord_cartesian(ylim = c(0, 110))+theme(axis.text.x = element_text(angle = 90))​



#bar chart 
ggplot(df, aes(x=Year)) + geom_bar()

#Export clean data 

write.csv(df, "clean_df.csv") 


