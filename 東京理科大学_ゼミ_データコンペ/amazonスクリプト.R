mydata <- read.csv("/Users/toyodakengo/送付データ_2020/アンケートデータ/CSV/WEB利用状況_2020.csv")
mydata2 <- read.csv("/Users/toyodakengo/送付データ_2020/アンケートデータ/CSV/メインデータ_2020.csv")

nri_web <- read.csv("/Users/toyodakengo/送付データ_2020/アンケートデータ/CSV/WEB利用状況_2020.csv")
nri_tv <- read.csv("/Users/toyodakengo/送付データ_2020/アンケートデータ/CSV/テレビ番組別視聴状況_2020.csv")
nri_main <- read.csv("/Users/toyodakengo/送付データ_2020/アンケートデータ/CSV/メインデータ_2020.csv")
nri_comic <- read.csv("/Users/toyodakengo/送付データ_2020/アンケートデータ/CSV/雑誌閲読状況_2020.csv")

webandtv <- merge(nri_web,nri_tv,by="SampleID",all=TRUE)
main_and_tv <- merge(nri_main,nri_tv,by="SampleID",all=TRUE)
all <- merge(main_and_tv,nri_web,by="SampleID",all=TRUE)

#各サイト利用者データ
amazon_user = all[all$NET_Freq_15_MX <= 2 ,]
rakuten_user = all[all$NET_Freq_16_MX <= 2 ,]
yahoo_user = all[all$NET_Freq_17_MX <= 2 ,]

#男女比
table(amazon_user$SEX_CD)
table(rakuten_user$SEX_CD)
table(yahoo_user$SEX_CD)
#年齢
hist(amazon_user$AGE)
hist(rakuten_user$AGE)
hist(yahoo_user$AGE)
#未既婚
table(amazon_user$MARRIAGE)
table(rakuten_user$MARRIAGE)
table(yahoo_user$MARRIAGE)
#職業
hist(amazon_user$JOB_CD)
hist(rakuten_user$JOB_CD)
hist(yahoo_user$JOB_CD)
table(amazon_user$JOB_CD)
#世帯収入
hist(amazon_user$INCOM_SA)
hist(rakuten_user$INCOM_SA)
hist(yahoo_user$INCOM_SA)
#消費価値観
table(amazon_user$SEN_01_MA,amazon_user$SEN_02_MA)
hist(rakuten_user$SEN_01_MA)
hist(yahoo_user$SEN_01_MA)

amazon_cons <- rep(0)
amazon_cons[amazon_user$SEN_01_MA==1] <- 1
amazon_cons[amazon_user$SEN_02_MA==1] <- 2
amazon_cons[amazon_user$SEN_03_MA==1] <- 3
amazon_cons[amazon_user$SEN_04_MA==1] <- 4
amazon_cons[amazon_user$SEN_05_MA==1] <- 5
amazon_cons[amazon_user$SEN_06_MA==1] <- 6
amazon_cons[amazon_user$SEN_07_MA==1] <- 7
amazon_cons[amazon_user$SEN_08_MA==1] <- 8
amazon_cons[amazon_user$SEN_09_MA==1] <- 9
amazon_cons[amazon_user$SEN_10_MA==1] <- 10
amazon_cons[amazon_user$SEN_11_MA==1] <- 11
amazon_cons[amazon_user$SEN_12_MA==1] <- 12
amazon_cons[amazon_user$SEN_13_MA==1] <- 13
amazon_cons[amazon_user$SEN_14_MA==1] <- 14
amazon_cons[amazon_user$SEN_15_MA==1] <- 15
amazon_cons[amazon_user$SEN_16_MA==1] <- 16
amazon_cons[amazon_user$SEN_17_MA==1] <- 17
amazon_cons[amazon_user$SEN_18_MA==1] <- 18
amazon_cons[amazon_user$SEN_19_MA==1] <- 19
amazon_cons[amazon_user$SEN_20_MA==1] <- 20
amazon_cons[amazon_user$SEN_21_MA==1] <- 21
amazon_cons[amazon_user$SEN_22_MA==1] <- 22
amazon_cons[amazon_user$SEN_23_MA==1] <- 23
amazon_cons[amazon_user$SEN_24_MA==1] <- 24
amazon_cons[amazon_user$SEN_25_MA==1] <- 25
amazon_cons[amazon_user$SEN_26_MA==1] <- 26
amazon_cons[amazon_user$SEN_27_MA==1] <- 27
amazon_cons[amazon_user$SEN_28_MA==1] <- 28
amazon_cons[amazon_user$SEN_29_MA==1] <- 29
amazon_cons[amazon_user$SEN_30_MA==1] <- 30
amazon_cons[amazon_user$SEN_31_MA==1] <- 31
amazon_cons[amazon_user$SEN_32_MA==1] <- 32
amazon_cons[amazon_user$SEN_33_MA==1] <- 33


rakuten_cons <- rep(0)
rakuten_cons[rakuten_user$SEN_01_MA==1] <- 1
rakuten_cons[rakuten_user$SEN_02_MA==1] <- 2
rakuten_cons[rakuten_user$SEN_03_MA==1] <- 3
rakuten_cons[rakuten_user$SEN_04_MA==1] <- 4
rakuten_cons[rakuten_user$SEN_05_MA==1] <- 5
rakuten_cons[rakuten_user$SEN_06_MA==1] <- 6
rakuten_cons[rakuten_user$SEN_07_MA==1] <- 7
rakuten_cons[rakuten_user$SEN_08_MA==1] <- 8
rakuten_cons[rakuten_user$SEN_09_MA==1] <- 9
rakuten_cons[rakuten_user$SEN_10_MA==1] <- 10
rakuten_cons[rakuten_user$SEN_11_MA==1] <- 11
rakuten_cons[rakuten_user$SEN_12_MA==1] <- 12
rakuten_cons[rakuten_user$SEN_13_MA==1] <- 13
rakuten_cons[rakuten_user$SEN_14_MA==1] <- 14
rakuten_cons[rakuten_user$SEN_15_MA==1] <- 15
rakuten_cons[rakuten_user$SEN_16_MA==1] <- 16
rakuten_cons[rakuten_user$SEN_17_MA==1] <- 17
rakuten_cons[rakuten_user$SEN_18_MA==1] <- 18
rakuten_cons[rakuten_user$SEN_19_MA==1] <- 19
rakuten_cons[rakuten_user$SEN_20_MA==1] <- 20
rakuten_cons[rakuten_user$SEN_21_MA==1] <- 21
rakuten_cons[rakuten_user$SEN_22_MA==1] <- 22
rakuten_cons[rakuten_user$SEN_23_MA==1] <- 23
rakuten_cons[rakuten_user$SEN_24_MA==1] <- 24
rakuten_cons[rakuten_user$SEN_25_MA==1] <- 25
rakuten_cons[rakuten_user$SEN_26_MA==1] <- 26
rakuten_cons[rakuten_user$SEN_27_MA==1] <- 27
rakuten_cons[rakuten_user$SEN_28_MA==1] <- 28
rakuten_cons[rakuten_user$SEN_29_MA==1] <- 29
rakuten_cons[rakuten_user$SEN_30_MA==1] <- 30
rakuten_cons[rakuten_user$SEN_31_MA==1] <- 31
rakuten_cons[rakuten_user$SEN_32_MA==1] <- 32
rakuten_cons[rakuten_user$SEN_33_MA==1] <- 33


yahoo_cons <- rep(0)
yahoo_cons[yahoo_user$SEN_01_MA==1] <- 1
yahoo_cons[yahoo_user$SEN_02_MA==1] <- 2
yahoo_cons[yahoo_user$SEN_03_MA==1] <- 3
yahoo_cons[yahoo_user$SEN_04_MA==1] <- 4
yahoo_cons[yahoo_user$SEN_05_MA==1] <- 5
yahoo_cons[yahoo_user$SEN_06_MA==1] <- 6
yahoo_cons[yahoo_user$SEN_07_MA==1] <- 7
yahoo_cons[yahoo_user$SEN_08_MA==1] <- 8
yahoo_cons[yahoo_user$SEN_09_MA==1] <- 9
yahoo_cons[yahoo_user$SEN_10_MA==1] <- 10
yahoo_cons[yahoo_user$SEN_11_MA==1] <- 11
yahoo_cons[yahoo_user$SEN_12_MA==1] <- 12
yahoo_cons[yahoo_user$SEN_13_MA==1] <- 13
yahoo_cons[yahoo_user$SEN_14_MA==1] <- 14
yahoo_cons[yahoo_user$SEN_15_MA==1] <- 15
yahoo_cons[yahoo_user$SEN_16_MA==1] <- 16
yahoo_cons[yahoo_user$SEN_17_MA==1] <- 17
yahoo_cons[yahoo_user$SEN_18_MA==1] <- 18
yahoo_cons[yahoo_user$SEN_19_MA==1] <- 19
yahoo_cons[yahoo_user$SEN_20_MA==1] <- 20
yahoo_cons[yahoo_user$SEN_21_MA==1] <- 21
yahoo_cons[yahoo_user$SEN_22_MA==1] <- 22
yahoo_cons[yahoo_user$SEN_23_MA==1] <- 23
yahoo_cons[yahoo_user$SEN_24_MA==1] <- 24
yahoo_cons[yahoo_user$SEN_25_MA==1] <- 25
yahoo_cons[yahoo_user$SEN_26_MA==1] <- 26
yahoo_cons[yahoo_user$SEN_27_MA==1] <- 27
yahoo_cons[yahoo_user$SEN_28_MA==1] <- 28
yahoo_cons[yahoo_user$SEN_29_MA==1] <- 29
yahoo_cons[yahoo_user$SEN_30_MA==1] <- 30
yahoo_cons[yahoo_user$SEN_31_MA==1] <- 31
yahoo_cons[yahoo_user$SEN_32_MA==1] <- 32
yahoo_cons[yahoo_user$SEN_33_MA==1] <- 33

table(amazon_cons)
table(rakuten_cons)
table(yahoo_cons)

#データセット
amazon_user = all[all$NET_Freq_15_MX <= 2 ,]
rakuten_user = all[all$NET_Freq_16_MX <= 2 ,]
yahoo_user = all[all$NET_Freq_17_MX <= 2 ,]

#amazon
#-----------------------------------------------
#利用頻度
amazon_NET_Freq <- amazon_user$NET_Freq_15_MX <= 2
#消費価値観
amazon_SEN_01 <- amazon_user$SEN_01_MA==1
amazon_SEN_08 <- amazon_user$SEN_08_MA==1
amazon_SEN_14 <- amazon_user$SEN_14_MA==1
amazon_SEN_15 <- amazon_user$SEN_15_MA==1
amazon_SEN_23 <- amazon_user$SEN_23_MA==1
amazon_SEN_27 <- amazon_user$SEN_27_MA==1
#認知要求尺度
amazon_NC_Scale_01 <- amazon_user$NC_Scale_01_MX <= 3
amazon_NC_Scale_02 <- amazon_user$NC_Scale_02_MX <= 3
amazon_NC_Scale_03 <- amazon_user$NC_Scale_03_MX <= 3
amazon_NC_Scale_05 <- amazon_user$NC_Scale_05_MX <= 3
amazon_NC_Scale_07 <- amazon_user$NC_Scale_07_MX <= 3
amazon_NC_Scale_12 <- amazon_user$NC_Scale_12_MX <= 3
amazon_NC_Scale_13 <- amazon_user$NC_Scale_13_MX <= 3
amazon_NC_Scale_14 <- amazon_user$NC_Scale_14_MX <= 3
#RECスケール
amazon_RF_Scale_01 <- amazon_user$REC_Scale_01_MX <= 3
amazon_RF_Scale_03 <- amazon_user$REC_Scale_03_MX <= 3
amazon_RF_Scale_05 <- amazon_user$REC_Scale_05_MX <= 3
amazon_RF_Scale_08 <- amazon_user$REC_Scale_08_MX <= 3
amazon_RF_Scale_09 <- amazon_user$REC_Scale_09_MX <= 3
amazon_RF_Scale_10 <- amazon_user$REC_Scale_10_MX <= 3

#重回帰分析
#→消費価値観
result_amazon_SEN <- lm(amazon_NET_Freq ~ amazon_SEN_01 + amazon_SEN_08 + amazon_SEN_14 + amazon_SEN_15 + amazon_SEN_23 + amazon_SEN_27, data=amazon_user)
summary(result_amazon_SEN)
#→認知要求尺度
result_amazon_NC_Scale <- lm(amazon_NET_Freq ~ amazon_NC_Scale_01 + amazon_NC_Scale_02 + amazon_NC_Scale_03 + amazon_NC_Scale_05 + amazon_NC_Scale_07 + amazon_NC_Scale_12 + amazon_NC_Scale_13 + amazon_NC_Scale_14, data=amazon_user)
summary(result_amazon_NC_Scale)
#→RECスケール
result_amazon_RF_Scale <- lm(amazon_NET_Freq ~ amazon_RF_Scale_01 + amazon_RF_Scale_03 + amazon_RF_Scale_05　+ amazon_RF_Scale_08 + amazon_RF_Scale_09 + amazon_RF_Scale_10 , data=amazon_user)
summary(result_amazon_RF_Scale)

#多重共線性チェック
#→消費価値観
vif(result_amazon_cons)
#→認知要求尺度
vif(result_amazon_NC_Scale)
#→全ての項目2以下のため問題なし
#-----------------------------------------------
  
#rakuten
#-----------------------------------------------
#利用頻度
rakuten_NET_Freq <- rakuten_user$NET_Freq_16_MX <= 2
#消費価値観
rakuten_SEN_01 <- rakuten_user$SEN_01_MA==1
rakuten_SEN_14 <- rakuten_user$SEN_14_MA==1
rakuten_SEN_28 <- rakuten_user$SEN_28_MA==1
rakuten_SEN_15 <- rakuten_user$SEN_15_MA==1
rakuten_SEN_23 <- rakuten_user$SEN_23_MA==1
rakuten_SEN_27 <- rakuten_user$SEN_27_MA==1
#認知要求尺度
rakuten_NC_Scale_01 <- rakuten_user$NC_Scale_01_MX <= 3
rakuten_NC_Scale_02 <- rakuten_user$NC_Scale_02_MX <= 3
rakuten_NC_Scale_03 <- rakuten_user$NC_Scale_03_MX <= 3
rakuten_NC_Scale_05 <- rakuten_user$NC_Scale_05_MX <= 3
rakuten_NC_Scale_07 <- rakuten_user$NC_Scale_07_MX <= 3
rakuten_NC_Scale_12 <- rakuten_user$NC_Scale_12_MX <= 3
rakuten_NC_Scale_13 <- rakuten_user$NC_Scale_13_MX <= 3
rakuten_NC_Scale_14 <- rakuten_user$NC_Scale_14_MX <= 3
#RECスケール
rakuten_RF_Scale_01 <- rakuten_user$REC_Scale_01_MX <= 3
rakuten_RF_Scale_03 <- rakuten_user$REC_Scale_03_MX <= 3
rakuten_RF_Scale_05 <- rakuten_user$REC_Scale_05_MX <= 3
rakuten_RF_Scale_08 <- rakuten_user$REC_Scale_08_MX <= 3
rakuten_RF_Scale_09 <- rakuten_user$REC_Scale_09_MX <= 3
rakuten_RF_Scale_10 <- rakuten_user$REC_Scale_10_MX <= 3

#重回帰分析
#→消費価値観
result_rakuten_cons <- lm(rakuten_NET_Freq ~ rakuten_SEN_01 + rakuten_SEN_28 + rakuten_SEN_14 + rakuten_SEN_15 + rakuten_SEN_23 + rakuten_SEN_27, data=rakuten_user)
summary(result_rakuten_cons)
#→認知要求尺度
result_rakuten_NC_Scale <- lm(rakuten_NET_Freq ~ rakuten_NC_Scale_01 + rakuten_NC_Scale_02 + rakuten_NC_Scale_03 + rakuten_NC_Scale_05　+ rakuten_NC_Scale_07 + rakuten_NC_Scale_12 + rakuten_NC_Scale_13 + rakuten_NC_Scale_14, data=rakuten_user)
summary(result_rakuten_NC_Scale)
#→RECスケール
result_rakuten_RF_Scale <- lm(rakuten_NET_Freq ~ rakuten_RF_Scale_01 + rakuten_RF_Scale_03 + rakuten_RF_Scale_05　+ rakuten_RF_Scale_08 + rakuten_RF_Scale_09 + rakuten_RF_Scale_10 , data=rakuten_user)
summary(result_rakuten_RF_Scale)

#多重共線性チェック
#→消費価値観
vif(result_rakuten_cons)
#→認知要求尺度
vif(result_rakuten_NC_Scale)
#→全ての項目2以下のため問題なし
#-----------------------------------------------

#yahoo
#-----------------------------------------------
#利用頻度
yahoo_NET_Freq <- yahoo_user$NET_Freq_17_MX <= 2
#消費価値観
yahoo_SEN_01 <- yahoo_user$SEN_01_MA==1
yahoo_SEN_14 <- yahoo_user$SEN_14_MA==1
yahoo_SEN_28 <- yahoo_user$SEN_28_MA==1
yahoo_SEN_15 <- yahoo_user$SEN_15_MA==1
yahoo_SEN_23 <- yahoo_user$SEN_23_MA==1
yahoo_SEN_27 <- yahoo_user$SEN_27_MA==1
#認知要求尺度
yahoo_NC_Scale_01 <- yahoo_user$NC_Scale_01_MX <= 3
yahoo_NC_Scale_02 <- yahoo_user$NC_Scale_02_MX <= 3
yahoo_NC_Scale_03 <- yahoo_user$NC_Scale_03_MX <= 3
yahoo_NC_Scale_05 <- yahoo_user$NC_Scale_05_MX <= 3
yahoo_NC_Scale_07 <- yahoo_user$NC_Scale_07_MX <= 3
yahoo_NC_Scale_12 <- yahoo_user$NC_Scale_12_MX <= 3
yahoo_NC_Scale_13 <- yahoo_user$NC_Scale_13_MX <= 3
yahoo_NC_Scale_14 <- yahoo_user$NC_Scale_14_MX <= 3
#RECスケール
yahoo_RF_Scale_01 <- yahoo_user$REC_Scale_01_MX <= 3
yahoo_RF_Scale_03 <- yahoo_user$REC_Scale_03_MX <= 3
yahoo_RF_Scale_05 <- yahoo_user$REC_Scale_05_MX <= 3
yahoo_RF_Scale_08 <- yahoo_user$REC_Scale_08_MX <= 3
yahoo_RF_Scale_09 <- yahoo_user$REC_Scale_09_MX <= 3
yahoo_RF_Scale_10 <- yahoo_user$REC_Scale_10_MX <= 3


#重回帰分析
#→消費価値観
result_yahoo_cons <- lm(yahoo_NET_Freq ~ yahoo_SEN_01 + yahoo_SEN_28 + yahoo_SEN_14 + yahoo_SEN_15 + yahoo_SEN_23 + yahoo_SEN_27, data=yahoo_user)
summary(result_yahoo_cons)
#→認知要求尺度
result_yahoo_NC_Scale <- lm(yahoo_NET_Freq ~ yahoo_NC_Scale_01 + yahoo_NC_Scale_02 + yahoo_NC_Scale_03　+ yahoo_NC_Scale_05 + yahoo_NC_Scale_07 + yahoo_NC_Scale_12 + yahoo_NC_Scale_13 + yahoo_NC_Scale_14, data=yahoo_user)
summary(result_yahoo_NC_Scale)
#→RECスケール
result_yahoo_RF_Scale <- lm(yahoo_NET_Freq ~ yahoo_RF_Scale_01 + yahoo_RF_Scale_03 + yahoo_RF_Scale_05　+ yahoo_RF_Scale_08 + yahoo_RF_Scale_09 + yahoo_RF_Scale_10 , data=yahoo_user)
summary(result_yahoo_RF_Scale)

#多重共線性チェック
#→消費価値観
vif(result_yahoo_cons)
#→認知要求尺度
vif(result_yahoo_NC_Scale)
#→全ての項目2以下のため問題なし
#-----------------------------------------------

#心理的尺度について
#探索的因子分析を行う
#-----------------------------------------------
#RECスケールの列だけ抽出
data_REC_na <- amazon_user[,c("REC_Scale_01_MX","REC_Scale_02_MX","REC_Scale_03_MX","REC_Scale_04_MX","REC_Scale_05_MX","REC_Scale_06_MX","REC_Scale_07_MX","REC_Scale_08_MX","REC_Scale_09_MX","REC_Scale_10_MX","REC_Scale_11_MX","REC_Scale_12_MX")]
data_REC <- na.omit(data_REC_na) #データセット
cor.data_REC <- cor(data_REC) #相行列の算出
eigen(cor.data_REC) #固有値の算出
install.packages("psych")
library(psych)
VSS.scree(data_REC)#スクリープロットの出力

#因子負荷の推定
install.packages("GPArotation")
library(GPArotation)
fa.data_REC_New <- fa(data_REC, nfactors=2, fm="ml", rotate="promax",) 
print(fa.data_REC_New, sort=TRUE, digits=3)






