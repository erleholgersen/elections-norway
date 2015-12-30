# 2013

data <- read.csv2("valgdata2013.csv", encoding = "UTF-8")
data <- data[data$Parti != "Andre2",]

stemmedata <- aggregate(Stemmer.totalt ~ Parti + Fylkenavn, data, FUN = sum)

names(stemmedata) <- c("Parti", "Fylke", "Stemmer")

write.csv(stemmedata, "d3/2013.csv", row.names = FALSE)


# 2009

data <- read.csv2("valgdata2009.csv", encoding = "UTF-8")
data <- data[data$Parti != "Andre2",]

stemmedata <- aggregate(StemmerTotalt ~ Parti + Fylkenavn, data, FUN = sum)

names(stemmedata) <- c("Parti", "Fylke", "Stemmer")

write.csv(stemmedata[-1,], "d3/2009.csv", row.names = FALSE)



# 2005
data <- read.csv("valgdata2005.csv", encoding = "UTF-8")
data <- data[data$Parti != "Andre2",]

stemmedata <- aggregate(StemmerTotalt ~ Parti + Fylkenavn, data, FUN = sum)

names(stemmedata) <- c("Parti", "Fylke", "Stemmer")

write.csv(stemmedata[-1,], "d3/2005.csv", row.names = FALSE)