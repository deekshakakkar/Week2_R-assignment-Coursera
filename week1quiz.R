table(is.na(z$Ozone))
Error in table(is.na(z$Ozone)) : object 'z' not found
> table(is.na($Ozone))
Error: unexpected '$' in "table(is.na($"
> table(is.na(Ozone))
Error in table(is.na(Ozone)) : object 'Ozone' not found
> table(is.na(data$Ozone))

FALSE  TRUE 
116    37 
> mean(data$Ozone)
[1] NA
> mean(data$Ozone)
[1] NA
> mean(ozone)
Error in mean(ozone) : object 'ozone' not found
> mean[,1]
Error in mean[, 1] : object of type 'closure' is not subsettable
> 
  > Ozone<-data[,1]
> mean(Ozone)
[1] NA
> View(data)
> View(data)
> mean(Ozone, na.rm=TRUE)
[1] 42.12931
> x.sub<-subset(Ozone>31 and Temp>90)
Error: unexpected symbol in "x.sub<-subset(Ozone>31 and"
> Temp<-data[,4]
> x.sub<-subset(Ozone>31 and Temp>90)
Error: unexpected symbol in "x.sub<-subset(Ozone>31 and"
> sub<-subset(data, Ozone > 31 & Temp > 90)
> View(sub)
> Solar.R<-data[,2]
> mean(sub,Solar.R)
[1] NA
Warning message:
  In mean.default(sub, Solar.R) :
  argument is not numeric or logical: returning NA
> mean(sub(data,Solar.R))
Error in sub(data, Solar.R) : argument "x" is missing, with no default
> mean(Solar.R)
[1] NA
> mean(sub ,solar.r)
[1] NA
Warning message:
  In mean.default(sub, solar.r) :
  argument is not numeric or logical: returning NA
> mean(solar.r , na.rm = TRUE)
Error in mean(solar.r, na.rm = TRUE) : object 'solar.r' not found
> mean(Solar.r , na.rm = TRUE)
Error in mean(Solar.r, na.rm = TRUE) : object 'Solar.r' not found
> mean(Solar.R , na.rm = TRUE)
[1] 185.9315
> View(sub)
> solar.r1<-sub[,2]
> mean(solar.r1)
[1] 212.8
> sub2<subset(data,Month=6)
Error: object 'sub2' not found
> month<-data[,5]
> sub2<-subset(data, month = 6)
> View(sub2)
> sub2<-subset(data, month==6)
> View(sub2)
> temp1<-sub2[,4]
> mean(temp1)
[1] 79.1
> sub3<-subset(data, month==5)
> ozone1<-sub3[,1]
> max(ozone1, na.rm=TRUE)
[1] 115