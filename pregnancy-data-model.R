mylogit <- glm(FetalLossL ~ Age_End_of_Pregnancy + Weeks_at_First_Prenatal_Care + WantedBaby + 
                 PartnerWantedBaby + MaritalStatusAtOutcome + SmokedAfterKnewPG + UsedBCSomePoint
               + BirthControlUsedAtConception, data = pg2002, family = "binomial")
summary(mylogit)
#confusionMatrix(mylogit)

# Variables that appear to have a relationship = BirthControlUsedAtConception, UsedBCSomePoint, MaritalStatusAtOutcome
# SmokedAfterKnewPG, WantedBaby, PartnerWantedBaby, Age_End_of_Pregnancy, Weeks_at_First_Prenatal_Care
