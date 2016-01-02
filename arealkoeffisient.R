folketall <- read.csv2("folketall.csv")

names(folketall) <- c("fylke", "tid", "variabel", "folketall")

ft <- subset(folketall, tid == 2012 & variabel == "Folkemengde" & folketall > 0)

fylker = c()
for(f in as.character(ft$fylke)) {
  fylker = c(fylker, print(strsplit(f, " ")[[1]][2]))
}

fylker[13:14] <- c("Sogn og Fjordane", "Møre og Romsdal")

ft$fylke = fylker

ft2 <- subset(folketall, tid == 2004 & variabel == "Folkemengde" & folketall > 0)

# sortert etter fylkenummer, samme rekkefølge
data = data.frame(ft$fylke, ft$folketall, ft2$folketall)

names(data) <- c("fylke", "ft2012", "ft2004")

areal <- c(4180.68, 4917.94, 454.09, 27397.81, 25192.09, 14910.93, 2225.05, 15296.32, 
           9157.76, 7276.51, 9376.66, 15436.68, 18619.21, 15099.69, 18839.48, 
           22415.02, 38481.48, 25862.99, 48631.09)
data$areal <- areal


write.csv(data, "d3/fylkesdata.csv", row.names = FALSE)

