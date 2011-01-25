# make a time variable from year, month and day...
ymd2days<-function(years,months,days){
   # measure time as the offset from Jan 1 of the 
   # earliest year

   year0<-min(years)
   years<-years-year0

   # days in month
   dinm<-rep(31,12)
   dinm[c(9,4,6,11)]<-rep(30,4)
   dinm[2]<-28 # do something about this!!
   dinm<-cumsum(dinm) # want the number of days so far
   dinm<-c(0,dinm[1:11]) # offset by 1

   diny<-365 # do something about this too!!

   # leap years: find all leap year points, add 1 to all
   # dates after that point

   # time is then...
   t<-(years*diny)+dinm[months]+days

   return(t)
}
