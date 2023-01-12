######################################################
################# Data Pre-processing ################
######################################################

# Libraries used in this report.
# Install commands
install.packages("dplyr")
install.packages("readr")
install.packages("ggplot2")
install.packages("data.table")
install.packages("forcats")
install.packages("Hmisc")
install.packages("tidyr")
install.packages("psych")
install.packages("datarium")
install.packages("rstatix")
install.packages("emmeans")
install.packages("highcharter")
install.packages("kableExtra")

# Calling the libraries
library(dplyr)
library(readr)
library(ggplot2)
library(data.table)
library(forcats)
library(Hmisc)
library(tidyr)
library(psych)
library(datarium)
library(rstatix)
library(highcharter)
library(emmeans)
library(kableExtra)

#locadind the dataset

vgt <- fread("VGT.csv", header = T, data.table = F, stringsAsFactors = F)
vnq <- fread("VNQ.csv", header = T, data.table = F, stringsAsFactors = F)
vox <- fread("VOX.csv", header = T, data.table = F, stringsAsFactors = F)
xlb <- fread("XLB.csv", header = T, data.table = F, stringsAsFactors = F)
xle <- fread("XLE.csv", header = T, data.table = F, stringsAsFactors = F)
xlf <- fread("XLF.csv", header = T, data.table = F, stringsAsFactors = F)
xlp <- fread("XLP.csv", header = T, data.table = F, stringsAsFactors = F)
xlu <- fread("XLU.csv", header = T, data.table = F, stringsAsFactors = F)
xlv <- fread("XLV.csv", header = T, data.table = F, stringsAsFactors = F)
xly <- fread("XLY.csv", header = T, data.table = F, stringsAsFactors = F)
vfh <- fread("vfh.csv", header = T, data.table = F, stringsAsFactors = F)


mydata <- rbind(vgt, vnq, vox, xlb, xle, xlf, xlp, xlu, xlv, xly, vfh)
head(mydata)

daily_mean <- mydata %>%
  select(AdjClose, ticker) %>%
  group_by(ticker) %>%
  summarise(dailymean = mean(AdjClose))

daily_mean %>%
  kbl() %>%
  kable_classic_2(full_width = F)

daily_mean %>%
  ggplot(aes(x=))

# Yearly averages
v <- c(vgt$AdjClose)
plot(v, type = "o")

a <- c(vnq$AdjClose)
plot(a, type = "o")

b <- c(xlu$AdjClose)
plot(b, type = "o")

f <- c(xlf$AdjClose)
plot(f, type = "o")

head(mydata)

m <- mydata %>%
  select(Date, AdjClose, ticker)
head(m)


m1 <- m %>%
  group_by(ticker)
head(m1)


m2 <- spread(m1, ticker, AdjClose)
m2

m3 <- m2 %>%
  drop_na()
m3

m3
diff(log(m3$vfh))
#######################################################################

install.packages("tidyquant")

library(tidyquant)


tq_get(c("T.TO", "SJR-B.TO"), get = "stock.prices", from = "2020-01-01", to = "2020-11-10",
       period = "monthly")


c1 <- c("vfh", "vgt", "vnq", 'vox', 'xlb', 'xlu', 'xlv', 'xlf', 'xle','xlp', 'xly')
zz<-tq_get(c1, get = "stock.prices", 
           from = "2005-01-02", 
           to = "2021-10-28") %>%
  group_by(symbol) %>%
  tq_transmute(adjusted, mutate_fun = monthlyReturn)

z2 <- spread(zz, symbol, monthly.returns)
z2
head(z2)

install.packages("xlsx")
library(xlsx)

write.csv(z2, "mynewdata.csv")





?getSymbols











