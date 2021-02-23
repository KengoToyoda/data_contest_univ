
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
#性別（男→１）
all$all.sex <- ifelse(all$all.SEX_CD==1, 1, 0) 
#年齢
all$all.AGE
#未既婚（既婚→１）
all$all.marrige <- ifelse(all$all.MARRIAGE==2, 1, 0)
#子供有無（子供いる→１）
all$all.child <- ifelse(all$all.CHILD_CD==1, 1, 0)
#世帯収入
all$all.INCOM_SA
#職業
all$all.job1 <- all$all.JOB_CD == 1 
all$all.job2 <- all$all.JOB_CD == 2 
all$all.job3 <- all$all.JOB_CD == 3 
all$all.job4 <- all$all.JOB_CD == 4 
all$all.job5 <- all$all.JOB_CD == 5 
all$all.job6 <- all$all.JOB_CD == 6 
all$all.job7 <- all$all.JOB_CD == 7
all$all.job8 <- all$all.JOB_CD == 8 
all$all.job9 <- all$all.JOB_CD == 9 
all$all.job10 <- all$all.JOB_CD == 10 
all$all.job11 <- all$all.JOB_CD == 11
all$all.job12 <- all$all.JOB_CD == 12 
all$all.job13 <- all$all.JOB_CD == 13 
all$all.job14 <- all$all.JOB_CD == 14 
all$all.job15 <- all$all.JOB_CD == 15 
all$all.job16 <- all$all.JOB_CD == 16 
all$all.job17 <- all$all.JOB_CD == 17 
all$all.job18 <- all$all.JOB_CD == 18 

#趣味
all$all.HOB_01_MA
all$all.HOB_02_MA
all$all.HOB_03_MA
all$all.HOB_04_MA
all$all.HOB_05_MA
all$all.HOB_06_MA
all$all.HOB_07_MA
all$all.HOB_08_MA
all$all.HOB_09_MA
all$all.HOB_10_MA
all$all.HOB_11_MA
all$all.HOB_12_MA
all$all.HOB_13_MA
all$all.HOB_14_MA
all$all.HOB_15_MA
all$all.HOB_16_MA
all$all.HOB_17_MA
all$all.HOB_18_MA
all$all.HOB_19_MA
all$all.HOB_20_MA
all$all.HOB_21_MA
all$all.HOB_22_MA
all$all.HOB_23_MA
all$all.HOB_24_MA
all$all.HOB_25_MA
all$all.HOB_26_MA
all$all.HOB_27_MA
all$all.HOB_28_MA
all$all.HOB_29_MA
all$all.HOB_30_MA
all$all.HOB_31_MA
all$all.HOB_32_MA

#消費価値観
all$all.SEN_01_MA
all$all.SEN_02_MA
all$all.SEN_03_MA
all$all.SEN_04_MA
all$all.SEN_05_MA
all$all.SEN_06_MA
all$all.SEN_07_MA
all$all.SEN_08_MA
all$all.SEN_09_MA
all$all.SEN_10_MA
all$all.SEN_11_MA
all$all.SEN_12_MA
all$all.SEN_13_MA
all$all.SEN_14_MA
all$all.SEN_15_MA
all$all.SEN_16_MA
all$all.SEN_17_MA
all$all.SEN_18_MA
all$all.SEN_19_MA
all$all.SEN_20_MA
all$all.SEN_21_MA
all$all.SEN_22_MA
all$all.SEN_23_MA
all$all.SEN_24_MA
all$all.SEN_25_MA
all$all.SEN_26_MA
all$all.SEN_27_MA
all$all.SEN_28_MA
all$all.SEN_29_MA
all$all.SEN_30_MA
all$all.SEN_31_MA
all$all.SEN_32_MA
all$all.SEN_33_MA
all$all.SENS2_SA

#認知要求尺度

all$all.NC_Scale_01_MX_NEW <- ifelse(all$all.NC_Scale_01_MX <= 3 ,1 ,0)
all$all.NC_Scale_02_MX_NEW <- ifelse(all$all.NC_Scale_02_MX <= 3 ,1 ,0)
all$all.NC_Scale_03_MX_NEW <- ifelse(all$all.NC_Scale_03_MX <= 3 ,1 ,0)
all$all.NC_Scale_04_MX_NEW <- ifelse(all$all.NC_Scale_04_MX <= 3 ,1 ,0)
all$all.NC_Scale_05_MX_NEW <- ifelse(all$all.NC_Scale_05_MX <= 3 ,1 ,0)
all$all.NC_Scale_06_MX_NEW <- ifelse(all$all.NC_Scale_06_MX <= 3 ,1 ,0)
all$all.NC_Scale_07_MX_NEW <- ifelse(all$all.NC_Scale_07_MX <= 3 ,1 ,0)
all$all.NC_Scale_08_MX_NEW <- ifelse(all$all.NC_Scale_08_MX <= 3 ,1 ,0)
all$all.NC_Scale_09_MX_NEW <- ifelse(all$all.NC_Scale_09_MX <= 3 ,1 ,0)
all$all.NC_Scale_10_MX_NEW <- ifelse(all$all.NC_Scale_10_MX <= 3 ,1 ,0)
all$all.NC_Scale_11_MX_NEW <- ifelse(all$all.NC_Scale_11_MX <= 3 ,1 ,0)
all$all.NC_Scale_12_MX_NEW <- ifelse(all$all.NC_Scale_12_MX <= 3 ,1 ,0)
all$all.NC_Scale_13_MX_NEW <- ifelse(all$all.NC_Scale_13_MX <= 3 ,1 ,0)
all$all.NC_Scale_14_MX_NEW <- ifelse(all$all.NC_Scale_14_MX <= 3 ,1 ,0)
all$all.NC_Scale_15_MX_NEW <- ifelse(all$all.NC_Scale_15_MX <= 3 ,1 ,0)


#REC
all$all.REC_Scale_01_MX_NEW <- ifelse(all$all.REC_Scale_01_MX <= 2 ,1 ,0)
all$all.REC_Scale_02_MX_NEW <- ifelse(all$all.REC_Scale_02_MX <= 2 ,1 ,0)
all$all.REC_Scale_03_MX_NEW <- ifelse(all$all.REC_Scale_03_MX <= 2 ,1 ,0)
all$all.REC_Scale_04_MX_NEW <- ifelse(all$all.REC_Scale_04_MX <= 2 ,1 ,0)
all$all.REC_Scale_05_MX_NEW <- ifelse(all$all.REC_Scale_05_MX <= 2 ,1 ,0)
all$all.REC_Scale_06_MX_NEW <- ifelse(all$all.REC_Scale_06_MX <= 2 ,1 ,0)
all$all.REC_Scale_07_MX_NEW <- ifelse(all$all.REC_Scale_07_MX <= 2 ,1 ,0)
all$all.REC_Scale_08_MX_NEW <- ifelse(all$all.REC_Scale_08_MX <= 2 ,1 ,0)
all$all.REC_Scale_09_MX_NEW <- ifelse(all$all.REC_Scale_09_MX <= 2 ,1 ,0)
all$all.REC_Scale_10_MX_NEW <- ifelse(all$all.REC_Scale_10_MX <= 2 ,1 ,0)
all$all.REC_Scale_11_MX_NEW <- ifelse(all$all.REC_Scale_11_MX <= 2 ,1 ,0)
all$all.REC_Scale_12_MX_NEW <- ifelse(all$all.REC_Scale_12_MX <= 2 ,1 ,0)


#---------------------------------------------
#重回帰分析
#パターン1ーーーーーーーーーーーーーーーーーーー
#amazon
#その他
amazon_user_another <- glm(amazon_user~ all.CHILD_CD+all.INCOM_SA+all.JOB_CD, family="binomial", data = all)
summary(amazon_user_another)
vif(amazon_user_another)#→

#趣味
amazon_user_hob <- glm(amazon_user~
                         all.HOB_18_MA+all.HOB_27_MA+all.HOB_24_MA+all.HOB_03_MA+ all.HOB_29_MA+all.HOB_20_MA
                         , family="binomial", data = all)
summary(amazon_user_hob)

vif(amazon_user_hob)#→なし
#消費価値観
amazon_user_cons <- glm(amazon_user~
                          all.SENS2_SA+
                          all.SEN_24_MA+  
                          all.SEN_09_MA+  
                          all.SEN_16_MA+
                          all.SEN_25_MA+
                          all.SEN_28_MA+
                          all.SEN_06_MA+
                          all.SEN_33_MA
                          , family="binomial", data = all)
summary(amazon_user_cons)
vif(amazon_user_cons)#→なし
#認知要求尺度
amazon_user_nc_scale <- glm(amazon_user~
                              all.NC_Scale_02_MX
                              , family="binomial", data = all)
summary(amazon_user_nc_scale)

vif(amazon_user_nc_scale)#→なし
#REC
amazon_user_REC_scale <- glm(amazon_user~
                               all.REC_Scale_11_MX+all.REC_Scale_01_MX
                               , family="binomial", data = all)
summary(amazon_user_REC_scale)
vif(amazon_user_REC_scale)#→なし


#rakuten
#その他
rakuten_user_another <- glm(rakuten_user~all.INCOM_SA+all.CHILD_CD, family="binomial", data = all)
summary(rakuten_user_another)
vif(rakuten_user_another)#→なし

#趣味
rakuten_user_hob <- glm(rakuten_user~
                          all.HOB_23_MA  +
                          all.HOB_07_MA  +
                          all.HOB_19_MA +
                          all.HOB_06_MA  +
                          all.HOB_18_MA +   
                          all.HOB_03_MA
                          , family="binomial", data = all)
summary(rakuten_user_hob)
vif(rakuten_user_hob)#→なし
#消費価値観
rakuten_user_cons <- glm(rakuten_user~
                          

                           all.SEN_09_MA+
                           all.SENS2_SA  +
                           all.SEN_25_MA +
                           all.SEN_23_MA +
                           all.SEN_24_MA+
                           all.SEN_30_MA  +
                           all.SEN_29_MA +
                           all.SEN_33_MA 
                         , family="binomial", data = all)
summary(rakuten_user_cons)
vif(rakuten_user_cons)#→なし
#認知要求尺度
rakuten_user_nc_scale <- glm(rakuten_user~
                               all.NC_Scale_04_MX+
                               all.NC_Scale_05_MX
                               , family="binomial", data = all)
summary(rakuten_user_nc_scale)

vif(rakuten_user_nc_scale)#→なし
#REC
rakuten_user_REC_scale <- glm(rakuten_user~
                              
                                all.REC_Scale_02_MX+
                                all.REC_Scale_12_MX+
                                all.REC_Scale_01_MX +
                                all.REC_Scale_09_MX +
                                all.REC_Scale_08_MX
                                , family="binomial", data = all)
summary(rakuten_user_REC_scale)
vif(rakuten_user_REC_scale)#→なし



#yahoo
#その他
yahoo_user_another <- glm(yahoo_user~all.MARRIAGE +all.JOB_CD+all.INCOM_SA, family="binomial", data = all)
summary(yahoo_user_another)
vif(yahoo_user_another)#→なし
#趣味
yahoo_user_hob <- glm(yahoo_user~
                        all.HOB_19_MA+all.HOB_18_MA+all.HOB_14_MA+all.HOB_10_MA+all.HOB_13_MA
                        , family="binomial", data = all)
summary(yahoo_user_hob)
vif(yahoo_user_hob)#→なし

#消費価値観
yahoo_user_cons <- glm(yahoo_user~
                         all.SENS2_SA +
                         all.SEN_14_MA+
                         all.SEN_07_MA +
                         all.SEN_23_MA +
                         all.SEN_05_MA +
                         all.SEN_11_MA +
                         all.SEN_02_MA +
                         all.SEN_16_MA +
                         all.SEN_32_MA 
                         
                         , family="binomial", data = all)
summary(yahoo_user_cons)
vif(yahoo_user_cons)#→なし

#認知要求尺度
yahoo_user_nc_scale <- glm(yahoo_user~
                             all.NC_Scale_04_MX +
                             all.NC_Scale_05_MX +
                             all.NC_Scale_13_MX 
                             , family="binomial", data = all)
summary(yahoo_user_nc_scale)

vif(yahoo_user_nc_scale)#→なし
#REC
yahoo_user_REC_scale <- glm(yahoo_user~
                             
                              all.REC_Scale_11_MX+
                              all.REC_Scale_06_MX +
                              all.REC_Scale_12_MX +
                              all.REC_Scale_05_MX + 
                              all.REC_Scale_02_MX 
                              , family="binomial", data = all)
summary(yahoo_user_REC_scale)
vif(yahoo_user_REC_scale)#→なし







#パターン２ーーーーーーーーーーーーーーーーーーー
#amazon
#その他
amazon_heavy_user_another <- glm(amazon_heavy_user~all.INCOM_SA
, family="binomial", data = all)
summary(amazon_heavy_user_another)
vif(amazon_heavy_user_another)#→marrige&child削除
#趣味
amazon_heavy_user_hob <- glm(amazon_heavy_user~
                               all.HOB_20_MA +
                               all.HOB_24_MA +
                               all.HOB_06_MA +
                  
                               all.HOB_01_MA  +
                               all.HOB_23_MA  +
                               all.INCOM_SA
                               , family="binomial", data = all)
summary(amazon_heavy_user_hob)
vif(amazon_heavy_user_hob)#なし
#消費価値観
amazon_heavy_user_cons <- glm(amazon_heavy_user~
                                all.SEN_19_MA  +
                                all.SEN_15_MA  +
                                all.SEN_04_MA  +
                                all.SEN_07_MA +
                                all.SEN_10_MA 
                                , family="binomial", data = all)
summary(amazon_heavy_user_cons)
vif(amazon_heavy_user_hob)#なし
#認知要求尺度
amazon_heavy_user_nc_scale <- glm(amazon_heavy_user~all.NC_Scale_05_MX +
                                    all.NC_Scale_13_MX  +
                                    all.NC_Scale_10_MX +
                                    all.NC_Scale_02_MX 
                                    , family="binomial", data = all)
summary(amazon_heavy_user_nc_scale)

vif(amazon_heavy_user_nc_scale)#→なし
#REC
amazon_heavy_user_REC_scale <- glm(amazon_heavy_user~all.REC_Scale_04_MX +
                                     all.REC_Scale_06_MX +
                                     all.REC_Scale_03_MX +
                                     all.REC_Scale_11_MX + 
                                     all.REC_Scale_08_MX  +
                                     all.REC_Scale_09_MX , family="binomial", data = all)
summary(amazon_heavy_user_REC_scale)
vif(amazon_heavy_user_REC_scale)#→なし



#rakuten
#その他
rakuten_heavy_user_another <- glm(rakuten_heavy_user~all.SEX_CD, family="binomial", data = all)
summary(rakuten_heavy_user_another)
vif(rakuten_heavy_user_another)#なし
rakuten_heavy_user_hob <- glm(rakuten_heavy_user~all.HOB_18_MA  +
                                all.HOB_19_MA+
                                all.HOB_15_MA +
                                all.HOB_14_MA  +   
                                all.HOB_20_MA  , family="binomial", data = all)
summary(rakuten_heavy_user_hob)
vif(rakuten_heavy_user_hob)#なし
#消費価値観
rakuten_heavy_user_cons <- glm(rakuten_heavy_user~all.SEN_06_MA +
                                 all.SEN_28_MA +
                                 all.SEN_23_MA +
                                 all.SEN_04_MA  +
                                 all.SEN_19_MA +
                              
                                 all.SEN_16_MA + 
                                 all.SEN_32_MA  +
                               
                                 all.SEN_21_MA  +
                                 all.SEN_05_MA+ 
                                 all.SEN_09_MA  +    
                                 all.SEN_30_MA +
                                 all.SEN_29_MA , family="binomial", data = all)
summary(rakuten_heavy_user_cons)
vif(rakuten_heavy_user_cons)#なし

#認知要求尺度
rakuten_heavy_user_nc_scale <- glm(rakuten_heavy_user~all.NC_Scale_13_MX  +
                                     all.NC_Scale_05_MX +
                                     all.NC_Scale_07_MX , family="binomial", data = all)
summary(rakuten_heavy_user_nc_scale)

vif(rakuten_heavy_user_nc_scale)#→なし
#REC
rakuten_heavy_user_REC_scale <- glm(rakuten_heavy_user~all.REC_Scale_03_MX +
                                      all.REC_Scale_04_MX , family="binomial", data = all)
summary(rakuten_heavy_user_REC_scale)
vif(rakuten_heavy_user_REC_scale)#→なし


#yahoo
#その他
yahoo_heavy_user_another <- glm(yahoo_heavy_user~all.MARRIAGE , family="binomial", data = all)
summary(yahoo_heavy_user_another)
vif(yahoo_heavy_user_another)#maggige削除

#趣味
yahoo_heavy_user_hob <- glm(yahoo_heavy_user~all.HOB_24_MA +
                          
                              all.HOB_18_MA  + 
                              all.HOB_06_MA , family="binomial", data = all)
summary(yahoo_heavy_user_hob)
vif(yahoo_heavy_user_hob)#なし
#消費価値観
yahoo_heavy_user_cons <- glm(yahoo_heavy_user~all.SEN_30_MA  +
                               all.SEN_23_MA  +
                         
                               all.SEN_28_MA  +
                      
                               all.SEN_04_MA  + 
                               all.SEN_01_MA 
                              , family="binomial", data = all)
summary(yahoo_heavy_user_cons)
vif(yahoo_heavy_user_cons)#なし


#認知要求尺度
yahoo_heavy_user_nc_scale <- glm(yahoo_heavy_user~all.NC_Scale_06_MX +
                                   all.NC_Scale_13_MX  +
                                
                                   all.NC_Scale_12_MX  +  
                                   all.NC_Scale_14_MX  , family="binomial", data = all)
summary(yahoo_heavy_user_nc_scale)

vif(yahoo_heavy_user_nc_scale)#→なし
#REC
yahoo_heavy_user_REC_scale <- glm(yahoo_heavy_user~REC_Scale_01_MX_NEW+REC_Scale_02_MX_NEW+REC_Scale_03_MX_NEW+REC_Scale_04_MX_NEW+REC_Scale_05_MX_NEW+REC_Scale_06_MX_NEW+REC_Scale_07_MX_NEW+
                              REC_Scale_08_MX_NEW+REC_Scale_09_MX_NEW+REC_Scale_10_MX_NEW+REC_Scale_11_MX_NEW+REC_Scale_12_MX_NEW, family="binomial", data = all)
summary(yahoo_heavy_user_REC_scale)
vif(yahoo_heavy_user_REC_scale)#→なし












