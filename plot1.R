data<- read.table(file.choose(),stringsAsFactors = FALSE,header = TRUE, sep= ";")
data$Date<- as.Date(data$Date,"%d/%m/%Y") 
d<- which(data$Date == "2007-02-01"| data$Date == "2007-02-02")
udata<- data[d,]
hist(as.numeric(udata$Global_active_power),xlab="Global Active Power (Kilowatts)",main="Global Active Power",col="red")
dev.copy(png,file="plot1.png", width= 480, height= 480, units="px")
dev.off()