
 


install.packages("aplpack")
library(aplpack)

mkt_industry<- c("large cap", "mid cap", "small cap","energe","material", "industry","consumer", "essential consumer","medical","finance","IT","mobile","utility")
mkt_cap <- c(81.36,9.66,8.98,4.02,7.46,10.60,14.51,7.60,5.44,11.88,33.40,2.43,2.67)
rate_April<- c(-0.04,-0.64,-0.65,-1.61,-1.15,-0.97,-1.72,0.46,-0.32,-0.90,1.31,1.0,0.67)
vol_April<-c(0.55,0.72,0.74,1.11,0.91,0.67,0.87,1.03,0.80,0.89,0.99,1.07,0.88)
foreigner<-c(40.11,17.45,11.90,37.60,30.93,19.25,32.03,29.88,13.94,39.83,45.75,44.31,28.80)
volume<- c(31.96,18.13,49.91,1.77,5.78,17.29,15.45,7.56,11.68,16.86,20.46,1.71,1.14)
per<-c(12.81,18.80,18.10,10.95,12.05,29.63,10.06,18.79,35.66,9.47,15.60,11.87,5.44)
pbr<-c(1.09,1.27,1.19,1.03,0.79,1.02,0.83,2.20,3.33,0.69,1.71,1.05,0.44)
roe<-c(8.83,7.03,6.82,9.81,6.77,3.58,8.56,12.28,10.33,7.52,11.38,9.10,8.29)
eps<-c(353.90,266.79,129.93,707.33,520.94,167.23,748.05,588.70,243.57,308.70,428.34,64.88,386.15)
profit_rate<- c(8.7,5.53,6.16,7.43,7.85,4.23,5.47,9.04,9.65,11.76,12.56,7.17,15.41)
com<-c(-288342,-20462,-16784,-7865,-10822,-89375,-40949,-16449,-6368,-39055,-148887,11692,-7511)
num<-c(99,99,303,12,56,71,106,51,76,39,81,3,6)
asset<-c(86.12,7.43,6.46,3.19,4.49,10.17,9.82,1.83,0.62,56.73,8.51,1.32,3.32)
debt_rate<-c(326.75,318.54,266.38,187.92,83.96,297.16,118.93,112.68,66.46,1129.54,45.85,126.73,162.71)
ytd_17<-c(10.61,8.23,1.86,10.70,0,5.57,1.48,0.55,-0.33,9.83,20.18,11.26,2.40)
test <- data.frame(mkt_industry,mkt_cap,ytd_17,rate_April,vol_April,foreigner,volume,per,pbr,roe,eps,profit_rate,com,num,asset,debt_rate)
test

# face.type = 1 : the elements of the faces are painted
faces(test[,-1],face.type = 1, main = "chernoff faces : face.type =1")

# putting labels as face names : labels




faces(test[,-1], face.type = 1, labels =  c("대형주", "중형주", "소형주","에너지","소재", "산업재","경기소비재", "필수소비재","의료","금융","IT","통신서비스","유틸리티"),
      main = "putting labels as face names : labels = ")

# Overlapping Chernoff faces over scatter plot  #

plot(test[,c("ytd_17", "foreigner")],  bty="n", # To make a plot with no box around the plot area 
     main = "Chernoff faces of test")

test_1_faces <- faces(test[,-1], scale = TRUE, plot=FALSE)


plot.faces(test_1_faces,  test[,c("ytd_17")],  test[,c("foreigner")],  width = 3,  height = 7,labels =  c("대형주", "중형주", "소형주","에너지","소재", "산업재","경기소비재", "필수소비재","의료","금융","IT","통신서비스","유틸리티"),
           main = "putting labels as face names : labels = ")







