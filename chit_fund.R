library(readxl)
myfile<-read_excel("C:/Users/lonovo/Downloads/Exercise data.xlsx")

getwd()
myfile
attach(myfile)#attach function recognizes the columns 0f file directly when called, file name need not be mentioned before column name#

Total_contribution<-25*2000#contribution of every bidder for 25 months 


#annualized return of a person who bids in specific month is assumed as annual_return(no of specific month)#


for (i in 1:25){
  
   overall_return=`Net amount recd by Bid winner`+sum(`Amount returned to everyone in the group`)-Total_contribution
   annual_return[i]=overall_return[i]*12/25
     return_percentage[i]=overall_return[i]/50000*100
  result<-sprintf('return_percentage of person who bids on month(%d)=%f',i,return_percentage[i])
  print(result)
}

cat('Annualized  Re person whoturn of the person who bids in the last month =',annual_return[25])
cat('Annualized  Return of the bids in the first month =',annual_return[1])
  
  
  
  