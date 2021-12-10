LOOCV1 <- function(x){
  subdata <- data %>% filter(index != x)
  subdata2 <- data %>% filter(index == x)
  fit <- bam(log(Flow) ~ 
               s(doy, bs = "bs", m = c(3,2), k = 6) + s(Year, bs = "bs", m = c(3,2), k = 6) + te(Longitude, Latitude, bs = "cr", k = 13) +
               ti(doy, Year, bs = "cr", k = 6)+
               ti(Longitude, Latitude, doy, d=c(2,1), bs = "cr", k = 6) +
               ti(Longitude, Latitude, Year, d=c(2,1), bs = "cr", k = 6), 
             method = "fREML",
             data = subdata)
  pred <- predict(fit, subdata2)
  res <- log(subdata2$Flow) - pred
  RMSE <- sqrt(mean(res^2))
  MAE <- mean(abs(res))
  MdAE <- median(abs(res))
  ACC <- c(RMSE, MAE,MdAE)
  return(ACC)
}
LOOCV2 <- function(x){
  subdata <- data %>% filter(index != x)
  subdata2 <- data %>% filter(index == x)
  fit <- bam(log(Flow) ~ Catchment.Area + Max.Altitude +
                 s(doy, bs = "bs", m = c(3,2), k = 6) + s(Year, bs = "bs", m = c(3,2), k = 6) + te(Longitude, Latitude, bs = "cr", k = 13) +
                 ti(doy, Year, bs = "cr", k = 6)+
                 ti(Longitude, Latitude, doy, d=c(2,1), bs = "cr", k = 6) +
                 ti(Longitude, Latitude, Year, d=c(2,1), bs = "cr", k = 6), 
               method = "fREML",
               data = subdata)
  pred <- predict(fit, subdata2)
  res <- log(subdata2$Flow) - pred
  RMSE <- sqrt(mean(res^2))
  MAE <- mean(abs(res))
  MdAE <- median(abs(res))
  ACC <- c(RMSE, MAE,MdAE)
  return(ACC)
}

acc <- function(x){
  RMPE <- numeric()
  MAE <- numeric()
  MdAE <- numeric()
  for (i in 1:5){
    RMPE[i] <-  x[[i]][1]
    MAE[i] <- x[[i]][2]
    MdAE[i] <- x[[i]][3]
  }
  acc <- c(mean(RMPE), mean(MAE),mean(MdAE))
  return(acc)
}

