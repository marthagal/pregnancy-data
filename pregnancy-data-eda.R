




# Exploratory Data Analysis

library(ggplot2)



# AGE AT THE END OF PREGNANCY

#Density plot - Age_End_of_Pregnancy vs MultipleBirth
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=MultipleBirth)) + geom_density() 
# some relationship - older women more likely to have multiple birth

#Density plot - Age_End_of_Pregnancy vs MultipleBirth
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=MaritalStatusAtOutcome)) + geom_density() 
# some relationship - teens less likely to have married, older women more likely to be widowed/separated

#Density plot - Age_End_of_Pregnancy vs BabyNursed
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=BabyNursed)) + geom_density() 
# some relationship - older women more likely to nurse

#Density plot - Age_End_of_Pregnancy vs BabyNursed
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=PartnerWantedBaby)) + geom_density() 
# some relationship - older women have partners more likely to want babies

#Density plot - Age_End_of_Pregnancy vs PartnerWantedBabyTiming
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=PartnerWantedBabyTiming)) + geom_density() 
# some relationship - as women get older, moves from too soon/unwanted to right time/overdue

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=WantedBabyTiming)) + geom_density() 
# some relationship - as women get older, moves from too soon/unwanted to right time/overdue

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=WantedBaby)) + geom_density() 
# some relationship - as women get older, moves from too soon/unwanted to right time/overdue

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=BabyTimingOK)) + geom_density() 
# some relationship - as women get older, moves from too soon/no to yes

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=BirthControlUsedAtConception)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=UsedBCSomePoint)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=ChildLivesWithMother)) + geom_density() 
# some relationship - as women get older, child slightly more likely to live with mother

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=MaternityLeaveTaken)) + geom_density() 
# strong relationship - older mothers much more likely to take a maternity leave

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=AnyPrenatalCare)) + geom_density() 
# some relationship - as women get older, more likely to have prenatal care

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=SmokedAfterKnewPG)) + geom_density() 
# some relationship - as women get older, less likely to smoke after finding out they are pregnant

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=SexOfBaby)) + geom_density() 
# no relationship 

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Age_End_of_Pregnancy, colour=TypeOfDelivery)) + geom_density() 
# some relationship - as women get older, more likely to have C-section



# Weight_of_Baby

#Density plot - Age_End_of_Pregnancy vs MultipleBirth
ggplot(pg2002, aes(x=Weight_of_Baby, colour=MultipleBirth)) + geom_density() 
# strong relationship - multiple births mean lower birth weight babies

#Density plot - Age_End_of_Pregnancy vs MultipleBirth
ggplot(pg2002, aes(x=Weight_of_Baby, colour=MaritalStatusAtOutcome)) + geom_density() 
# no relationship 

#Density plot - Age_End_of_Pregnancy vs BabyNursed
ggplot(pg2002, aes(x=Weight_of_Baby, colour=BabyNursed)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs BabyNursed
ggplot(pg2002, aes(x=Weight_of_Baby, colour=PartnerWantedBaby)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs PartnerWantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=PartnerWantedBabyTiming)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=WantedBabyTiming)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=WantedBaby)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=BabyTimingOK)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=BirthControlUsedAtConception)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=UsedBCSomePoint)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=ChildLivesWithMother)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=MaternityLeaveTaken)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=AnyPrenatalCare)) + geom_density() 
# some relationship - slightly lower birth weights for women with no prenatal care

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=SmokedAfterKnewPG)) + geom_density() 
# some relationship - slightly lower birth weights for women who smoked after finding out they are pregnant

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=SexOfBaby)) + geom_density() 
# no relationship 

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=TypeOfDelivery)) + geom_density() 
# no relationship



Gestational_Length_of_Pregnancy

length <- subset(pg2002, Outcome == "Live birth")

ggplot(length, aes(x=Gestational_Length_of_Pregnancy, colour=MultipleBirth)) + geom_density() 
# some relationship - multiple births mean shorter gestations

#Density plot - Age_End_of_Pregnancy vs MultipleBirth
ggplot(length, aes(x=Gestational_Length_of_Pregnancy, colour=MaritalStatusAtOutcome)) + geom_density() 
# no relationship 

#Density plot - Age_End_of_Pregnancy vs BabyNursed
ggplot(length, aes(x=Gestational_Length_of_Pregnancy, colour=BabyNursed)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs BabyNursed
ggplot(pg2002, aes(x=Weight_of_Baby, colour=PartnerWantedBaby)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs PartnerWantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=PartnerWantedBabyTiming)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=WantedBabyTiming)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=WantedBaby)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=BabyTimingOK)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=BirthControlUsedAtConception)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=UsedBCSomePoint)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=ChildLivesWithMother)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=MaternityLeaveTaken)) + geom_density() 
# no relationship

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=AnyPrenatalCare)) + geom_density() 
# some relationship - slightly lower birth weights for women with no prenatal care

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=SmokedAfterKnewPG)) + geom_density() 
# some relationship - slightly lower birth weights for women who smoked after finding out they are pregnant

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(pg2002, aes(x=Weight_of_Baby, colour=SexOfBaby)) + geom_density() 
# no relationship 

#Density plot - Age_End_of_Pregnancy vs WantedBabyTiming
ggplot(length, aes(x=Gestational_Length_of_Pregnancy, colour=TypeOfDelivery)) + geom_density() 
# no relationship

library(vcd) 
mosaic( ~ Outcome + BirthControlUsedAtConception, data = pg2002,
        labeling_args = list(set_varnames = c(sex = "", BirthControlUsedAtConception = "BirthControlUsedAtConception")),
        highlighting = "BirthControlUsedAtConception",
        highlighting_fill = c("cornsilk","violet","blue"),
        rot_labels = c(left = 0, top = 0),
        pos_labels = c("center","center"),
        offset_labels = c(0.0,0.6))

mosaic( ~ Outcome + PartnerWantedBaby, data = pg2002,
        labeling_args = list(set_varnames = c(sex = "", PartnerWantedBaby = "PartnerWantedBaby")),
        highlighting = "PartnerWantedBaby",
        highlighting_fill = c("cornsilk","violet","blue"),
        rot_labels = c(left = 0, top = 0),
        pos_labels = c("center","center"),
        offset_labels = c(0.0,0.6))

mosaic( ~ Outcome + WantedBaby, data = pg2002,
        labeling_args = list(set_varnames = c(sex = "", WantedBaby = "WantedBaby")),
        highlighting = "WantedBaby",
        highlighting_fill = c("cornsilk","violet","blue","green", "black"),
        rot_labels = c(left = 0, top = 0),
        pos_labels = c("center","center"),
        offset_labels = c(0.0,0.6))

mosaic( ~ IFSS_SOURCE + Outcome, data = pg2002,
        labeling_args = list(set_varnames = c(Outcome = "", Outcome = "Outcome")),
        highlighting = "Outcome",
        highlighting_fill = c("cornsilk","violet","blue","green", "black"),
        rot_labels = c(left = 0, top = 0),
        pos_labels = c("center","center"),
        offset_labels = c(0.0,0.6))


View(pg)

counts <- table(pg2002$Outcome, pg2002$IFSS_SOURCE)
barplot(counts, main="School Rating by Scheduling Track",
        xlab="School Rating", col=c("darkblue","red", "green", "yellow", "black", "purple", "orange"),
        legend = rownames(counts), beside=TRUE, args.legend=list(x="topleft"))





# Percentages of Outcomes Over Time




barplot(percentages, main="School Rating by Scheduling Track",
        xlab="School Rating", col=c("darkblue","red", "green", "yellow", "black", "purple", "orange"),
        legend = rownames(percentages), beside=TRUE)

counts <- table(pg$MaritalStatusAtOutcome, pg$IFSS_SOURCE)
barplot(counts, main="School Rating by Scheduling Track",
        xlab="School Rating", col=c("darkblue","red", "green", "yellow", "black", "purple", "orange"),
        legend = rownames(counts), beside=TRUE, args.legend=list(x="topleft"))


plot(pg2002$Outcome, pg2002$IFSS_SOURCE)

plot(pg2002$Gestational_Length_of_Pregnancy, pg2002$Pregnancy_Number)

plot(pg2002$Weight_of_Baby, pg2002$Pregnancy_Number)

hist(pg2002$Feeling_About_Pregnancy)

plot(pg2002$Feeling_About_Pregnancy, pg2002$Pregnancy_Number)
#no relationship, interesting

plot(pg2002$Feeling_About_Pregnancy, pg2002$Weeks_of_Maternity_Leave_Paid, pch = 20)
title("Scatterplot")
fit <- lm(pg2002$Feeling_About_Pregnancy ~ pg2002$Weeks_of_Maternity_Leave_Paid)
abline(fit, lwd = 3, col = "blue")

par(mfrow = c(2,1))
plot(pg2002$Feeling_About_Pregnancy, pg2002$Pregnancy_Number)
plot(pg2002$Weight_of_Baby, pg2002$Pregnancy_Number)
par("mar")
#no relationship, interesting
