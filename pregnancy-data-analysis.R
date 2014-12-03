library(ggplot2)
library(vcd)
library(lattice)


# How have outcomes changed over time?
pg_copy <- pg2002
pg_copy

head(pg2002)
counts

pg_copy$Outcome[pg_copy$Outcome == "Stillbirth"] <- "Fetal Loss" 
pg_copy$Outcome[pg_copy$Outcome == "Miscarriage"] <- "Fetal Loss" 
pg_copy$Outcome[pg_copy$Outcome == "Ectopic Pregnancy"] <- "Fetal Loss" 

pg_outcome <- subset(pg_copy, Outcome == "Fetal Loss" | Outcome == "Live birth" | Outcome == "Abortion")

counts <- table(pg_outcome$Outcome, pg_outcome$IFSS_SOURCE)
percentages <- prop.table(counts, margin=2)*100
percentages

barplot(percentages)




# How has fetal loss changed over time?

pg_fetal_loss <- subset(pg2002, Outcome == "Stillbirth" | Outcome == "Miscarriage" | Outcome == "Ectopic Pregnancy")

fl_counts <- table(pg_fetal_loss$Outcome, pg_fetal_loss$IFSS_SOURCE)
fl_percentages <- prop.table(fl_counts, margin=2)*100
fl_percentages

barplot(fl_percentages)




# What is the relationship of fetal loss with other variables?

pg2002$FetalLoss <- "No"
pg2002$FetalLoss[pg2002$Outcome == "Stillbirth"] <- "Yes" 
pg2002$FetalLoss[pg2002$Outcome == "Miscarriage"] <- "Yes" 
pg2002$FetalLoss[pg2002$Outcome == "Ectopic Pregnancy"] <- "Yes" 

pg2002$FetalLossL <- 1
pg2002$FetalLossL[pg2002$FetalLoss == "No"] <- 0 


# relationships - Age_End_of_Pregnancy, Weeks_at_First_Prenatal_Care
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=FetalLoss)) + geom_density() 
ggplot(pg2002, aes(x=Weeks_at_First_Prenatal_Care, colour=FetalLoss)) + geom_density() 
ggplot(pg2002, aes(x=Feeling_About_Pregnancy, colour=FetalLoss)) + geom_density()
ggplot(pg2002, aes(x=Pregnancy_Number, colour=FetalLoss)) + geom_density() 
ggplot(pg2002, aes(x=Knew_Pregnant_Weeks, colour=FetalLoss)) + geom_density()


# there does appear to be a relationship here
mosaic( ~ FetalLoss + BirthControlUsedAtConception, data = pg2002,
        labeling_args = list(set_varnames = c(sex = "", BirthControlUsedAtConception = "BirthControlUsedAtConception")),
        highlighting = "BirthControlUsedAtConception",
        highlighting_fill = c("cornsilk","violet","blue"),
        rot_labels = c(left = 0, top = 0),
        pos_labels = c("center","center"),
        offset_labels = c(0.0,0.6))

# small relationship - need to subset with no datas removed
pg_pwb <- subset(pg2002, PartnerWantedBaby != "No data")
mosaic( ~ FetalLoss + PartnerWantedBaby, data = pg_pwb,
        labeling_args = list(set_varnames = c(sex = "", PartnerWantedBaby = "PartnerWantedBaby")),
        highlighting = "PartnerWantedBaby",
        highlighting_fill = c("cornsilk","violet","blue"),
        rot_labels = c(left = 0, top = 0),
        pos_labels = c("center","center"),
        offset_labels = c(0.0,0.6))

# small relationship - need to subset with no datas removed
pg_wb <- subset(pg2002, WantedBaby != "No data")
mosaic( ~ FetalLoss + WantedBaby, data = pg_wb,
        labeling_args = list(set_varnames = c(sex = "", WantedBaby = "WantedBaby")),
        highlighting = "WantedBaby",
        highlighting_fill = c("cornsilk","violet","blue"),
        rot_labels = c(left = 0, top = 0),
        pos_labels = c("center","center"),
        offset_labels = c(0.0,0.6))

# small relationship - need to subset with no datas removed
pg_smoke <- subset(pg2002, SmokedAfterKnewPG != "No data")
mosaic( ~ FetalLoss + SmokedAfterKnewPG, data = pg_smoke,
        labeling_args = list(set_varnames = c(sex = "", SmokedAfterKnewPG = "SmokedAfterKnewPG")),
        highlighting = "SmokedAfterKnewPG",
        highlighting_fill = c("cornsilk","violet","blue"),
        rot_labels = c(left = 0, top = 0),
        pos_labels = c("center","center"),
        offset_labels = c(0.0,0.6))

# small relationship
mosaic( ~ FetalLoss + MaritalStatusAtOutcome, data = pg2002,
        labeling_args = list(set_varnames = c(sex = "", MaritalStatusAtOutcome = "MaritalStatusAtOutcome")),
        highlighting = "MaritalStatusAtOutcome",
        highlighting_fill = c("cornsilk","violet","blue"),
        rot_labels = c(left = 0, top = 0),
        pos_labels = c("center","center"),
        offset_labels = c(0.0,0.6))

# small relationship 
mosaic( ~ FetalLoss + UsedBCSomePoint, data = pg2002,
        labeling_args = list(set_varnames = c(sex = "", UsedBCSomePoint = "UsedBCSomePoint")),
        highlighting = "UsedBCSomePoint",
        highlighting_fill = c("cornsilk","violet","blue"),
        rot_labels = c(left = 0, top = 0),
        pos_labels = c("center","center"),
        offset_labels = c(0.0,0.6))



# Variables that appear to have a relationship = BirthControlUsedAtConception, UsedBCSomePoint, MaritalStatusAtOutcome
# SmokedAfterKnewPG, WantedBaby, PartnerWantedBaby, Age_End_of_Pregnancy, Weeks_at_First_Prenatal_Care










# What trends can we see over time?

# Has become more common to get prenatal care earlier
pg2002 <- transform(pg2002, IFSS_SOURCE = factor(IFSS_SOURCE))
pg_1982 <- subset(pg2002, IFSS_SOURCE == "1982" | IFSS_SOURCE == "1988" | IFSS_SOURCE == "1995" | IFSS_SOURCE == "2002")
xyplot(Age_End_of_Pregnancy ~ Weeks_at_First_Prenatal_Care | IFSS_SOURCE, data = pg_1982, layout = c(2,2))

#no relationship/trend
xyplot(Weight_of_Baby ~ Weeks_at_First_Prenatal_Care | IFSS_SOURCE, data = pg_1982, layout = c(2,2))
xyplot(Weight_of_Baby ~ Feeling_About_Pregnancy | IFSS_SOURCE, data = pg_1982, layout = c(2,2))
xyplot(Weight_of_Baby ~ Pregnancy_Number | IFSS_SOURCE, data = pg_1982, layout = c(2,2))

