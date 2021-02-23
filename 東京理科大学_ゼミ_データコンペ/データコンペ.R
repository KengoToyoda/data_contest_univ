mydata <- read.csv("/Users/toyodakengo/送付データ_2020/アンケートデータ/CSV/WEB利用状況_2020.csv")
mydata2 <- read.csv("/Users/toyodakengo/送付データ_2020/アンケートデータ/CSV/メインデータ_2020.csv")

#


#カテゴリ別検索変数名
mydata$data_estate <- mydata$CAT_INFO_01_02_MX
mydata$data_insurance <- mydata$CAT_INFO_02_02_MX
mydata$data_movie <- mydata$CAT_INFO_03_02_MX
mydata$data_job <- mydata$CAT_INFO_04_02_MX
mydata$data_elec_money <- mydata$CAT_INFO_05_02_MX
mydata$data_card_loan <- mydata$CAT_INFO_06_02_MX
mydata$data_fly <- mydata$CAT_INFO_07_02_MX
mydata$data_drink <- mydata$CAT_INFO_08_02_MX
mydata$data_sweet <- mydata$CAT_INFO_09_02_MX
mydata$dmydataata_health_food <- mydata$CAT_INFO_10_02_MX
mydata$data_go_out <- mydata$CAT_INFO_11_02_MX
mydata$data_cosme <- mydata$CAT_INFO_12_02_MX
mydata$data_hair <- mydata$CAT_INFO_13_02_MX
mydata$data_medical <- mydata$CAT_INFO_14_02_MX
mydata$data_car <- mydata$CAT_INFO_15_02_MX
mydata$data_home_divice <- mydata$CAT_INFO_16_02_MX

#カテゴリ別検索ダミー変数わけ
mydata$data_estate <- rep(0)
mydata$data_estate[mydata$CAT_INFO_01_02_MX==1] <- 1
mydata$data_insurance <- rep(0)
mydata$data_insurance[mydata$CAT_INFO_02_02_MX==1] <- 1
mydata$data_movie <- rep(0)
mydata$data_movie[mydata$CAT_INFO_03_02_MX==1] <- 1
mydata$data_job <- rep(0)
mydata$data_job[mydata$CAT_INFO_04_02_MX==1] <- 1
mydata$data_elec_money <- rep(0)
mydata$data_elec_money[mydata$CAT_INFO_05_02_MX==1] <- 1
mydata$data_card_loan <- rep(0)
mydata$data_card_loan[mydata$CAT_INFO_06_02_MX==1] <- 1
mydata$data_fly <- rep(0)
mydata$data_fly[mydata$CAT_INFO_07_02_MX==1] <- 1
mydata$data_drink <- rep(0)
mydata$data_drink[mydata$CAT_INFO_08_02_MX==1] <- 1
mydata$data_sweet <- rep(0)
mydata$data_sweet[mydata$CAT_INFO_09_02_MX==1] <- 1
mydata$data_health_food <- rep(0)
mydata$data_health_food[mydata$CAT_INFO_10_02_MX==1] <- 1
mydata$data_go_out <- rep(0)
mydata$data_go_out[mydata$CAT_INFO_11_02_MX==1] <- 1
mydata$data_cosme <- rep(0)
mydata$data_cosme[mydata$CAT_INFO_12_02_MX==1] <- 1
mydata$data_hair <- rep(0)
mydata$data_hair[mydata$CAT_INFO_13_02_MX==1] <- 1
mydata$data_medical <- rep(0)
mydata$data_medical[mydata$CAT_INFO_14_02_MX==1] <- 1
mydata$data_car <- rep(0)
mydata$data_car[mydata$CAT_INFO_15_02_MX==1] <- 1
mydata$data_home_divice　<- rep(0)
mydata$data_home_divice[mydata$CAT_INFO_16_02_MX==1] <- 1


#各SNS利用頻度変数名
mydata$Twitter_frequence<-mydata$NET_Freq_01_MX
mydata$Facebook_frequence<-mydata$NET_Freq_02_MX
mydata$Instagram_frequence<-mydata$NET_Freq_03_MX
mydata$LINE_frequence<-mydata$NET_Freq_05_MX
mydata$YouTube_frequence<-mydata$NET_Freq_07_MX


#各SNS利用頻度週4-5回以上のダミー変数
mydata$Twitter_frequence<-rep(0)
mydata$Twitter_frequence[mydata$NET_Freq_01_MX==1]<-1
mydata$Twitter_frequence[mydata$NET_Freq_01_MX==2]<-2
mydata$Facebook_frequence<-rep(0)
mydata$Facebook_frequence[mydata$NET_Freq_02_MX==1]<-1
mydata$Facebook_frequence[mydata$NET_Freq_02_MX==2]<-2
mydata$Instagram_frequence<-rep(0)
mydata$Instagram_frequence[mydata$NET_Freq_03_MX==1]<-1
mydata$Instagram_frequence[mydata$NET_Freq_03_MX==2]<-2
mydata$LINE_frequence<-rep(0)
mydata$LINE_frequence[mydata$NET_Freq_05_MX==1]<-1
mydata$LINE_frequence[mydata$NET_Freq_05_MX==2]<-2
mydata$YouTube_frequence<-rep(0)
mydata$YouTube_frequence[mydata$NET_Freq_07_MX==1]<-1
mydata$YouTube_frequence[mydata$NET_Freq_07_MX==2]<-2

#不動産×SNS
table(mydata$Twitter_frequence, mydata$data_estate)
table(mydata$Facebook_frequence, mydata$data_estate)
table(mydata$Instagram_frequence, mydata$data_estate)
table(mydata$LINE_frequence, mydata$data_estate)
table(mydata$YouTube_frequence, mydata$data_estate)
#保険×SNS
table(mydata$Twitter_frequence, mydata$data_insurance)
table(mydata$Facebook_frequence, mydata$data_insurance)
table(mydata$Instagram_frequence, mydata$data_insurance)
table(mydata$LINE_frequence, mydata$data_insurance)
table(mydata$YouTube_frequence, mydata$data_insurance)
#有料動画サービス×SNS
table(mydata$Twitter_frequence, mydata$data_movie)
table(mydata$Facebook_frequence, mydata$data_movie)
table(mydata$Instagram_frequence, mydata$data_movie)
table(mydata$LINE_frequence,mydata$data_movie)
table(mydata$YouTube_frequence, mydata$data_movie)
#求人情報×SNS
table(mydata$Twitter_frequence, mydata$data_job)
table(mydata$Facebook_frequence, mydata$data_job)
table(mydata$Instagram_frequence, mydata$data_job)
table(mydata$LINE_frequence, mydata$data_insurance)
table(mydata$YouTube_frequence, mydata$data_job)
#電子マネー×SNS
table(mydata$Twitter_frequence, mydata$data_elec_money )
table(mydata$Facebook_frequence,mydata$data_elec_money )
table(mydata$Instagram_frequence, mydata$data_elec_money )
table(mydata$LINE_frequence, mydata$data_elec_money )
table(mydata$YouTube_frequence, mydata$data_elec_money )
#カードローン×SNS
table(mydata$Twitter_frequence,mydata$data_card_loan)
table(mydata$Facebook_frequence, mydata$data_card_loan)
table(mydata$Instagram_frequence, mydata$data_card_loan)
table(mydata$LINE_frequence, mydata$data_card_loan)
table(mydata$YouTube_frequence, mydata$data_card_loan)
#航空会社×SNS
table(mydata$Twitter_frequence, mydata$data_fly )
table(mydata$Facebook_frequence, mydata$data_fly )
table(mydata$Instagram_frequence, mydata$data_fly )
table(mydata$LINE_frequence, mydata$data_fly )
table(mydata$YouTube_frequence, mydata$data_fly )
#飲料×SNS
table(mydata$Twitter_frequence, mydata$data_drink)
table(mydata$Facebook_frequence, mydata$data_drink)
table(mydata$Instagram_frequence,mydata$data_drink)
table(mydata$LINE_frequence, mydata$data_drink)
table(mydata$YouTube_frequence, mydata$data_drink)
#お菓子×SNS
table(mydata$Twitter_frequence, mydata$data_sweet)
table(mydata$Facebook_frequence, mydata$data_sweet)
table(mydata$Instagram_frequence, mydata$data_sweet)
table(mydata$LINE_frequence, mydata$data_sweet)
table(mydata$YouTube_frequence, mydata$data_sweet)
#健康食品×SNS
table(mydata$Twitter_frequence, mydata$data_health_food)
table(mydata$Facebook_frequence, mydata$data_health_food)
table(mydata$Instagram_frequence, mydata$data_health_food)
table(mydata$LINE_frequence, mydata$data_health_food)
table(mydata$YouTube_frequence, mydata$data_health_food)
#外食チェーン店×SNS
table(mydata$Twitter_frequence, mydata$data_go_out)
table(mydata$Facebook_frequence, mydata$data_go_out)
table(mydata$Instagram_frequence, mydata$data_go_out)
table(mydata$LINE_frequence, mydata$data_go_out)
table(mydata$YouTube_frequence, mydata$data_go_out)
#化粧品×SNS
table(mydata$Twitter_frequence, mydata$data_cosme )
table(mydata$Facebook_frequence, mydata$data_cosme )
table(mydata$Instagram_frequence, mydata$data_cosme )
table(mydata$LINE_frequence, mydata$data_cosme )
table(mydata$YouTube_frequence, mydata$data_cosme )
#ヘアケア×SNS
table(mydata$Twitter_frequence, mydata$data_hair)
table(mydata$Facebook_frequence, mydata$data_hair)
table(mydata$Instagram_frequence, mydata$data_hair)
table(mydata$LINE_frequence, mydata$data_hair)
table(mydata$YouTube_frequence, mydata$data_hair)
#医療品×SNS
table(mydata$Twitter_frequence, mydata$data_medical )
table(mydata$Facebook_frequence, mydata$data_medical )
table(mydata$Instagram_frequence, mydata$data_medical )
table(mydata$LINE_frequence, mydata$data_medical )
table(mydata$YouTube_frequence, mydata$data_medical )
#自動車オプション×SNS
table(mydata$Twitter_frequence, mydata$data_car)
table(mydata$Facebook_frequence, mydata$data_car)
table(mydata$Instagram_frequence, mydata$data_car)
table(mydata$LINE_frequence, mydata$data_car)
table(mydata$YouTube_frequence, mydata$data_car)
#家電用品×SNS
table(mydata$Twitter_frequence, mydata$data_home_divice)
table(mydata$Facebook_frequence, mydata$data_home_divice)
table(mydata$Instagram_frequence, mydata$data_home_divice)
table(mydata$LINE_frequence, mydata$data_home_divice)
table(mydata$YouTube_frequence, mydata$data_home_divice)


#回帰分析
install.packages("mlogit")
library(mlogit)

#不動産
#logit_estate <- mlogit.data(mydata, shape="wide", choice="data_estate")
#result_estate <- mlogit(data_estate~0|Twitter_frequence+Facebook_frequence+Instagram_frequence+LINE_frequence+YouTube_frequence|0, logit_estate)
#summary(result_estate)
result_estate2 <- glm(data_estate~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence+, data=mydata, family=binomial(link="logit"))
summary(result_estate2)
#保険
result_insurance2 <- glm(data_insurance~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_insurance2)
#有料動画配信
result_movie2 <- glm(data_movie~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_movie2)
 #求人情報
result_job2 <- glm(data_job~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_job2)
 #電子マネー
result_elec_money2 <- glm(data_elec_money~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_elec_money2)
 #カードローン
result_card_loan2 <- glm(data_card_loan~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_card_loan2)
 #航空会社
result_fly2 <- glm(data_fly~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_fly2)
 #飲料
result_drink2 <- glm(data_drink~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_drink2)
#お菓子
result_sweet2 <- glm(data_sweet~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_sweet2)
 #健康食品
result_health_food2 <- glm(data_health_food~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_health_food2)
 #外食チェーン
result_go_out2 <- glm(data_go_out~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_go_out2)
 #化粧品
result_cosme2 <- glm(data_cosme~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_cosme2)
 #ヘアケア
result_hair2 <- glm(data_hair~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_hair2)
 #医療品
result_medical2 <- glm(data_medical~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_medical2)
 #自動車オプション
result_car2 <- glm(data_car~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_car2)
 #家電用品
result_home_divice2 <- glm(data_home_divice~mydata$Twitter_frequence+mydata$Facebook_frequence+mydata$Instagram_frequence+mydata$LINE_frequence, data=mydata, family=binomial(link="logit"))
summary(result_home_divice2)




