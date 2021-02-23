#---------------------------------------------
#変数選択
install.packages("MASS")
library(MASS)

#パターン１

#その他
pattern1_1_amazon <- lm(amazon_user~1, data=all)
step.res1_1_amazon <- stepAIC(pattern1_1_amazon, direction="both",scope=list(
  upper= ~ all.SEX_CD+all.MARRIAGE+all.CHILD_CD+all.INCOM_SA+all.JOB_CD))
summary(step.res1_1_amazon)#→エラー
#趣味
pattern1_3_amazon <- lm(amazon_user~1, data=all)
step.res1_3_amazon <- stepAIC(pattern1_3_amazon, direction="both",scope=list(
  upper= ~ all.HOB_01_MA+all.HOB_02_MA+all.HOB_03_MA+all.HOB_04_MA+all.HOB_05_MA+all.HOB_06_MA+all.HOB_07_MA+all.HOB_08_MA+all.HOB_09_MA+all.HOB_10_MA+
    all.HOB_11_MA+all.HOB_12_MA+all.HOB_13_MA+all.HOB_14_MA+all.HOB_15_MA+all.HOB_16_MA+all.HOB_17_MA+all.HOB_18_MA+all.HOB_19_MA+all.HOB_20_MA+
    all.HOB_21_MA+all.HOB_22_MA+all.HOB_23_MA+all.HOB_24_MA+all.HOB_25_MA+all.HOB_26_MA+all.HOB_27_MA+all.HOB_28_MA+all.HOB_29_MA+all.HOB_30_MA+
    all.HOB_31_MA+all.HOB_32_MA
))
summary(step.res1_3_amazon)

#消費価値観
pattern1_4_amazon <- lm(amazon_user~1, data=all)
step.res1_4_amazon <- stepAIC(pattern1_4_amazon, direction="both",scope=list(
  upper= ~ 
    all.SEN_01_MA+all.SEN_02_MA+all.SEN_03_MA+all.SEN_04_MA+all.SEN_05_MA+all.SEN_06_MA+all.SEN_07_MA+all.SEN_08_MA+all.SEN_09_MA+all.SEN_10_MA+
    all.SEN_11_MA+all.SEN_12_MA+all.SEN_13_MA+all.SEN_14_MA+all.SEN_15_MA+all.SEN_16_MA+all.SEN_17_MA+all.SEN_18_MA+all.SEN_19_MA+all.SEN_20_MA+
    all.SEN_21_MA+all.SEN_22_MA+all.SEN_23_MA+all.SEN_24_MA+all.SEN_25_MA+all.SEN_26_MA+all.SEN_27_MA+all.SEN_28_MA+all.SEN_29_MA+all.SEN_30_MA+all.SEN_31_MA+all.SEN_32_MA+all.SEN_33_MA+all.SENS2_SA
    
))
summary(step.res1_4_amazon)

#認知要求尺度
pattern1_6_amazon <- lm(amazon_user~1, data=all)
step.res1_6_amazon <- stepAIC(pattern1_6_amazon, direction="both",scope=list(
  upper= ~
    all.NC_Scale_01_MX+all.NC_Scale_02_MX+all.NC_Scale_03_MX+all.NC_Scale_04_MX+all.NC_Scale_05_MX+all.NC_Scale_06_MX+all.NC_Scale_07_MX+all.NC_Scale_08_MX+all.NC_Scale_09_MX+all.NC_Scale_10_MX+
    all.NC_Scale_11_MX+all.NC_Scale_12_MX+all.NC_Scale_13_MX+all.NC_Scale_14_MX+all.NC_Scale_15_MX
))
summary(step.res1_6_amazon)

#REC
pattern1_7_amazon <- lm(amazon_user~1, data=all)
step.res1_7_amazon <- stepAIC(pattern1_7_amazon, direction="both",scope=list(
  upper= ~ 
    all.REC_Scale_01_MX+all.REC_Scale_02_MX+all.REC_Scale_03_MX+all.REC_Scale_04_MX+all.REC_Scale_05_MX+all.REC_Scale_06_MX+all.REC_Scale_07_MX+all.REC_Scale_08_MX+all.REC_Scale_09_MX+all.REC_Scale_10_MX+
    all.REC_Scale_11_MX+all.REC_Scale_12_MX
))
summary(step.res1_7_amazon)

#Time
pattern1_8_amazon <- lm(amazon_user~1, data=all)
step.res1_8_amazon <- stepAIC(pattern1_8_amazon, direction="both",scope=list(
  upper= ~ 
    all.NET_Time_04_01_MX+all.NET_Time_04_02_MX+all.NET_Time_04_03_MX+all.NET_Time_04_04_MX+all.NET_Time_04_05_MX+all.NET_Time_04_06_MX+all.NET_Time_04_07_MX+all.NET_Time_04_08_MX+all.NET_Time_04_09_MX+
    all.NET_Time_03_01_MX+all.NET_Time_03_02_MX+all.NET_Time_03_03_MX+all.NET_Time_03_04_MX+all.NET_Time_03_05_MX+all.NET_Time_03_06_MX+all.NET_Time_03_07_MX+all.NET_Time_03_08_MX+all.NET_Time_03_09_MX+
    all.NET_Time_02_01_MX+all.NET_Time_02_02_MX+all.NET_Time_02_03_MX+all.NET_Time_02_04_MX+all.NET_Time_02_05_MX+all.NET_Time_02_06_MX+all.NET_Time_02_07_MX+all.NET_Time_02_08_MX+all.NET_Time_02_09_MX+  
    all.NET_Time_06_01_MX+all.NET_Time_06_02_MX+all.NET_Time_06_03_MX+all.NET_Time_06_04_MX+all.NET_Time_06_05_MX+all.NET_Time_06_06_MX+all.NET_Time_06_07_MX+all.NET_Time_06_08_MX+all.NET_Time_06_09_MX+
    all.NET_Time_01_01_MX+all.NET_Time_01_02_MX+all.NET_Time_01_03_MX+all.NET_Time_01_04_MX+all.NET_Time_01_05_MX+all.NET_Time_01_06_MX+all.NET_Time_01_07_MX+all.NET_Time_01_08_MX+all.NET_Time_01_09_MX+
    all.NET_Time_15_01_MX+all.NET_Time_15_02_MX+all.NET_Time_15_03_MX+all.NET_Time_15_04_MX+all.NET_Time_15_05_MX+all.NET_Time_15_06_MX+all.NET_Time_15_07_MX+all.NET_Time_15_08_MX+all.NET_Time_15_09_MX
    
))
summary(step.res1_8_amazon)

#Device
pattern1_9_amazon <- lm(amazon_user~1, data=all)
step.res1_9_amazon <- stepAIC(pattern1_9_amazon, direction="both",scope=list(
  upper= ~ 
    all.NET_Device_04_01_MX+all.NET_Device_04_02_MX+all.NET_Device_04_03_MX+all.NET_Device_04_04_MX+
    all.NET_Device_03_01_MX+all.NET_Device_03_02_MX+all.NET_Device_03_03_MX+all.NET_Device_03_04_MX+
    all.NET_Device_04_01_MX+all.NET_Device_02_02_MX+all.NET_Device_02_03_MX+all.NET_Device_02_04_MX+
    all.NET_Device_01_01_MX+all.NET_Device_01_02_MX+all.NET_Device_01_03_MX+all.NET_Device_01_04_MX+
    all.NET_Device_06_01_MX+all.NET_Device_06_02_MX+all.NET_Device_06_03_MX+all.NET_Device_06_04_MX+
    all.NET_Device_15_01_MX+all.NET_Device_15_02_MX+all.NET_Device_15_03_MX+all.NET_Device_15_04_MX
))
summary(step.res1_9_amazon)

#購買意向
pattern1_10_amazon <- lm(amazon_user~1, data=all)
step.res1_10_amazon <- stepAIC(pattern1_10_amazon, direction="both",scope=list(
  upper= ~ 
    all.PI_CAT_01+all.PI_CAT_02+all.PI_CAT_03+all.PI_CAT_04+all.PI_CAT_05+all.PI_CAT_06+all.PI_CAT_07+all.PI_CAT_08+all.PI_CAT_09+all.PI_CAT_10+all.PI_CAT_11+all.PI_CAT_12+all.PI_CAT_28+
    all.PI_CAT_31+all.PI_CAT_32+all.PI_CAT_33+all.PI_CAT_34+all.PI_CAT_35+all.PI_CAT_36+all.PI_CAT_37+all.PI_CAT_38+all.PI_CAT_39+all.PI_CAT_40+
    all.PI_CAT_41+all.PI_CAT_42+all.PI_CAT_43+all.PI_CAT_44+all.PI_CAT_45+all.PI_CAT_46+all.PI_CAT_47+all.PI_CAT_48+all.PI_CAT_49+all.PI_CAT_50+
    all.PI_CAT_51+all.PI_CAT_52+all.PI_CAT_53+all.PI_CAT_56
))
summary(step.res1_10_amazon)


#楽天
#その他
pattern1_1_rakuten<- lm(rakuten_user~1, data=all)
step.res1_1_rakuten <- stepAIC(pattern1_1_rakuten, direction="both",scope=list(
  upper= ~ all.SEX_CD+all.MARRIAGE+all.CHILD_CD+all.INCOM_SA+all.JOB_CD))
summary(step.res1_1_rakuten)#→エラー
#趣味
pattern1_3_rakuten <- lm(rakuten_user~1, data=all)
step.res1_3_rakuten <- stepAIC(pattern1_3_rakuten, direction="both",scope=list(
  upper= ~ all.HOB_01_MA+all.HOB_02_MA+all.HOB_03_MA+all.HOB_04_MA+all.HOB_05_MA+all.HOB_06_MA+all.HOB_07_MA+all.HOB_08_MA+all.HOB_09_MA+all.HOB_10_MA+
    all.HOB_11_MA+all.HOB_12_MA+all.HOB_13_MA+all.HOB_14_MA+all.HOB_15_MA+all.HOB_16_MA+all.HOB_17_MA+all.HOB_18_MA+all.HOB_19_MA+all.HOB_20_MA+
    all.HOB_21_MA+all.HOB_22_MA+all.HOB_23_MA+all.HOB_24_MA+all.HOB_25_MA+all.HOB_26_MA+all.HOB_27_MA+all.HOB_28_MA+all.HOB_29_MA+all.HOB_30_MA+
    all.HOB_31_MA+all.HOB_32_MA
))
summary(step.res1_3_rakuten)

#消費価値観
pattern1_4_rakuten <- lm(rakuten_user~1, data=all)
step.res1_4_rakuten<- stepAIC(pattern1_4_rakuten, direction="both",scope=list(
  upper= ~ 
    all.SEN_01_MA+all.SEN_02_MA+all.SEN_03_MA+all.SEN_04_MA+all.SEN_05_MA+all.SEN_06_MA+all.SEN_07_MA+all.SEN_08_MA+all.SEN_09_MA+all.SEN_10_MA+
    all.SEN_11_MA+all.SEN_12_MA+all.SEN_13_MA+all.SEN_14_MA+all.SEN_15_MA+all.SEN_16_MA+all.SEN_17_MA+all.SEN_18_MA+all.SEN_19_MA+all.SEN_20_MA+
    all.SEN_21_MA+all.SEN_22_MA+all.SEN_23_MA+all.SEN_24_MA+all.SEN_25_MA+all.SEN_26_MA+all.SEN_27_MA+all.SEN_28_MA+all.SEN_29_MA+all.SEN_30_MA+all.SEN_31_MA+all.SEN_32_MA+all.SEN_33_MA+all.SENS2_SA
  
))
summary(step.res1_4_rakuten)

#認知要求尺度
pattern1_6_rakuten <- lm(rakuten_user~1, data=all)
step.res1_6_rakuten<- stepAIC(pattern1_6_rakuten, direction="both",scope=list(
  upper= ~
    all.NC_Scale_01_MX+all.NC_Scale_02_MX+all.NC_Scale_03_MX+all.NC_Scale_04_MX+all.NC_Scale_05_MX+all.NC_Scale_06_MX+all.NC_Scale_07_MX+all.NC_Scale_08_MX+all.NC_Scale_09_MX+all.NC_Scale_10_MX+
    all.NC_Scale_11_MX+all.NC_Scale_12_MX+all.NC_Scale_13_MX+all.NC_Scale_14_MX+all.NC_Scale_15_MX
))
summary(step.res1_6_rakuten)

#REC
pattern1_7_rakuten <- lm(rakuten_user~1, data=all)
step.res1_7_rakuten <- stepAIC(pattern1_7_rakuten, direction="both",scope=list(
  upper= ~ 
    all.REC_Scale_01_MX+all.REC_Scale_02_MX+all.REC_Scale_03_MX+all.REC_Scale_04_MX+all.REC_Scale_05_MX+all.REC_Scale_06_MX+all.REC_Scale_07_MX+all.REC_Scale_08_MX+all.REC_Scale_09_MX+all.REC_Scale_10_MX+
    all.REC_Scale_11_MX+all.REC_Scale_12_MX
))
summary(step.res1_7_rakuten)

#Time
pattern1_8_rakuten <- lm(rakuten_user~1, data=all)
step.res1_8_rakuten<- stepAIC(pattern1_8_rakuten, direction="both",scope=list(
  upper= ~ 
    all.NET_Time_04_01_MX+all.NET_Time_04_02_MX+all.NET_Time_04_03_MX+all.NET_Time_04_04_MX+all.NET_Time_04_05_MX+all.NET_Time_04_06_MX+all.NET_Time_04_07_MX+all.NET_Time_04_08_MX+all.NET_Time_04_09_MX+
    all.NET_Time_03_01_MX+all.NET_Time_03_02_MX+all.NET_Time_03_03_MX+all.NET_Time_03_04_MX+all.NET_Time_03_05_MX+all.NET_Time_03_06_MX+all.NET_Time_03_07_MX+all.NET_Time_03_08_MX+all.NET_Time_03_09_MX+
    all.NET_Time_02_01_MX+all.NET_Time_02_02_MX+all.NET_Time_02_03_MX+all.NET_Time_02_04_MX+all.NET_Time_02_05_MX+all.NET_Time_02_06_MX+all.NET_Time_02_07_MX+all.NET_Time_02_08_MX+all.NET_Time_02_09_MX+  
    all.NET_Time_06_01_MX+all.NET_Time_06_02_MX+all.NET_Time_06_03_MX+all.NET_Time_06_04_MX+all.NET_Time_06_05_MX+all.NET_Time_06_06_MX+all.NET_Time_06_07_MX+all.NET_Time_06_08_MX+all.NET_Time_06_09_MX+
    all.NET_Time_01_01_MX+all.NET_Time_01_02_MX+all.NET_Time_01_03_MX+all.NET_Time_01_04_MX+all.NET_Time_01_05_MX+all.NET_Time_01_06_MX+all.NET_Time_01_07_MX+all.NET_Time_01_08_MX+all.NET_Time_01_09_MX+
    all.NET_Time_15_01_MX+all.NET_Time_15_02_MX+all.NET_Time_15_03_MX+all.NET_Time_15_04_MX+all.NET_Time_15_05_MX+all.NET_Time_15_06_MX+all.NET_Time_15_07_MX+all.NET_Time_15_08_MX+all.NET_Time_15_09_MX
  
))
summary(step.res1_8_rakuten)

#Device
pattern1_9_rakuten <- lm(rakuten_user~1, data=all)
step.res1_9_rakuten <- stepAIC(pattern1_9_rakuten, direction="both",scope=list(
  upper= ~ 
    all.NET_Device_04_01_MX+all.NET_Device_04_02_MX+all.NET_Device_04_03_MX+all.NET_Device_04_04_MX+
    all.NET_Device_03_01_MX+all.NET_Device_03_02_MX+all.NET_Device_03_03_MX+all.NET_Device_03_04_MX+
    all.NET_Device_04_01_MX+all.NET_Device_02_02_MX+all.NET_Device_02_03_MX+all.NET_Device_02_04_MX+
    all.NET_Device_01_01_MX+all.NET_Device_01_02_MX+all.NET_Device_01_03_MX+all.NET_Device_01_04_MX+
    all.NET_Device_06_01_MX+all.NET_Device_06_02_MX+all.NET_Device_06_03_MX+all.NET_Device_06_04_MX+
    all.NET_Device_15_01_MX+all.NET_Device_15_02_MX+all.NET_Device_15_03_MX+all.NET_Device_15_04_MX
))
summary(step.res1_9_rakuten)

#購買意向
pattern1_10_rakuten <- lm(rakuten_user~1, data=all)
step.res1_10_rakuten <- stepAIC(pattern1_10_rakuten, direction="both",scope=list(
  upper= ~ 
    all.PI_CAT_01+all.PI_CAT_02+all.PI_CAT_03+all.PI_CAT_04+all.PI_CAT_05+all.PI_CAT_06+all.PI_CAT_07+all.PI_CAT_08+all.PI_CAT_09+all.PI_CAT_10+all.PI_CAT_11+all.PI_CAT_12+all.PI_CAT_28+
    all.PI_CAT_31+all.PI_CAT_32+all.PI_CAT_33+all.PI_CAT_34+all.PI_CAT_35+all.PI_CAT_36+all.PI_CAT_37+all.PI_CAT_38+all.PI_CAT_39+all.PI_CAT_40+
    all.PI_CAT_41+all.PI_CAT_42+all.PI_CAT_43+all.PI_CAT_44+all.PI_CAT_45+all.PI_CAT_46+all.PI_CAT_47+all.PI_CAT_48+all.PI_CAT_49+all.PI_CAT_50+
    all.PI_CAT_51+all.PI_CAT_52+all.PI_CAT_53+all.PI_CAT_56
))
summary(step.res1_10_rakuten)


#yahoo
#その他
pattern1_1_yahoo<- lm(yahoo_user~1, data=all)
step.res1_1_yahoo <- stepAIC(pattern1_1_yahoo, direction="both",scope=list(
  upper= ~ all.SEX_CD+all.MARRIAGE+all.CHILD_CD+all.INCOM_SA+all.JOB_CD))
summary(step.res1_1_yahoo)#→エラー
#趣味
pattern1_3_yahoo <- lm(yahoo_user~1, data=all)
step.res1_3_yahoo <- stepAIC(pattern1_3_yahoo, direction="both",scope=list(
  upper= ~ all.HOB_01_MA+all.HOB_02_MA+all.HOB_03_MA+all.HOB_04_MA+all.HOB_05_MA+all.HOB_06_MA+all.HOB_07_MA+all.HOB_08_MA+all.HOB_09_MA+all.HOB_10_MA+
    all.HOB_11_MA+all.HOB_12_MA+all.HOB_13_MA+all.HOB_14_MA+all.HOB_15_MA+all.HOB_16_MA+all.HOB_17_MA+all.HOB_18_MA+all.HOB_19_MA+all.HOB_20_MA+
    all.HOB_21_MA+all.HOB_22_MA+all.HOB_23_MA+all.HOB_24_MA+all.HOB_25_MA+all.HOB_26_MA+all.HOB_27_MA+all.HOB_28_MA+all.HOB_29_MA+all.HOB_30_MA+
    all.HOB_31_MA+all.HOB_32_MA
))
summary(step.res1_3_yahoo)

#消費価値観
pattern1_4_yahoo <- lm(yahoo_user~1, data=all)
step.res1_4_yahoo<- stepAIC(pattern1_4_yahoo, direction="both",scope=list(
  upper= ~ 
    all.SEN_01_MA+all.SEN_02_MA+all.SEN_03_MA+all.SEN_04_MA+all.SEN_05_MA+all.SEN_06_MA+all.SEN_07_MA+all.SEN_08_MA+all.SEN_09_MA+all.SEN_10_MA+
    all.SEN_11_MA+all.SEN_12_MA+all.SEN_13_MA+all.SEN_14_MA+all.SEN_15_MA+all.SEN_16_MA+all.SEN_17_MA+all.SEN_18_MA+all.SEN_19_MA+all.SEN_20_MA+
    all.SEN_21_MA+all.SEN_22_MA+all.SEN_23_MA+all.SEN_24_MA+all.SEN_25_MA+all.SEN_26_MA+all.SEN_27_MA+all.SEN_28_MA+all.SEN_29_MA+all.SEN_30_MA+all.SEN_31_MA+all.SEN_32_MA+all.SEN_33_MA+all.SENS2_SA
  
))
summary(step.res1_4_yahoo)

#認知要求尺度
pattern1_6_yahoo<- lm(yahoo_user~1, data=all)
step.res1_6_yahoo<- stepAIC(pattern1_6_yahoo, direction="both",scope=list(
  upper= ~
    all.NC_Scale_01_MX+all.NC_Scale_02_MX+all.NC_Scale_03_MX+all.NC_Scale_04_MX+all.NC_Scale_05_MX+all.NC_Scale_06_MX+all.NC_Scale_07_MX+all.NC_Scale_08_MX+all.NC_Scale_09_MX+all.NC_Scale_10_MX+
    all.NC_Scale_11_MX+all.NC_Scale_12_MX+all.NC_Scale_13_MX+all.NC_Scale_14_MX+all.NC_Scale_15_MX
))
summary(step.res1_6_yahoo)

#REC
pattern1_7_yahoo <- lm(yahoo_user~1, data=all)
step.res1_7_yahoo <- stepAIC(pattern1_7_yahoo, direction="both",scope=list(
  upper= ~ 
    all.REC_Scale_01_MX+all.REC_Scale_02_MX+all.REC_Scale_03_MX+all.REC_Scale_04_MX+all.REC_Scale_05_MX+all.REC_Scale_06_MX+all.REC_Scale_07_MX+all.REC_Scale_08_MX+all.REC_Scale_09_MX+all.REC_Scale_10_MX+
    all.REC_Scale_11_MX+all.REC_Scale_12_MX
))
summary(step.res1_7_yahoo)

#Time
pattern1_8_yahoo <- lm(yahoo_user~1, data=all)
step.res1_8_yahoo<- stepAIC(pattern1_8_yahoo, direction="both",scope=list(
  upper= ~ 
    all.NET_Time_04_01_MX+all.NET_Time_04_02_MX+all.NET_Time_04_03_MX+all.NET_Time_04_04_MX+all.NET_Time_04_05_MX+all.NET_Time_04_06_MX+all.NET_Time_04_07_MX+all.NET_Time_04_08_MX+all.NET_Time_04_09_MX+
    all.NET_Time_03_01_MX+all.NET_Time_03_02_MX+all.NET_Time_03_03_MX+all.NET_Time_03_04_MX+all.NET_Time_03_05_MX+all.NET_Time_03_06_MX+all.NET_Time_03_07_MX+all.NET_Time_03_08_MX+all.NET_Time_03_09_MX+
    all.NET_Time_02_01_MX+all.NET_Time_02_02_MX+all.NET_Time_02_03_MX+all.NET_Time_02_04_MX+all.NET_Time_02_05_MX+all.NET_Time_02_06_MX+all.NET_Time_02_07_MX+all.NET_Time_02_08_MX+all.NET_Time_02_09_MX+  
    all.NET_Time_06_01_MX+all.NET_Time_06_02_MX+all.NET_Time_06_03_MX+all.NET_Time_06_04_MX+all.NET_Time_06_05_MX+all.NET_Time_06_06_MX+all.NET_Time_06_07_MX+all.NET_Time_06_08_MX+all.NET_Time_06_09_MX+
    all.NET_Time_01_01_MX+all.NET_Time_01_02_MX+all.NET_Time_01_03_MX+all.NET_Time_01_04_MX+all.NET_Time_01_05_MX+all.NET_Time_01_06_MX+all.NET_Time_01_07_MX+all.NET_Time_01_08_MX+all.NET_Time_01_09_MX+
    all.NET_Time_15_01_MX+all.NET_Time_15_02_MX+all.NET_Time_15_03_MX+all.NET_Time_15_04_MX+all.NET_Time_15_05_MX+all.NET_Time_15_06_MX+all.NET_Time_15_07_MX+all.NET_Time_15_08_MX+all.NET_Time_15_09_MX
  
))
summary(step.res1_8_yahoo)

#Device
pattern1_9_yahoo <- lm(yahoo_user~1, data=all)
step.res1_9_yahoo <- stepAIC(pattern1_9_yahoo, direction="both",scope=list(
  upper= ~ 
    all.NET_Device_04_01_MX+all.NET_Device_04_02_MX+all.NET_Device_04_03_MX+all.NET_Device_04_04_MX+
    all.NET_Device_03_01_MX+all.NET_Device_03_02_MX+all.NET_Device_03_03_MX+all.NET_Device_03_04_MX+
    all.NET_Device_04_01_MX+all.NET_Device_02_02_MX+all.NET_Device_02_03_MX+all.NET_Device_02_04_MX+
    all.NET_Device_01_01_MX+all.NET_Device_01_02_MX+all.NET_Device_01_03_MX+all.NET_Device_01_04_MX+
    all.NET_Device_06_01_MX+all.NET_Device_06_02_MX+all.NET_Device_06_03_MX+all.NET_Device_06_04_MX+
    all.NET_Device_15_01_MX+all.NET_Device_15_02_MX+all.NET_Device_15_03_MX+all.NET_Device_15_04_MX
))
summary(step.res1_9_yahoo)

#購買意向
pattern1_10_yahoo <- lm(yahoo_user~1, data=all)
step.res1_10_yahoo<- stepAIC(pattern1_10_yahoo, direction="both",scope=list(
  upper= ~ 
    all.PI_CAT_01+all.PI_CAT_02+all.PI_CAT_03+all.PI_CAT_04+all.PI_CAT_05+all.PI_CAT_06+all.PI_CAT_07+all.PI_CAT_08+all.PI_CAT_09+all.PI_CAT_10+all.PI_CAT_11+all.PI_CAT_12+all.PI_CAT_28+
    all.PI_CAT_31+all.PI_CAT_32+all.PI_CAT_33+all.PI_CAT_34+all.PI_CAT_35+all.PI_CAT_36+all.PI_CAT_37+all.PI_CAT_38+all.PI_CAT_39+all.PI_CAT_40+
    all.PI_CAT_41+all.PI_CAT_42+all.PI_CAT_43+all.PI_CAT_44+all.PI_CAT_45+all.PI_CAT_46+all.PI_CAT_47+all.PI_CAT_48+all.PI_CAT_49+all.PI_CAT_50+
    all.PI_CAT_51+all.PI_CAT_52+all.PI_CAT_53+all.PI_CAT_56
))
summary(step.res1_10_yahoo)


#---------------------------------------------ーーーーーーーーーーーーーーーーーーー
#変数選択
#パターン2

#その他
pattern1_1_amazon_heavy <- lm(amazon_heavy_user~1, data=all)
step.res1_1_amazon_heavy <- stepAIC(pattern1_1_amazon_heavy, direction="both",scope=list(
  upper= ~ all.SEX_CD+all.MARRIAGE+all.CHILD_CD+all.INCOM_SA+all.JOB_CD))
summary(step.res1_1_amazon_heavy)#→エラー
#趣味
pattern1_3_amazon_heavy <- lm(amazon_heavy_user~1, data=all)
step.res1_3_amazon_heavy <- stepAIC(pattern1_3_amazon_heavy, direction="both",scope=list(
  upper= ~ all.HOB_01_MA+all.HOB_02_MA+all.HOB_03_MA+all.HOB_04_MA+all.HOB_05_MA+all.HOB_06_MA+all.HOB_07_MA+all.HOB_08_MA+all.HOB_09_MA+all.HOB_10_MA+
    all.HOB_11_MA+all.HOB_12_MA+all.HOB_13_MA+all.HOB_14_MA+all.HOB_15_MA+all.HOB_16_MA+all.HOB_17_MA+all.HOB_18_MA+all.HOB_19_MA+all.HOB_20_MA+
    all.HOB_21_MA+all.HOB_22_MA+all.HOB_23_MA+all.HOB_24_MA+all.HOB_25_MA+all.HOB_26_MA+all.HOB_27_MA+all.HOB_28_MA+all.HOB_29_MA+all.HOB_30_MA+
    all.HOB_31_MA+all.HOB_32_MA
))
summary(step.res1_3_amazon_heavy)

#消費価値観
pattern1_4_amazon_heavy <- lm(amazon_heavy_user~1, data=all)
step.res1_4_amazon_heavy <- stepAIC(pattern1_4_amazon_heavy, direction="both",scope=list(
  upper= ~ 
    all.SEN_01_MA+all.SEN_02_MA+all.SEN_03_MA+all.SEN_04_MA+all.SEN_05_MA+all.SEN_06_MA+all.SEN_07_MA+all.SEN_08_MA+all.SEN_09_MA+all.SEN_10_MA+
    all.SEN_11_MA+all.SEN_12_MA+all.SEN_13_MA+all.SEN_14_MA+all.SEN_15_MA+all.SEN_16_MA+all.SEN_17_MA+all.SEN_18_MA+all.SEN_19_MA+all.SEN_20_MA+
    all.SEN_21_MA+all.SEN_22_MA+all.SEN_23_MA+all.SEN_24_MA+all.SEN_25_MA+all.SEN_26_MA+all.SEN_27_MA+all.SEN_28_MA+all.SEN_29_MA+all.SEN_30_MA+all.SEN_31_MA+all.SEN_32_MA+all.SEN_33_MA+all.SENS2_SA
  
))
summary(step.res1_4_amazon_heavy)

#認知要求尺度
pattern1_6_amazon_heavy <- lm(amazon_heavy_user~1, data=all)
step.res1_6_amazon_heavy <- stepAIC(pattern1_6_amazon_heavy, direction="both",scope=list(
  upper= ~
    all.NC_Scale_01_MX+all.NC_Scale_02_MX+all.NC_Scale_03_MX+all.NC_Scale_04_MX+all.NC_Scale_05_MX+all.NC_Scale_06_MX+all.NC_Scale_07_MX+all.NC_Scale_08_MX+all.NC_Scale_09_MX+all.NC_Scale_10_MX+
    all.NC_Scale_11_MX+all.NC_Scale_12_MX+all.NC_Scale_13_MX+all.NC_Scale_14_MX+all.NC_Scale_15_MX
))
summary(step.res1_6_amazon_heavy)

#REC
pattern1_7_amazon_heavy <- lm(amazon_heavy_user~1, data=all)
step.res1_7_amazon_heavy <- stepAIC(pattern1_7_amazon_heavy, direction="both",scope=list(
  upper= ~ 
    all.REC_Scale_01_MX+all.REC_Scale_02_MX+all.REC_Scale_03_MX+all.REC_Scale_04_MX+all.REC_Scale_05_MX+all.REC_Scale_06_MX+all.REC_Scale_07_MX+all.REC_Scale_08_MX+all.REC_Scale_09_MX+all.REC_Scale_10_MX+
    all.REC_Scale_11_MX+all.REC_Scale_12_MX
))
summary(step.res1_7_amazon_heavy)

#Time
pattern1_8_amazon_heavy <- lm(amazon_heavy_user~1, data=all)
step.res1_8_amazon_heavy <- stepAIC(pattern1_8_amazon_heavy, direction="both",scope=list(
  upper= ~ 
    all.NET_Time_04_01_MX+all.NET_Time_04_02_MX+all.NET_Time_04_03_MX+all.NET_Time_04_04_MX+all.NET_Time_04_05_MX+all.NET_Time_04_06_MX+all.NET_Time_04_07_MX+all.NET_Time_04_08_MX+all.NET_Time_04_09_MX+
    all.NET_Time_03_01_MX+all.NET_Time_03_02_MX+all.NET_Time_03_03_MX+all.NET_Time_03_04_MX+all.NET_Time_03_05_MX+all.NET_Time_03_06_MX+all.NET_Time_03_07_MX+all.NET_Time_03_08_MX+all.NET_Time_03_09_MX+
    all.NET_Time_02_01_MX+all.NET_Time_02_02_MX+all.NET_Time_02_03_MX+all.NET_Time_02_04_MX+all.NET_Time_02_05_MX+all.NET_Time_02_06_MX+all.NET_Time_02_07_MX+all.NET_Time_02_08_MX+all.NET_Time_02_09_MX+  
    all.NET_Time_06_01_MX+all.NET_Time_06_02_MX+all.NET_Time_06_03_MX+all.NET_Time_06_04_MX+all.NET_Time_06_05_MX+all.NET_Time_06_06_MX+all.NET_Time_06_07_MX+all.NET_Time_06_08_MX+all.NET_Time_06_09_MX+
    all.NET_Time_01_01_MX+all.NET_Time_01_02_MX+all.NET_Time_01_03_MX+all.NET_Time_01_04_MX+all.NET_Time_01_05_MX+all.NET_Time_01_06_MX+all.NET_Time_01_07_MX+all.NET_Time_01_08_MX+all.NET_Time_01_09_MX+
    all.NET_Time_15_01_MX+all.NET_Time_15_02_MX+all.NET_Time_15_03_MX+all.NET_Time_15_04_MX+all.NET_Time_15_05_MX+all.NET_Time_15_06_MX+all.NET_Time_15_07_MX+all.NET_Time_15_08_MX+all.NET_Time_15_09_MX
  
))
summary(step.res1_8_amazon_heavy)

#Device
pattern1_9_amazon_heavy <- lm(amazon_heavy_user~1, data=all)
step.res1_9_amazon_heavy <- stepAIC(pattern1_9_amazon_heavy, direction="both",scope=list(
  upper= ~ 
    all.NET_Device_04_01_MX+all.NET_Device_04_02_MX+all.NET_Device_04_03_MX+all.NET_Device_04_04_MX+
    all.NET_Device_03_01_MX+all.NET_Device_03_02_MX+all.NET_Device_03_03_MX+all.NET_Device_03_04_MX+
    all.NET_Device_04_01_MX+all.NET_Device_02_02_MX+all.NET_Device_02_03_MX+all.NET_Device_02_04_MX+
    all.NET_Device_01_01_MX+all.NET_Device_01_02_MX+all.NET_Device_01_03_MX+all.NET_Device_01_04_MX+
    all.NET_Device_06_01_MX+all.NET_Device_06_02_MX+all.NET_Device_06_03_MX+all.NET_Device_06_04_MX+
    all.NET_Device_15_01_MX+all.NET_Device_15_02_MX+all.NET_Device_15_03_MX+all.NET_Device_15_04_MX
))
summary(step.res1_9_amazon_heavy)

#購買意向
pattern1_10_amazon_heavy <- lm(amazon_heavy_user~1, data=all)
step.res1_10_amazon_heavy <- stepAIC(pattern1_10_amazon_heavy, direction="both",scope=list(
  upper= ~ 
    all.PI_CAT_01+all.PI_CAT_02+all.PI_CAT_03+all.PI_CAT_04+all.PI_CAT_05+all.PI_CAT_06+all.PI_CAT_07+all.PI_CAT_08+all.PI_CAT_09+all.PI_CAT_10+all.PI_CAT_11+all.PI_CAT_12+all.PI_CAT_28+
    all.PI_CAT_31+all.PI_CAT_32+all.PI_CAT_33+all.PI_CAT_34+all.PI_CAT_35+all.PI_CAT_36+all.PI_CAT_37+all.PI_CAT_38+all.PI_CAT_39+all.PI_CAT_40+
    all.PI_CAT_41+all.PI_CAT_42+all.PI_CAT_43+all.PI_CAT_44+all.PI_CAT_45+all.PI_CAT_46+all.PI_CAT_47+all.PI_CAT_48+all.PI_CAT_49+all.PI_CAT_50+
    all.PI_CAT_51+all.PI_CAT_52+all.PI_CAT_53+all.PI_CAT_56
))
summary(step.res1_10_amazon_heavy)


#楽天
#その他
pattern1_1_rakuten_heavy<- lm(rakuten_heavy_user~1, data=all)
step.res1_1_rakuten_heavy <- stepAIC(pattern1_1_rakuten_heavy, direction="both",scope=list(
  upper= ~ all.SEX_CD+all.MARRIAGE+all.CHILD_CD+all.INCOM_SA+all.JOB_CD))
summary(step.res1_1_rakuten_heavy)#→エラー
#趣味
pattern1_3_rakuten_heavy <- lm(rakuten_heavy_user~1, data=all)
step.res1_3_rakuten_heavy <- stepAIC(pattern1_3_rakuten_heavy, direction="both",scope=list(
  upper= ~ all.HOB_01_MA+all.HOB_02_MA+all.HOB_03_MA+all.HOB_04_MA+all.HOB_05_MA+all.HOB_06_MA+all.HOB_07_MA+all.HOB_08_MA+all.HOB_09_MA+all.HOB_10_MA+
    all.HOB_11_MA+all.HOB_12_MA+all.HOB_13_MA+all.HOB_14_MA+all.HOB_15_MA+all.HOB_16_MA+all.HOB_17_MA+all.HOB_18_MA+all.HOB_19_MA+all.HOB_20_MA+
    all.HOB_21_MA+all.HOB_22_MA+all.HOB_23_MA+all.HOB_24_MA+all.HOB_25_MA+all.HOB_26_MA+all.HOB_27_MA+all.HOB_28_MA+all.HOB_29_MA+all.HOB_30_MA+
    all.HOB_31_MA+all.HOB_32_MA
))
summary(step.res1_3_rakuten_heavy)

#消費価値観
pattern1_4_rakuten_heavy <- lm(rakuten_heavy_user~1, data=all)
step.res1_4_rakuten_heavy<- stepAIC(pattern1_4_rakuten_heavy, direction="both",scope=list(
  upper= ~ 
    all.SEN_01_MA+all.SEN_02_MA+all.SEN_03_MA+all.SEN_04_MA+all.SEN_05_MA+all.SEN_06_MA+all.SEN_07_MA+all.SEN_08_MA+all.SEN_09_MA+all.SEN_10_MA+
    all.SEN_11_MA+all.SEN_12_MA+all.SEN_13_MA+all.SEN_14_MA+all.SEN_15_MA+all.SEN_16_MA+all.SEN_17_MA+all.SEN_18_MA+all.SEN_19_MA+all.SEN_20_MA+
    all.SEN_21_MA+all.SEN_22_MA+all.SEN_23_MA+all.SEN_24_MA+all.SEN_25_MA+all.SEN_26_MA+all.SEN_27_MA+all.SEN_28_MA+all.SEN_29_MA+all.SEN_30_MA+all.SEN_31_MA+all.SEN_32_MA+all.SEN_33_MA+all.SENS2_SA
  
))
summary(step.res1_4_rakuten_heavy)

#認知要求尺度
pattern1_6_rakuten_heavy <- lm(rakuten_heavy_user~1, data=all)
step.res1_6_rakuten_heavy<- stepAIC(pattern1_6_rakuten_heavy, direction="both",scope=list(
  upper= ~
    all.NC_Scale_01_MX+all.NC_Scale_02_MX+all.NC_Scale_03_MX+all.NC_Scale_04_MX+all.NC_Scale_05_MX+all.NC_Scale_06_MX+all.NC_Scale_07_MX+all.NC_Scale_08_MX+all.NC_Scale_09_MX+all.NC_Scale_10_MX+
    all.NC_Scale_11_MX+all.NC_Scale_12_MX+all.NC_Scale_13_MX+all.NC_Scale_14_MX+all.NC_Scale_15_MX
))
summary(step.res1_6_rakuten_heavy)

#REC
pattern1_7_rakuten_heavy <- lm(rakuten_heavy_user~1, data=all)
step.res1_7_rakuten_heavy <- stepAIC(pattern1_7_rakuten_heavy, direction="both",scope=list(
  upper= ~ 
    all.REC_Scale_01_MX+all.REC_Scale_02_MX+all.REC_Scale_03_MX+all.REC_Scale_04_MX+all.REC_Scale_05_MX+all.REC_Scale_06_MX+all.REC_Scale_07_MX+all.REC_Scale_08_MX+all.REC_Scale_09_MX+all.REC_Scale_10_MX+
    all.REC_Scale_11_MX+all.REC_Scale_12_MX
))
summary(step.res1_7_rakuten_heavy)

#Time
pattern1_8_rakuten_heavy <- lm(rakuten_heavy_user~1, data=all)
step.res1_8_rakuten_heavy<- stepAIC(pattern1_8_rakuten_heavy, direction="both",scope=list(
  upper= ~ 
    all.NET_Time_04_01_MX+all.NET_Time_04_02_MX+all.NET_Time_04_03_MX+all.NET_Time_04_04_MX+all.NET_Time_04_05_MX+all.NET_Time_04_06_MX+all.NET_Time_04_07_MX+all.NET_Time_04_08_MX+all.NET_Time_04_09_MX+
    all.NET_Time_03_01_MX+all.NET_Time_03_02_MX+all.NET_Time_03_03_MX+all.NET_Time_03_04_MX+all.NET_Time_03_05_MX+all.NET_Time_03_06_MX+all.NET_Time_03_07_MX+all.NET_Time_03_08_MX+all.NET_Time_03_09_MX+
    all.NET_Time_02_01_MX+all.NET_Time_02_02_MX+all.NET_Time_02_03_MX+all.NET_Time_02_04_MX+all.NET_Time_02_05_MX+all.NET_Time_02_06_MX+all.NET_Time_02_07_MX+all.NET_Time_02_08_MX+all.NET_Time_02_09_MX+  
    all.NET_Time_06_01_MX+all.NET_Time_06_02_MX+all.NET_Time_06_03_MX+all.NET_Time_06_04_MX+all.NET_Time_06_05_MX+all.NET_Time_06_06_MX+all.NET_Time_06_07_MX+all.NET_Time_06_08_MX+all.NET_Time_06_09_MX+
    all.NET_Time_01_01_MX+all.NET_Time_01_02_MX+all.NET_Time_01_03_MX+all.NET_Time_01_04_MX+all.NET_Time_01_05_MX+all.NET_Time_01_06_MX+all.NET_Time_01_07_MX+all.NET_Time_01_08_MX+all.NET_Time_01_09_MX+
    all.NET_Time_15_01_MX+all.NET_Time_15_02_MX+all.NET_Time_15_03_MX+all.NET_Time_15_04_MX+all.NET_Time_15_05_MX+all.NET_Time_15_06_MX+all.NET_Time_15_07_MX+all.NET_Time_15_08_MX+all.NET_Time_15_09_MX
  
))
summary(step.res1_8_rakuten_heavy)

#Device
pattern1_9_rakuten_heavy <- lm(rakuten_heavy_user~1, data=all)
step.res1_9_rakuten_heavy <- stepAIC(pattern1_9_rakuten_heavy, direction="both",scope=list(
  upper= ~ 
    all.NET_Device_04_01_MX+all.NET_Device_04_02_MX+all.NET_Device_04_03_MX+all.NET_Device_04_04_MX+
    all.NET_Device_03_01_MX+all.NET_Device_03_02_MX+all.NET_Device_03_03_MX+all.NET_Device_03_04_MX+
    all.NET_Device_04_01_MX+all.NET_Device_02_02_MX+all.NET_Device_02_03_MX+all.NET_Device_02_04_MX+
    all.NET_Device_01_01_MX+all.NET_Device_01_02_MX+all.NET_Device_01_03_MX+all.NET_Device_01_04_MX+
    all.NET_Device_06_01_MX+all.NET_Device_06_02_MX+all.NET_Device_06_03_MX+all.NET_Device_06_04_MX+
    all.NET_Device_15_01_MX+all.NET_Device_15_02_MX+all.NET_Device_15_03_MX+all.NET_Device_15_04_MX
))
summary(step.res1_9_rakuten_heavy)

#購買意向
pattern1_10_rakuten_heavy <- lm(rakuten_heavy_user~1, data=all)
step.res1_10_rakuten_heavy <- stepAIC(pattern1_10_rakuten_heavy, direction="both",scope=list(
  upper= ~ 
    all.PI_CAT_01+all.PI_CAT_02+all.PI_CAT_03+all.PI_CAT_04+all.PI_CAT_05+all.PI_CAT_06+all.PI_CAT_07+all.PI_CAT_08+all.PI_CAT_09+all.PI_CAT_10+all.PI_CAT_11+all.PI_CAT_12+all.PI_CAT_28+
    all.PI_CAT_31+all.PI_CAT_32+all.PI_CAT_33+all.PI_CAT_34+all.PI_CAT_35+all.PI_CAT_36+all.PI_CAT_37+all.PI_CAT_38+all.PI_CAT_39+all.PI_CAT_40+
    all.PI_CAT_41+all.PI_CAT_42+all.PI_CAT_43+all.PI_CAT_44+all.PI_CAT_45+all.PI_CAT_46+all.PI_CAT_47+all.PI_CAT_48+all.PI_CAT_49+all.PI_CAT_50+
    all.PI_CAT_51+all.PI_CAT_52+all.PI_CAT_53+all.PI_CAT_56
))
summary(step.res1_10_rakuten_heavy)


#yahoo
#その他
pattern1_1_yahoo_heavy<- lm(yahoo_heavy_user~1, data=all)
step.res1_1_yahoo_heavy <- stepAIC(pattern1_1_yahoo_heavy, direction="both",scope=list(
  upper= ~ all.SEX_CD+all.MARRIAGE+all.CHILD_CD+all.INCOM_SA+all.JOB_CD))
summary(step.res1_1_yahoo_heavy)#→エラー
#趣味
pattern1_3_yahoo_heavy <- lm(yahoo_heavy_user~1, data=all)
step.res1_3_yahoo_heavy <- stepAIC(pattern1_3_yahoo_heavy, direction="both",scope=list(
  upper= ~ all.HOB_01_MA+all.HOB_02_MA+all.HOB_03_MA+all.HOB_04_MA+all.HOB_05_MA+all.HOB_06_MA+all.HOB_07_MA+all.HOB_08_MA+all.HOB_09_MA+all.HOB_10_MA+
    all.HOB_11_MA+all.HOB_12_MA+all.HOB_13_MA+all.HOB_14_MA+all.HOB_15_MA+all.HOB_16_MA+all.HOB_17_MA+all.HOB_18_MA+all.HOB_19_MA+all.HOB_20_MA+
    all.HOB_21_MA+all.HOB_22_MA+all.HOB_23_MA+all.HOB_24_MA+all.HOB_25_MA+all.HOB_26_MA+all.HOB_27_MA+all.HOB_28_MA+all.HOB_29_MA+all.HOB_30_MA+
    all.HOB_31_MA+all.HOB_32_MA
))
summary(step.res1_3_yahoo_heavy)

#消費価値観
pattern1_4_yahoo_heavy <- lm(yahoo_heavy_user~1, data=all)
step.res1_4_yahoo_heavy<- stepAIC(pattern1_4_yahoo_heavy, direction="both",scope=list(
  upper= ~ 
    all.SEN_01_MA+all.SEN_02_MA+all.SEN_03_MA+all.SEN_04_MA+all.SEN_05_MA+all.SEN_06_MA+all.SEN_07_MA+all.SEN_08_MA+all.SEN_09_MA+all.SEN_10_MA+
    all.SEN_11_MA+all.SEN_12_MA+all.SEN_13_MA+all.SEN_14_MA+all.SEN_15_MA+all.SEN_16_MA+all.SEN_17_MA+all.SEN_18_MA+all.SEN_19_MA+all.SEN_20_MA+
    all.SEN_21_MA+all.SEN_22_MA+all.SEN_23_MA+all.SEN_24_MA+all.SEN_25_MA+all.SEN_26_MA+all.SEN_27_MA+all.SEN_28_MA+all.SEN_29_MA+all.SEN_30_MA+all.SEN_31_MA+all.SEN_32_MA+all.SEN_33_MA+all.SENS2_SA
  
))
summary(step.res1_4_yahoo_heavy)

#認知要求尺度
pattern1_6_yahoo_heavy<- lm(yahoo_heavy_user~1, data=all)
step.res1_6_yahoo_heavy<- stepAIC(pattern1_6_yahoo_heavy, direction="both",scope=list(
  upper= ~
    all.NC_Scale_01_MX+all.NC_Scale_02_MX+all.NC_Scale_03_MX+all.NC_Scale_04_MX+all.NC_Scale_05_MX+all.NC_Scale_06_MX+all.NC_Scale_07_MX+all.NC_Scale_08_MX+all.NC_Scale_09_MX+all.NC_Scale_10_MX+
    all.NC_Scale_11_MX+all.NC_Scale_12_MX+all.NC_Scale_13_MX+all.NC_Scale_14_MX+all.NC_Scale_15_MX
))
summary(step.res1_6_yahoo_heavy)

#REC
pattern1_7_yahoo_heavy <- lm(yahoo_heavy_user~1, data=all)
step.res1_7_yahoo_heavy <- stepAIC(pattern1_7_yahoo_heavy, direction="both",scope=list(
  upper= ~ 
    all.REC_Scale_01_MX+all.REC_Scale_02_MX+all.REC_Scale_03_MX+all.REC_Scale_04_MX+all.REC_Scale_05_MX+all.REC_Scale_06_MX+all.REC_Scale_07_MX+all.REC_Scale_08_MX+all.REC_Scale_09_MX+all.REC_Scale_10_MX+
    all.REC_Scale_11_MX+all.REC_Scale_12_MX
))
summary(step.res1_7_yahoo_heavy)

#Time
pattern1_8_yahoo_heavy <- lm(yahoo_heavy_user~1, data=all)
step.res1_8_yahoo_heavy<- stepAIC(pattern1_8_yahoo_heavy, direction="both",scope=list(
  upper= ~ 
    all.NET_Time_04_01_MX+all.NET_Time_04_02_MX+all.NET_Time_04_03_MX+all.NET_Time_04_04_MX+all.NET_Time_04_05_MX+all.NET_Time_04_06_MX+all.NET_Time_04_07_MX+all.NET_Time_04_08_MX+all.NET_Time_04_09_MX+
    all.NET_Time_03_01_MX+all.NET_Time_03_02_MX+all.NET_Time_03_03_MX+all.NET_Time_03_04_MX+all.NET_Time_03_05_MX+all.NET_Time_03_06_MX+all.NET_Time_03_07_MX+all.NET_Time_03_08_MX+all.NET_Time_03_09_MX+
    all.NET_Time_02_01_MX+all.NET_Time_02_02_MX+all.NET_Time_02_03_MX+all.NET_Time_02_04_MX+all.NET_Time_02_05_MX+all.NET_Time_02_06_MX+all.NET_Time_02_07_MX+all.NET_Time_02_08_MX+all.NET_Time_02_09_MX+  
    all.NET_Time_06_01_MX+all.NET_Time_06_02_MX+all.NET_Time_06_03_MX+all.NET_Time_06_04_MX+all.NET_Time_06_05_MX+all.NET_Time_06_06_MX+all.NET_Time_06_07_MX+all.NET_Time_06_08_MX+all.NET_Time_06_09_MX+
    all.NET_Time_01_01_MX+all.NET_Time_01_02_MX+all.NET_Time_01_03_MX+all.NET_Time_01_04_MX+all.NET_Time_01_05_MX+all.NET_Time_01_06_MX+all.NET_Time_01_07_MX+all.NET_Time_01_08_MX+all.NET_Time_01_09_MX+
    all.NET_Time_15_01_MX+all.NET_Time_15_02_MX+all.NET_Time_15_03_MX+all.NET_Time_15_04_MX+all.NET_Time_15_05_MX+all.NET_Time_15_06_MX+all.NET_Time_15_07_MX+all.NET_Time_15_08_MX+all.NET_Time_15_09_MX
  
))
summary(step.res1_8_yahoo_heavy)

#Device
pattern1_9_yahoo_heavy <- lm(yahoo_heavy_user~1, data=all)
step.res1_9_yahoo_heavy <- stepAIC(pattern1_9_yahoo_heavy, direction="both",scope=list(
  upper= ~ 
    all.NET_Device_04_01_MX+all.NET_Device_04_02_MX+all.NET_Device_04_03_MX+all.NET_Device_04_04_MX+
    all.NET_Device_03_01_MX+all.NET_Device_03_02_MX+all.NET_Device_03_03_MX+all.NET_Device_03_04_MX+
    all.NET_Device_04_01_MX+all.NET_Device_02_02_MX+all.NET_Device_02_03_MX+all.NET_Device_02_04_MX+
    all.NET_Device_01_01_MX+all.NET_Device_01_02_MX+all.NET_Device_01_03_MX+all.NET_Device_01_04_MX+
    all.NET_Device_06_01_MX+all.NET_Device_06_02_MX+all.NET_Device_06_03_MX+all.NET_Device_06_04_MX+
    all.NET_Device_15_01_MX+all.NET_Device_15_02_MX+all.NET_Device_15_03_MX+all.NET_Device_15_04_MX
))
summary(step.res1_9_yahoo_heavy)

#購買意向
pattern1_10_yahoo_heavy <- lm(yahoo_heavy_user~1, data=all)
step.res1_10_yahoo_heavy<- stepAIC(pattern1_10_yahoo_heavy, direction="both",scope=list(
  upper= ~ 
    all.PI_CAT_01+all.PI_CAT_02+all.PI_CAT_03+all.PI_CAT_04+all.PI_CAT_05+all.PI_CAT_06+all.PI_CAT_07+all.PI_CAT_08+all.PI_CAT_09+all.PI_CAT_10+all.PI_CAT_11+all.PI_CAT_12+all.PI_CAT_28+
    all.PI_CAT_31+all.PI_CAT_32+all.PI_CAT_33+all.PI_CAT_34+all.PI_CAT_35+all.PI_CAT_36+all.PI_CAT_37+all.PI_CAT_38+all.PI_CAT_39+all.PI_CAT_40+
    all.PI_CAT_41+all.PI_CAT_42+all.PI_CAT_43+all.PI_CAT_44+all.PI_CAT_45+all.PI_CAT_46+all.PI_CAT_47+all.PI_CAT_48+all.PI_CAT_49+all.PI_CAT_50+
    all.PI_CAT_51+all.PI_CAT_52+all.PI_CAT_53+all.PI_CAT_56
))
summary(step.res1_10_yahoo_heavy)

