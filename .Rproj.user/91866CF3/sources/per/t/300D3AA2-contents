#### library packages ####

library(tidyverse)
library(maps)
library(geoR)
library(mgcv)
library(kableExtra)
library(cowplot)
library(broom)
library(sf)
library(rnaturalearth)
library(rnaturalearthdata)
library(ggspatial)

#### Data process ####
data <- read.csv("SAP/data/River_flows.csv")
data <- data %>% mutate(River = word(Station, 1))
data[,c("Day", "Month", "Year")] <- data$Date %>% str_split_fixed("/", 3)
data$Date <- dmy(data$Date)
data$doy <- yday(data$Date)
data <- data %>% mutate(doy = as.numeric(doy), Year = as.numeric(Year))
leap <- c(1989:2015)[which(leap_year(1989:2015))]
data[data$Year %in% leap & data$doy > 59, "doy"] <- data[data$Year %in% leap & data$doy > 59, "doy"]-1

#save(data, file = "F:/thesis_uofg/files/data.Rdata")
load("F:/thesis_uofg/files/data.Rdata")
#### EDA ####

# map for gauging stations 
position <- data %>% select(ID, Longitude, Latitude,River)
position <- unique(position)
world <- ne_countries(scale = "medium", returnclass = "sf")
UK <- world %>% filter(sov_a3 == "GB1")
ggplot(data = UK) +
  geom_sf(fill = NA) + 
  coord_sf(xlim = c(-7, -0.5), ylim = c(54.5, 59)) +  
  geom_point(data = position, aes(x = Longitude, y = Latitude, group = ID),color = "blue") +
  geom_point(data = position %>% filter(ID %in% c(9005, 21009, 79004, 10002, 96003, 83013,  4001, 12006, 15012, 15013, 82003, 84003,  8009)), 
             aes(x = Longitude, y = Latitude, group = ID), color = "red") +
  geom_text(data = position %>% filter(ID %in% c(9005, 21009, 79004, 10002, 96003, 83013,  4001, 12006, 15012, 15013, 82003, 84003,  8009)), 
            aes(x = Longitude, y = Latitude, 
                label = River, group = ID, 
                vjust = -0.5, hjust = 0.7),size=3) +
  annotation_scale(location = "tr",style = "ticks", pad_y = unit(2, "cm")) +
  annotation_north_arrow(location = "tr", pad_x = unit(0.5, "cm"), style = north_arrow_fancy_orienteering())+
  theme_bw()

# illustration table
data %>% 
  select(ID, Station, Flow, Longitude, Latitude, Catchment.Area, Max.Altitude,River)%>%
  filter(ID %in% c(9005, 21009, 79004, 10002, 96003, 83013,  4001, 12006, 15012, 15013, 82003, 84003,  8009)) %>% 
  group_by(Station, Longitude, Latitude, Catchment.Area, Max.Altitude) %>%
  summarise(Qmean = mean(Flow)) %>%
  kable(col.names = linebreak(c("Station", "Longitude","Latitude","Catchment\narea", "Max\naltitude", "Mean\nflow"), align = "c"),
        caption = '\\label{tab:information} Information for stations Clyde at Hazelbank, Deveron at Muiresk, Earn at Kinkell Bridge and Inver at Little Assynt.',escape = F, 
        booktabs = TRUE, format = "latex", digits = 2) %>%
  kable_styling(font_size = 10, latex_options = "hold_position",position = "center")

# EDA plot
p1 <- data %>% select(Catchment.Area, Flow) %>%
  group_by(Catchment.Area) %>%
  summarise(Mean = mean(Flow)) %>%
  ggplot(aes(x = Catchment.Area, y = Mean)) +
  geom_point() +
  geom_smooth(method='lm', se = F,size = 0.5) +
  xlab(TeX("$Catchment\\;Area\\;(km^2)$")) +
  ylab("Mean flow") + 
  theme_bw()
p2 <- data %>% select(Max.Altitude, Flow) %>%
  group_by(Max.Altitude) %>%
  summarise(Mean = mean(Flow)) %>%
  ggplot(aes(x = Max.Altitude, y = Mean)) +
  geom_point() +
  geom_smooth(method='lm', se = F,size = 0.5) +
  xlab(TeX("$Max\\;Altitude\\;(m)$")) +
  ylab("Mean flow") + 
  theme_bw()
p3 <- data %>% 
  select("ID", "Flow", "Year") %>%
  group_by(Year) %>%
  summarise(MeanFlow = mean(Flow)) %>%
  mutate(Year = as.numeric(Year)) %>%
  ggplot(aes(x=Year,y=MeanFlow))+
  geom_line(size = 0.5)+
  ylab("Mean flow") + 
  theme_bw()
p4 <- data %>% 
  select("ID", "Flow", "doy") %>%
  group_by(doy) %>%
  summarise(MeanFlow = mean(Flow)) %>%
  mutate(Year = as.numeric(doy)) %>%
  ggplot(aes(x=doy,y=MeanFlow))+
  geom_line()+
  ylab("Mean flow") + 
  theme_bw()
p5 <- data %>% select(Longitude, Flow) %>%
  group_by(Longitude) %>%
  summarise(Mean = mean(Flow)) %>%
  ggplot(aes(x = Longitude, y = Mean)) +
  geom_point() +
  xlab("Longitude") +
  ylab("Mean flow") + 
  theme_bw()
p6 <- data %>% select(Latitude, Flow) %>%
  group_by(Latitude) %>%
  summarise(Mean = mean(Flow)) %>%
  ggplot(aes(x = Latitude, y = Mean)) +
  geom_point() +
  xlab(TeX("Latitude")) +
  ylab("Mean flow") + 
  theme_bw()

#plot_grid(p1,p2,p3,p4,p5, p6, ncol=2, labels=paste0("(",letters[1:6],")"), hjust = 0)



#### Model selection ####

# Sample
# x <- unique(data$ID)
# y <- as.data.frame(matrix(NA, ncol = 2, nrow = 65))
# names(y) <- c("ID","index")
# for (i in 1:5){
#   x1 <- sample(x, 13)
#   x <- x[-which(x %in% x1)]
#   x1 <- data.frame(ID = x1, index = i)
#   y[(13*(i-1)+1):(13*i),] <- x1
# }

# data <- data %>% left_join(y, c("ID" = "ID"))

load("F:/thesis_uofg/files/sample.Rdata")
source("code/bam_sample.R")
data <- data %>% left_join(sam, c("ID" = "ID"))

subdata <- data %>% filter(ID %in% c(9005, 21009, 79004, 10002, 96003, 83013,  4001, 12006, 15012, 15013, 82003, 84003,  8009))
result <- bam_sample(subdata)
f <- result[[1]]
fit <- result[[2]][[4]][[4]]
save(f, fit, residUK, file = "F:/thesis_uofg/files/sub.Rdata")

load("files/sub.Rdata")
f%>% 
  kable(caption = '\\label{tab:result} Freedom degree, Log likelihood, AIC, BIC and DER of each fitted model, and test statistics F and D of model4 with model 1, model 2, and model 3 respectively',
        booktabs = TRUE, format = "latex", digits = 2) %>%
  kable_styling(font_size = 10, latex_options = "hold_position") %>%
  pack_rows("Gaussian-identity", 1, 4) %>%
  pack_rows("Gamma-Log", 5, 8) %>%
  pack_rows("Gaussion-Log", 9, 12) %>%
  pack_rows("Log", 13, 16)

#### Model check ####

# QQ plot
qq.gam(fit)

# spatial plot
resid <- residuals(fit)
subdata$resid <-resid 
residUK <- subdata %>% group_by(ID, Longitude,Latitude) %>% summarise(resid = mean(resid))
residUK <- as.geodata(residUK, coords.col=2:3, data.col=4, borders=TRUE)

vari <- variog(residUK)
vari.mc <- variog.mc.env(residUK, obj.variog=vari)
plot(vari, envelope.obj=vari.mc)

# save(f,fit,residUK, file = "F:/thesis_uofg/files/sub.Rdata")

#### Prediction ####
source("code/LOOCV.R")
ACC1 <- list(LOOCV1(1),LOOCV1(2),LOOCV1(3),LOOCV1(4),LOOCV1(5))
ACC2 <- list(LOOCV2(1),LOOCV2(2),LOOCV2(3),LOOCV2(4),LOOCV2(5))

acc(ACC1)
acc(ACC2)

#### Final model ####

fit44 <- bam(log(Flow) ~ Catchment.Area + Max.Altitude +
               s(doy, bs = "bs", m = c(3, 2), k= 6) + s(Year, bs = "bs", m = c(3, 2),k=10) + 
               te(Longitude, Latitude, bs = "cr", k = 49) + 
               ti(doy, Year, bs = "cr") + 
               ti(Longitude, Latitude, doy, d = c(2, 1), bs = "cr") + 
               ti(Longitude, Latitude, Year, d = c(2, 1), bs = "cr"), 
             method = "fREML",
             data = data)
load("F:/thesis_uofg/files/fit.Rdata")
UK <- map_data(map = "world", region = "UK") 

x.grid <- seq(-7, -0.5, 0.05)
y.grid <- seq(55,59, 0.05)
predgrid <- expand.grid(x=x.grid, y=y.grid) 

position <- data %>% select(ID, Longitude, Latitude)
position <- unique(position)
bnd <- position %>% filter(ID %in% c(97002, 96003,95001,94001,81003,78003,21009,10002)) %>% select(Longitude,Latitude)
which.in <- in.out(bnd=as.matrix(bnd), x=as.matrix(predgrid))
predgrid <- predgrid[which.in, ]

names(data)
pre <- data %>% select(ID, Longitude, Latitude, Catchment.Area, Max.Altitude)
pre <- unique(pre)

date <- expand.grid(doy = 1:365,Year = 2016:2030, ID = pre$ID)
pre <- left_join(date, pre, c("ID" = "ID"))

gam_pre <- predict.gam(fit44, pre)

p1 <- gam_pre %>% filter(Year %in% c(2021,2024,2027,2030)) %>% 
  select("ID", "Flow", "Year","season") %>%
  group_by(Year, season) %>%
  summarise(MeanFlow = mean(Flow)) %>%
  spread(season, MeanFlow)

gam_pre <- gam_pre %>% 
  transform(season = cut(doy, 
                        breaks = c(0,59, 151,243,305,365), 
                        labels = c("Winter","Spring","Summer","Autumn","Winter")))


# winter 12 1 2 0-59
# spring 3 4 5  60-151
# summer 6 7 8  152-243
# autumn 9 10 11 244-305


save(p1, file = "F:/thesis_uofg/files/prediction.Rdata")

