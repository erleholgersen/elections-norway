data <- read.csv2("valgdata2013.csv", encoding = "UTF-8")
data <- data[data$Parti != "Andre2",]

stemmedata <- aggregate(Stemmer.totalt ~ Parti + Fylkenavn, data, FUN = sum)

names(stemmedata) <- c("Parti", "Fylke", "Stemmer")

write.csv(stemmedata, "d3/2013.csv", row.names = FALSE)