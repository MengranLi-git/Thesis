bam_sample <- function(data){
  #### Gaussian ####
  fit11 <- bam(Flow ~ Catchment.Area + Max.Altitude + 
                 doy + Year + Longitude + Latitude, 
               method = "fREML",
               data = data)

  fit12 <- bam(Flow ~ Catchment.Area + Max.Altitude + 
                 s(doy, bs = "bs", m = c(3,2), k = 6) + s(Year, bs = "bs", m = c(3,2), k = 6) + te(Longitude, Latitude, bs = "cr", k = 6), 
               method = "fREML",
               data = data)

  fit13 <- bam(Flow ~ Catchment.Area + Max.Altitude +
                 s(doy, bs = "bs", m = c(3,2), k = 6) + s(Year, bs = "bs", m = c(3,2), k = 6) + te(Longitude, Latitude, bs = "cr", k = 6) +
                 ti(doy, Year, bs = "cr", k = 6), 
               method = "fREML",
               data = data)
  
  fit14 <- bam(Flow ~ Catchment.Area + Max.Altitude +
                 s(doy, bs = "bs", m = c(3,2), k = 6) + s(Year, bs = "bs", m = c(3,2), k = 6) + te(Longitude, Latitude, bs = "cr", k = 6) +
                 ti(doy, Year, bs = "cr", k = 6)+
                 ti(Longitude, Latitude, doy, d=c(2,1),bs = "cr", k = 6) +
                 ti(Longitude, Latitude, Year, d=c(2,1), bs = "cr", k = 6), 
               method = "fREML",
               data = data)

  #### Gamma log ####
  
  fit21 <- bam(Flow ~ Catchment.Area + Max.Altitude +
                 doy + Year + Longitude + Latitude,  
               family = Gamma(link = "log"),
               method = "fREML",
               data = data)
  
  fit22 <- bam(Flow ~ Catchment.Area + Max.Altitude +
                 s(doy, bs = "bs", m = c(3,2), k = 6) + s(Year, bs = "bs", m = c(3,2), k = 6) + te(Longitude, Latitude, bs = "cr", k = 6),
               family = Gamma(link = "log"),
               method = "fREML",
               data = data)
  
  fit23 <- bam(Flow ~ Catchment.Area + Max.Altitude +
                 s(doy, bs = "bs", m = c(3,2), k = 6) + s(Year, bs = "bs", m = c(3,2), k = 6) + te(Longitude, Latitude, bs = "cr", k = 6) +
                 ti(doy, Year, bs = "cr", k = 6), 
               family = Gamma(link = "log"),
               method = "fREML",
               data = data)
  
  fit24 <- bam(Flow ~ Catchment.Area + Max.Altitude +
                 s(doy, bs = "bs", m = c(3,2), k = 6) + s(Year, bs = "bs", m = c(3,2), k = 6) + te(Longitude, Latitude, bs = "cr", k = 6) +
                 ti(doy, Year, bs = "cr", k = 6)+
                 ti(Longitude, Latitude, doy, d=c(2,1), bs = "cr", k = 6) +
                 ti(Longitude, Latitude, Year, d=c(2,1), bs = "cr", k = 6), 
               family = Gamma(link = "log"),
               method = "fREML",
               data = data)
  #### link log ####
  
  fit31 <- bam(Flow ~ Catchment.Area + Max.Altitude +
                 doy + Year + Longitude + Latitude,
               family = gaussian(link = "log"),method = "fREML",
               data = data)
  
  fit32 <- bam(Flow ~ Catchment.Area + Max.Altitude +
                 s(doy, bs = "bs", m = c(3,2), k = 6) + s(Year, bs = "bs", m = c(3,2), k = 6) + te(Longitude, Latitude, bs = "cr", k = 6) ,
               family = gaussian(link = "log"),method = "fREML",
               data = data)
  
  fit33 <- bam(Flow ~ Catchment.Area + Max.Altitude +
                 s(doy, bs = "bs", m = c(3,2), k = 6) + s(Year, bs = "bs", m = c(3,2), k = 6) + te(Longitude, Latitude, bs = "cr", k = 6) +
                 ti(doy, Year, bs = "cr", k = 6), 
               family = gaussian(link = "log"),method = "fREML",
               data = data)
  
  fit34 <- bam(Flow ~ Catchment.Area + Max.Altitude +
                 s(doy, bs = "bs", m = c(3,2), k = 6) + s(Year, bs = "bs", m = c(3,2), k = 6) + te(Longitude, Latitude, bs = "cr", k = 6) +
                 ti(doy, Year, bs = "cr", k = 6)+
                 ti(Longitude, Latitude, doy, d=c(2,1), bs = "cr", k = 6) +
                 ti(Longitude, Latitude, Year, d=c(2,1), bs = "cr", k = 6), 
               family = gaussian(link = "log"),method = "fREML",
               data = data)
  
  #### log-transformation ####
  
  fit41 <- bam(log(Flow) ~ Catchment.Area + Max.Altitude +
                 doy + Year + Longitude + Latitude,
               method = "fREML",
               data = data)
  
  fit42 <- bam(log(Flow) ~ Catchment.Area + Max.Altitude +
                 s(doy, bs = "bs", m = c(3,2), k = 6) + s(Year, bs = "bs", m = c(3,2), k = 6) + te(Longitude, Latitude, bs = "cr", k = 6) , 
               method = "fREML",
               data = data)
  
  fit43 <- bam(log(Flow) ~ Catchment.Area + Max.Altitude +
                 s(doy, bs = "bs", m = c(3,2), k = 6) + s(Year, bs = "bs", m = c(3,2), k = 6) + te(Longitude, Latitude, bs = "cr", k = 6) +
                 ti(doy, Year, bs = "cr", k = 6),
               method = "fREML",
               data = data)
  
  fit44 <- bam(log(Flow) ~ Catchment.Area + Max.Altitude +
                 s(doy, bs = "bs", m = c(3,2), k = 6) + s(Year, bs = "bs", m = c(3,2), k = 6) + te(Longitude, Latitude, bs = "cr", k = 6) +
                 ti(doy, Year, bs = "cr", k = 6)+
                 ti(Longitude, Latitude, doy, d=c(2,1), bs = "cr", k = 6) +
                 ti(Longitude, Latitude, Year, d=c(2,1), bs = "cr", k = 6), 
               method = "fREML",
               data = data)
  
  f <- list()
  for(j in 1:4){
    f[[j]] <- glance(get(paste0("fit",j,1)))
    for (i in 2:4){
      f[[j]] <- rbind(f[[j]], glance(get(paste0("fit",j,i))))
    }
  }
  
  g <- matrix(NA, ncol = 4, nrow = 4)
  for(j in 1:4){
    for (i in 1:4){
      g[i,j] <- summary(get(paste0("fit",j,i)))$dev.expl
    }
  }

  g <- c(g)
  
  f <- data.table::rbindlist(f)
  
  f <- f[,1:4]
  f <- f %>% add_column(.before = "df", distribution = rep(paste0("model",1:4),4))
  f <- f %>% add_column(.after = "BIC", DER = paste0(round(g*100,2),"\\%"))
  
  k <- matrix(NA, ncol = 4, nrow = 4)
  for(j in 1:4){
    h <- get(paste0("fit",j,1))
    for (i in 2:4){
      k[i-1,j] <- anova(h, get(paste0("fit",j,i)), test = "F")[2,5]
    }
  }
  k <- c(k)
  k <- round(k,2)
  k[is.na(k)] <- " "
  
  f <- f %>% add_column(F.stat = k)
  
  k2 <- matrix(NA, ncol = 4, nrow = 4)
  for(j in 1:4){
    h <- get(paste0("fit",j,1))
    for (i in 2:4){
      k2[i-1,j] <- anova(h, get(paste0("fit",j,i)), test = "LRT")[2,4]
    }
  }
  k2 <- c(k2)
  k2 <- round(k2,0)
  k2[is.na(k2)] <- " "
  
  fit_list <- list(list(),list(),list(),list())
  for(j in 1:4){
    for(i in 1:4){
      fit_list[[j]][[i]] <- get(paste0("fit",j,i))
    }
  }
  
  f <- f %>% add_column(D = k2)
  
  return(list(f,fit_list))
}
