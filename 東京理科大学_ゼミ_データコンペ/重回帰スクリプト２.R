#---------------------------------------------
#目的変数設定
#パターン１（使用する→１）
all$amazon_user <- ifelse(all$all.NET_Freq_15_MX <= 4, 1, 0) 
all$rakuten_user <- ifelse(all$all.NET_Freq_16_MX <= 4, 1, 0) 
all$yahoo_user <- ifelse(all$all.NET_Freq_17_MX <= 4, 1, 0) 
#パターン２（ヘビーユーザー→1）
all$amazon_heavy_user <- ifelse(all$all.NET_Freq_15_MX <= 2, 1, 0) 
all$rakuten_heavy_user <- ifelse(all$all.NET_Freq_16_MX <= 2, 1, 0) 
all$yahoo_heavy_user <- ifelse(all$all.NET_Freq_17_MX <= 2, 1, 0) 


#---------------------------------------------
#説明変数設定
#利用頻度
#LINE時間
all$all.LINE_Time_01 <- ifelse(all$all.NET_Time_04_01_MX==1, 1, 0)
all$all.LINE_Time_02 <- ifelse(all$all.NET_Time_04_02_MX==1, 1, 0)
all$all.LINE_Time_03 <- ifelse(all$all.NET_Time_04_03_MX==1, 1, 0)
all$all.LINE_Time_04 <- ifelse(all$all.NET_Time_04_04_MX==1, 1, 0)
all$all.LINE_Time_05 <- ifelse(all$all.NET_Time_04_05_MX==1, 1, 0)
all$all.LINE_Time_06 <- ifelse(all$all.NET_Time_04_06_MX==1, 1, 0)
all$all.LINE_Time_07 <- ifelse(all$all.NET_Time_04_07_MX==1, 1, 0)
all$all.LINE_Time_08 <- ifelse(all$all.NET_Time_04_08_MX==1, 1, 0)
all$all.LINE_Time_09 <- ifelse(all$all.NET_Time_04_09_MX==1, 1, 0)
all$all.LINE_Time_01

#Twitter時間
all$all.Twitter_Time_01 <- ifelse(all$all.NET_Time_01_01_MX==1, 1, 0)
all$all.Twitter_Time_02 <- ifelse(all$all.NET_Time_01_02_MX==1, 1, 0)
all$all.Twitter_Time_03 <- ifelse(all$all.NET_Time_01_03_MX==1, 1, 0)
all$all.Twitter_Time_04 <- ifelse(all$all.NET_Time_01_04_MX==1, 1, 0)
all$all.Twitter_Time_05 <- ifelse(all$all.NET_Time_01_05_MX==1, 1, 0)
all$all.Twitter_Time_06 <- ifelse(all$all.NET_Time_01_06_MX==1, 1, 0)
all$all.Twitter_Time_07 <- ifelse(all$all.NET_Time_01_07_MX==1, 1, 0)
all$all.Twitter_Time_08 <- ifelse(all$all.NET_Time_01_08_MX==1, 1, 0)
all$all.Twitter_Time_09 <- ifelse(all$all.NET_Time_01_09_MX==1, 1, 0)

#Instagram時間
all$all.Insta_Time_01 <- ifelse(all$all.NET_Time_03_01_MX==1, 1, 0)
all$all.Insta_Time_02 <- ifelse(all$all.NET_Time_03_02_MX==1, 1, 0)
all$all.Insta_Time_03 <- ifelse(all$all.NET_Time_03_03_MX==1, 1, 0)
all$all.Insta_Time_04 <- ifelse(all$all.NET_Time_03_04_MX==1, 1, 0)
all$all.Insta_Time_05 <- ifelse(all$all.NET_Time_03_05_MX==1, 1, 0)
all$all.Insta_Time_06 <- ifelse(all$all.NET_Time_03_06_MX==1, 1, 0)
all$all.Insta_Time_07 <- ifelse(all$all.NET_Time_03_07_MX==1, 1, 0)
all$all.Insta_Time_08 <- ifelse(all$all.NET_Time_03_08_MX==1, 1, 0)
all$all.Insta_Time_09 <- ifelse(all$all.NET_Time_03_09_MX==1, 1, 0)

#Facebook時間
all$all.Facebook_Time_01 <- ifelse(all$all.NET_Time_02_01_MX==1, 1, 0)
all$all.Facebook_Time_02 <- ifelse(all$all.NET_Time_02_02_MX==1, 1, 0)
all$all.Facebook_Time_03 <- ifelse(all$all.NET_Time_02_03_MX==1, 1, 0)
all$all.Facebook_Time_04 <- ifelse(all$all.NET_Time_02_04_MX==1, 1, 0)
all$all.Facebook_Time_05 <- ifelse(all$all.NET_Time_02_05_MX==1, 1, 0)
all$all.Facebook_Time_06 <- ifelse(all$all.NET_Time_02_06_MX==1, 1, 0)
all$all.Facebook_Time_07 <- ifelse(all$all.NET_Time_02_07_MX==1, 1, 0)
all$all.Facebook_Time_08 <- ifelse(all$all.NET_Time_02_08_MX==1, 1, 0)
all$all.Facebook_Time_09 <- ifelse(all$all.NET_Time_02_09_MX==1, 1, 0)

#LINENews時間
all$all.LINE_News_Time_01 <- ifelse(all$all.NET_Time_15_01_MX==1, 1, 0)
all$all.LINE_News_Time_02 <- ifelse(all$all.NET_Time_15_02_MX==1, 1, 0)
all$all.LINE_News_Time_03 <- ifelse(all$all.NET_Time_15_03_MX==1, 1, 0)
all$all.LINE_News_Time_04 <- ifelse(all$all.NET_Time_15_04_MX==1, 1, 0)
all$all.LINE_News_Time_05 <- ifelse(all$all.NET_Time_15_05_MX==1, 1, 0)
all$all.LINE_News_Time_06 <- ifelse(all$all.NET_Time_15_06_MX==1, 1, 0)
all$all.LINE_News_Time_07 <- ifelse(all$all.NET_Time_15_07_MX==1, 1, 0)
all$all.LINE_News_Time_08 <- ifelse(all$all.NET_Time_15_08_MX==1, 1, 0)
all$all.LINE_News_Time_09 <- ifelse(all$all.NET_Time_15_09_MX==1, 1, 0)

#Youtube時間
all$all.Youtube_Time_01 <- ifelse(all$all.NET_Time_06_01_MX==1, 1, 0)
all$all.Youtube_Time_02 <- ifelse(all$all.NET_Time_06_02_MX==1, 1, 0)
all$all.Youtube_Time_03 <- ifelse(all$all.NET_Time_06_03_MX==1, 1, 0)
all$all.Youtube_Time_04 <- ifelse(all$all.NET_Time_06_04_MX==1, 1, 0)
all$all.Youtube_Time_05 <- ifelse(all$all.NET_Time_06_05_MX==1, 1, 0)
all$all.Youtube_Time_06 <- ifelse(all$all.NET_Time_06_06_MX==1, 1, 0)
all$all.Youtube_Time_07 <- ifelse(all$all.NET_Time_06_07_MX==1, 1, 0)
all$all.Youtube_Time_08 <- ifelse(all$all.NET_Time_06_08_MX==1, 1, 0)
all$all.Youtube_Time_09 <- ifelse(all$all.NET_Time_06_09_MX==1, 1, 0)

#LINEデバイス
all$all.LINE_Device_01 <- ifelse(all$all.NET_Device_04_01_MX==1, 1, 0)
all$all.LINE_Device_02 <- ifelse(all$all.NET_Device_04_02_MX==1, 1, 0)
all$all.LINE_Device_03 <- ifelse(all$all.NET_Device_04_03_MX==1, 1, 0)
all$all.LINE_Device_04 <- ifelse(all$all.NET_Device_04_04_MX==1, 1, 0)

#Twitterデバイス
all$all.Twitter_Device_01 <- ifelse(all$all.NET_Device_01_01_MX==1, 1, 0)
all$all.Twitter_Device_02 <- ifelse(all$all.NET_Device_01_02_MX==1, 1, 0)
all$all.Twitter_Device_03 <- ifelse(all$all.NET_Device_01_03_MX==1, 1, 0)
all$all.Twitter_Device_04 <- ifelse(all$all.NET_Device_01_04_MX==1, 1, 0)

#Facebookデバイス
all$all.Facebook_Device_01 <- ifelse(all$all.NET_Device_02_01_MX==1, 1, 0)
all$all.Facebook_Device_02 <- ifelse(all$all.NET_Device_02_02_MX==1, 1, 0)
all$all.Facebook_Device_03 <- ifelse(all$all.NET_Device_02_03_MX==1, 1, 0)
all$all.Facebook_Device_04 <- ifelse(all$all.NET_Device_02_04_MX==1, 1, 0)

#instagramデバイス
all$all.Insta_Device_01 <- ifelse(all$all.NET_Device_03_01_MX==1, 1, 0)
all$all.Insta_Device_02 <- ifelse(all$all.NET_Device_03_02_MX==1, 1, 0)
all$all.Insta_Device_03 <- ifelse(all$all.NET_Device_03_03_MX==1, 1, 0)
all$all.Insta_Device_04 <- ifelse(all$all.NET_Device_03_04_MX==1, 1, 0)

#LINENewsデバイス
all$all.LINE_NEWS_Device_01 <- ifelse(all$all.NET_Device_15_01_MX==1, 1, 0)
all$all.LINE_NEWS_Device_02 <- ifelse(all$all.NET_Device_15_02_MX==1, 1, 0)
all$all.LINE_NEWS_Device_03 <- ifelse(all$all.NET_Device_15_03_MX==1, 1, 0)
all$all.LINE_NEWS_Device_04 <- ifelse(all$all.NET_Device_15_04_MX==1, 1, 0)

#Youtubeデバイス
all$all.Youtube_Device_01 <- ifelse(all$all.NET_Device_06_01_MX==1, 1, 0)
all$all.Youtube_Device_02 <- ifelse(all$all.NET_Device_06_02_MX==1, 1, 0)
all$all.Youtube_Device_03 <- ifelse(all$all.NET_Device_06_03_MX==1, 1, 0)
all$all.Youtube_Device_04 <- ifelse(all$all.NET_Device_06_04_MX==1, 1, 0)




#---------------------------------------------
#重回帰分析
#パターン１
#Time
amazon_user_Time <- glm(amazon_user~
                               all.NET_Time_04_06_MX+
                               all.NET_Time_03_07_MX+
                               all.NET_Time_01_09_MX+
                               all.NET_Time_03_09_MX+
                               all.NET_Time_15_01_MX+
                               all.NET_Time_15_07_MX+
                               all.NET_Time_01_08_MX
                               , family="binomial", data = all)
summary(amazon_user_Time)
vif(amazon_user_Time)#→を消去
#Device
amazon_user_Device <- glm(amazon_user~
                            all.NET_Device_06_03_MX+
                            all.NET_Device_04_03_MX+
                            all.NET_Device_03_02_MX+
                            all.NET_Device_15_02_MX
                            , family="binomial", data = all)
summary(amazon_user_Device)
vif(amazon_user_Device)#エラー
#購買意向
amazon_user_idea <- glm(amazon_user~
                          all.PI_CAT_02+
                          all.PI_CAT_53+
                          all.PI_CAT_09
                          , family="binomial", data = all)
summary(amazon_user_idea)
vif(amazon_user_idea)#エラー


#rakuten
rakuten_user_Time <- glm(rakuten_user~
                           all.NET_Time_01_02_MX+
                           all.NET_Time_15_02_MX  +
                           all.NET_Time_04_07_MX +
                           all.NET_Time_02_03_MX +
                           all.NET_Time_02_07_MX   +
                           all.NET_Time_04_04_MX + 
                           all.NET_Time_15_05_MX +
                           all.NET_Time_01_03_MX  +
                           all.NET_Time_04_08_MX  +
                           all.NET_Time_03_07_MX  +
                           all.NET_Time_04_02_MX 
                        , family="binomial", data = all)
summary(rakuten_user_Time)
vif(rakuten_user_Time)#→を消去
#Device
rakuten_user_Device <- glm(rakuten_user~
                             all.NET_Device_04_02_MX  +
                             all.NET_Device_04_03_MX +
                             all.NET_Device_06_03_MX  +
                             all.NET_Device_15_01_MX+  
                             all.NET_Device_01_01_MX +
                             all.NET_Device_03_01_MX   
                          , family="binomial", data = all)
summary(rakuten_user_Device)
vif(rakuten_user_Device)#エラー
#購買意向
rakuten_user_idea <- glm(rakuten_user~
                           all.PI_CAT_02 +
                           all.PI_CAT_11 +
                           all.PI_CAT_33   +
                           all.PI_CAT_50   +
                           all.PI_CAT_09   +
                           all.PI_CAT_10 
                        , family="binomial", data = all)
summary(rakuten_user_idea)
vif(rakuten_user_idea)#エラー

#yahoo
yahoo_user_Time <- glm(yahoo_user~
                         all.NET_Time_06_04_MX +
                         all.NET_Time_03_03_MX+
       
                         all.NET_Time_04_07_MX+
                         all.NET_Time_04_02_MX+
                         all.NET_Time_02_06_MX +
             
                         all.NET_Time_03_07_MX  + 
                         all.NET_Time_15_05_MX + 
                         all.NET_Time_04_04_MX  +
                  
                         all.NET_Time_01_01_MX +
                         all.NET_Time_06_01_MX  
                         , family="binomial", data = all)
summary(yahoo_user_Time)
vif(yahoo_user_Time)#→を消去
#Device
library(car)
yahoo_user_Device <- glm(yahoo_user~
                           all.NET_Device_06_04_MX +
                           all.NET_Device_06_01_MX  +    
                           all.NET_Device_15_02_MX  
                           , family="binomial", data = all)
summary(yahoo_user_Device)
vif(yahoo_user_Device)#エラー
#購買意向
yahoo_user_idea <- glm(yahoo_user~
                         all.PI_CAT_02   +
                         all.PI_CAT_08   +
                         all.PI_CAT_04         
                         , family="binomial", data = all)
summary(yahoo_user_idea)
vif(yahoo_user_idea)#エラー


#---------------------------------------------
#重回帰分析
#パターン２
#Time
amazon_heavy_user_Time <- glm(amazon_heavy_user~
                                all.NET_Time_06_05_MX  +
                                all.NET_Time_01_07_MX +
                               
                                all.NET_Time_15_09_MX  +
                                all.NET_Time_03_06_MX+  
                              
                                all.NET_Time_01_01_MX +
                                all.NET_Time_02_03_MX +
                                all.NET_Time_15_07_MX +
                                all.NET_Time_06_04_MX +  
                     
                                all.NET_Time_03_04_MX+
                         
                                all.NET_Time_02_08_MX
                        , family="binomial", data = all)
summary(amazon_heavy_user_Time)
vif(amazon_heavy_user_Time)#→を消去
#Device
amazon_heavy_user_Device <- glm(amazon_heavy_user~
                            all.NET_Device_06_03_MX+
                            all.NET_Device_04_03_MX+
                            all.NET_Device_03_02_MX+
                            all.NET_Device_15_02_MX
                          , family="binomial", data = all)
summary(amazon_heavy_user_Device)
vif(amazon_heavy_user_Device)#エラー
#購買意向
amazon_heavy_user_idea <- glm(amazon_heavy_user~
                                all.PI_CAT_40 +
                                all.PI_CAT_34   +
                                all.PI_CAT_38  +
                                all.PI_CAT_11  
                                
                        , family="binomial", data = all)
summary(amazon_heavy_user_idea)
vif(amazon_heavy_user_idea)#エラー


#rakuten
rakuten_heavy_user_Time <- glm(rakuten_heavy_user~
                                 all.NET_Time_02_02_MX +
                                 all.NET_Time_02_07_MX +
                                 all.NET_Time_06_04_MX + 
                                 all.NET_Time_15_09_MX  +
                                 all.NET_Time_01_06_MX +
                                 all.NET_Time_03_02_MX
                         , family="binomial", data = all)
summary(rakuten_heavy_user_Time)
vif(rakuten_heavy_user_Time)#→を消去
#Device
rakuten_heavy_user_Device <- glm(rakuten_heavy_user~
                                   all.NET_Device_04_02_MX +
                                   all.NET_Device_06_01_MX  
                           , family="binomial", data = all)
summary(rakuten_heavy_user_Device)
vif(rakuten_heavy_user_Device)#エラー
#購買意向
rakuten_heavy_user_idea <- glm(rakuten_heavy_user~
                                 all.PI_CAT_49 +
                                 all.PI_CAT_11 +  
                                 all.PI_CAT_38 +  
                                 all.PI_CAT_07 + 
                                 all.PI_CAT_50 +  
                                 all.PI_CAT_03  
                         , family="binomial", data = all)
summary(rakuten_heavy_user_idea)
vif(rakuten_heavy_user_idea)#エラー

#yahoo
yahoo_heavy_user_Time <- glm(yahoo_heavy_user~
                              
                               all.NET_Time_15_09_MX +
                               all.NET_Time_01_06_MX +
                               all.NET_Time_02_02_MX +
                             all.NET_Time_01_04_MX  +
                               all.NET_Time_06_06_MX  +
                               all.NET_Time_02_03_MX +
                               all.NET_Time_04_01_MX + 
                              
                               all.NET_Time_03_06_MX +
                               all.NET_Time_01_01_MX+
                               all.NET_Time_01_02_MX 
                       , family="binomial", data = all)
summary(yahoo_heavy_user_Time)
vif(yahoo_heavy_user_Time)#→を消去
#Device
yahoo_heavy_user_Device <- glm(yahoo_heavy_user~
                                 all.NET_Device_03_02_MX
                         , family="binomial", data = all)
summary(yahoo_heavy_user_Device)
vif(yahoo_user_Device)#エラー

#購買意向
yahoo_heavy_user_idea <- glm(yahoo_heavy_user~
                               all.PI_CAT_34 + 
                               all.PI_CAT_49 +
                               all.PI_CAT_43 +
                               all.PI_CAT_33
                             
                       , family="binomial", data = all)
summary(yahoo_heavy_user_idea)
vif(yahoo_heavy_user_idea)#エラー
















