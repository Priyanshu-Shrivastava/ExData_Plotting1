data<- read.table(file.choose(),stringsAsFactors = FALSE,header = TRUE, sep= ";")
data$Date<- as.Date(data$Date,"%d/%m/%Y") 
d<- which(data$Date == "2007-02-01"| data$Date == "2007-02-02")
udata<- data[d,]
dateTime<-strptime(p,"%Y-%m-%d %H:%M:%S")
plot(dateTime,udata$Global_active_power, type = "l", ylab ="Global Active Power (Kilowatts)", xlab="" )
dev.copy(png, file="plot2.png", width=480, height= 480, units="px")
dev.off()