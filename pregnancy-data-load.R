setwd("C:/Users/E17035/Desktop/R/pregnancy-data")

#Read in data and subset to 2002 data only
pg <- read.csv("Pregnancy_Data.csv")
pg2002 <- pg

#unique(pg$IFSS_SOURCE)
#pg2002 <- subset(pg, IFSS_SOURCE=="2002")

#Code Pregnancy Outcome 
pg2002$Outcome <- "Current"
pg2002$Outcome[pg2002$Pregnancy_Outcome == 1] <- "Live birth" 
pg2002$Outcome[pg2002$Pregnancy_Outcome == 2] <- "Abortion" 
pg2002$Outcome[pg2002$Pregnancy_Outcome == 3] <- "Stillbirth" 
pg2002$Outcome[pg2002$Pregnancy_Outcome == 4] <- "Miscarriage" 
pg2002$Outcome[pg2002$Pregnancy_Outcome == 6] <- "Miscarriage" 
pg2002$Outcome[pg2002$Pregnancy_Outcome == 5] <- "Ectopic Pregnancy" 
pg2002$Outcome[pg2002$Pregnancy_Outcome == 7] <- "No data" 
pg2002$Outcome[pg2002$Pregnancy_Outcome == 8] <- "No data" 
pg2002$Outcome[pg2002$Pregnancy_Outcome == 10] <- "No data" 
pg2002$Pregnancy_Outcome <- NULL

#Code Multiple Birth
pg2002$MultipleBirth <- "No"
pg2002$MultipleBirth[pg2002$Multiple_Birth == 1] <- "Yes" 
pg2002$MultipleBirth[pg2002$Multiple_Birth == 7] <- "No data" 
pg2002$Multiple_Birth <- NULL
pg2002$MultipleBirth <- as.factor(pg2002$MultipleBirth)


#Code Marital Status At Outcome
pg2002$MaritalStatusAtOutcome <- "Married"
pg2002$MaritalStatusAtOutcome[pg2002$Marital_Status_at_Outcome == 2] <- "Divorced" 
pg2002$MaritalStatusAtOutcome[pg2002$Marital_Status_at_Outcome == 3] <- "Widowed" 
pg2002$MaritalStatusAtOutcome[pg2002$Marital_Status_at_Outcome == 4] <- "Separated" 
pg2002$MaritalStatusAtOutcome[pg2002$Marital_Status_at_Outcome == 5] <- "Never Married" 
pg2002$Marital_Status_at_Outcome <- NULL
pg2002$MaritalStatusAtOutcome <- as.factor(pg2002$MaritalStatusAtOutcome)

#Code Baby Nursed At All
pg2002$BabyNursed <- "No data"
pg2002$BabyNursed[pg2002$Baby_Nursed_At_All == 5] <- "No" 
pg2002$BabyNursed[pg2002$Baby_Nursed_At_All == 9] <- "No data" 
pg2002$BabyNursed[pg2002$Baby_Nursed_At_All == 7] <- "No data" 
pg2002$BabyNursed[pg2002$Baby_Nursed_At_All == 8] <- "No data" 
pg2002$BabyNursed[pg2002$Baby_Nursed_At_All == 1] <- "Yes" 
pg2002$Baby_Nursed_At_All <- NULL
pg2002$BabyNursed <- as.factor(pg2002$BabyNursed)

#Code Partner Wanted Baby
pg2002$PartnerWantedBaby <- "No data"
pg2002$PartnerWantedBaby[pg2002$Partner_Wanted_Baby == 1] <- "Yes" 
pg2002$PartnerWantedBaby[pg2002$Partner_Wanted_Baby == 5] <- "No" 
pg2002$Partner_Wanted_Baby <- NULL
pg2002$PartnerWantedBaby <- as.factor(pg2002$PartnerWantedBaby)

#Code Partner Wanted Baby Timing
pg2002$PartnerWantedBabyTiming <- "No data"
pg2002$PartnerWantedBabyTiming[pg2002$Partner_Wanted_Baby_Timing == 1] <- "Overdue" 
pg2002$PartnerWantedBabyTiming[pg2002$Partner_Wanted_Baby_Timing == 2] <- "Right Time"  
pg2002$PartnerWantedBabyTiming[pg2002$Partner_Wanted_Baby_Timing == 3] <- "Too Soon"  
pg2002$PartnerWantedBabyTiming[pg2002$Partner_Wanted_Baby_Timing == 4] <- "Indifferent"  
pg2002$PartnerWantedBabyTiming[pg2002$Partner_Wanted_Baby_Timing == 5] <- "Unwanted" 
pg2002$Partner_Wanted_Baby_Timing <- NULL
pg2002$PartnerWantedBabyTiming <- as.factor(pg2002$PartnerWantedBabyTiming)

#Code Woman Wanted Baby Timing
pg2002$WantedBabyTiming <- "No data"
pg2002$WantedBabyTiming[pg2002$Wanted_Baby_Timing == 1] <- "Overdue" 
pg2002$WantedBabyTiming[pg2002$Wanted_Baby_Timing == 2] <- "Right Time"  
pg2002$WantedBabyTiming[pg2002$Wanted_Baby_Timing == 3] <- "Too Soon"  
pg2002$WantedBabyTiming[pg2002$Wanted_Baby_Timing == 4] <- "Indifferent"  
pg2002$WantedBabyTiming[pg2002$Wanted_Baby_Timing == 5] <- "Unwanted" 
pg2002$Wanted_Baby_Timing <- NULL
pg2002$WantedBabyTiming <- as.factor(pg2002$WantedBabyTiming)

#Code Wanted Baby
pg2002$WantedBaby <- "No data"
pg2002$WantedBaby[pg2002$Wanted_Baby == 1] <- "Yes" 
pg2002$WantedBaby[pg2002$Wanted_Baby == 2] <- "Yes But Mistimed" 
pg2002$WantedBaby[pg2002$Wanted_Baby == 4] <- "Indifferent" 
pg2002$WantedBaby[pg2002$Wanted_Baby == 5] <- "No" 
pg2002$Wanted_Baby <- NULL
pg2002$WantedBaby <- as.factor(pg2002$WantedBaby)

#Code Baby Timing OK
pg2002$BabyTimingOK <- "No data"
pg2002$BabyTimingOK[pg2002$Baby_Timing_OK == 1] <- "Too Soon" 
pg2002$BabyTimingOK[pg2002$Baby_Timing_OK == 2] <- "Right Time"  
pg2002$BabyTimingOK[pg2002$Baby_Timing_OK == 3] <- "Too Late" 
pg2002$BabyTimingOK[pg2002$Baby_Timing_OK == 4] <- "Indifferent"  
pg2002$Baby_Timing_OK <- NULL
pg2002$BabyTimingOK <- as.factor(pg2002$BabyTimingOK)

#Code Birth Control At Conception
pg2002$BirthControlUsedAtConception <- "No data"
pg2002$BirthControlUsedAtConception[pg2002$Birth_Control_Used_At_Conception == 1] <- "Yes" 
pg2002$BirthControlUsedAtConception[pg2002$Birth_Control_Used_At_Conception == 5] <- "No" 
pg2002$Birth_Control_Used_At_Conception <- NULL
pg2002$BirthControlUsedAtConception <- as.factor(pg2002$BirthControlUsedAtConception)

#Code Birth Control At Some Point
pg2002$UsedBCSomePoint <- "No data"
pg2002$UsedBCSomePoint[pg2002$Used_BC_Some_Point == 1] <- "Yes" 
pg2002$UsedBCSomePoint[pg2002$Used_BC_Some_Point == 5] <- "No" 
pg2002$Used_BC_Some_Point <- NULL
pg2002$UsedBCSomePoint <- as.factor(pg2002$UsedBCSomePoint)

#Code Child Lives With Mother
pg2002$ChildLivesWithMother <- "No data"
pg2002$ChildLivesWithMother[pg2002$Child_Lives_with_Mother == 1] <- "Yes"
pg2002$ChildLivesWithMother[pg2002$Child_Lives_with_Mother == 5] <- "No"
pg2002$Child_Lives_with_Mother <- NULL
pg2002$ChildLivesWithMother <- as.factor(pg2002$ChildLivesWithMother)

#Code Maternity Leave Taken
pg2002$MaternityLeaveTaken <- "No data"
pg2002$MaternityLeaveTaken[pg2002$Maternity_Leave_Taken == 1] <- "Yes"
pg2002$MaternityLeaveTaken[pg2002$Maternity_Leave_Taken == 5] <- "No"
pg2002$Maternity_Leave_Taken <- NULL
pg2002$MaternityLeaveTaken <- as.factor(pg2002$MaternityLeaveTaken)

#Code Any Prenatal Care
pg2002$AnyPrenatalCare <- "No data"
pg2002$AnyPrenatalCare[pg2002$Any_Prenatal_Care == 1] <- "Yes"
pg2002$AnyPrenatalCare[pg2002$Any_Prenatal_Care == 5] <- "No"
pg2002$Any_Prenatal_Care <- NULL
pg2002$AnyPrenatalCare <- as.factor(pg2002$AnyPrenatalCare)

#Code Smoked After Knew PG
pg2002$SmokedAfterKnewPG <- "No data"
pg2002$SmokedAfterKnewPG[pg2002$Smoked_After_Knew_PG == 1] <- "Yes"
pg2002$SmokedAfterKnewPG[pg2002$Smoked_After_Knew_PG == 5] <- "No"
pg2002$Smoked_After_Knew_PG <- NULL
pg2002$SmokedAfterKnewPG <- as.factor(pg2002$SmokedAfterKnewPG)

#Code Sex
pg2002$SexOfBaby <- "No data"
pg2002$SexOfBaby[pg2002$Sex_of_Baby == 1] <- "Female"
pg2002$SexOfBaby[pg2002$Sex_of_Baby == 2] <- "Male"
pg2002$Sex_of_Baby <- NULL
pg2002$SexOfBaby <- as.factor(pg2002$SexOfBaby)

#Code Type of Delivery
pg2002$TypeOfDelivery <- "No data"
pg2002$TypeOfDelivery[pg2002$Type_of_Delivery == 1] <- "Vaginal"
pg2002$TypeOfDelivery[pg2002$Type_of_Delivery == 2] <- "Cesarean"
pg2002$Type_of_Delivery <- NULL
pg2002$TypeOfDelivery <- as.factor(pg2002$TypeOfDelivery)

#Remove Unwanted Columns
pg2002$How_Much_Sooner_PG <- NULL
pg2002$Wanted_Another_Baby <- NULL
pg2002$Pregnancy_Is_Last <- NULL
pg2002$Wanted_To_Become_Pregnant <- NULL
pg2002$Stopped_BC_Before_Pregnancy <- NULL
pg2002$Where_Child_Lives_Now <- NULL
pg2002$Child_Alive_Now <- NULL
pg2002$Preterm_if_Live_Birth <- NULL
pg2002$Amount_Smoked_After_Knew_PG <- NULL
pg2002$Amount_Smoked_6_Mos_Before_Knowing_PG <- NULL 
pg2002$Birthing_Facility_Type <- NULL 
pg2002$Weight_of_Baby_2 <- NULL 
pg2002$Sex_of_Baby_2 <- NULL
pg2002$Type_of_Delivery_2 <- NULL


# Add NAs where necessary
pg2002$Age_End_of_Pregnancy[pg2002$Age_End_of_Pregnancy == 97] <- NA
pg2002$Age_End_of_Pregnancy[pg2002$Age_End_of_Pregnancy == 98] <- NA
pg2002$Age_End_of_Pregnancy[pg2002$Age_End_of_Pregnancy == 99] <- NA

pg2002$Gestational_Length_of_Pregnancy[pg2002$Gestational_Length_of_Pregnancy == 97] <- NA
pg2002$Gestational_Length_of_Pregnancy[pg2002$Gestational_Length_of_Pregnancy == 98] <- NA
pg2002$Gestational_Length_of_Pregnancy[pg2002$Gestational_Length_of_Pregnancy == 99] <- NA

pg2002$Weight_of_Baby[pg2002$Weight_of_Baby == 97] <- NA
pg2002$Weight_of_Baby[pg2002$Weight_of_Baby == 98] <- NA
pg2002$Weight_of_Baby[pg2002$Weight_of_Baby == 99] <- NA

pg2002$Feeling_About_Pregnancy[pg2002$Feeling_About_Pregnancy == 97] <- NA
pg2002$Feeling_About_Pregnancy[pg2002$Feeling_About_Pregnancy == 98] <- NA
pg2002$Feeling_About_Pregnancy[pg2002$Feeling_About_Pregnancy == 99] <- NA

pg2002$Weeks_at_First_Prenatal_Care[pg2002$Weeks_at_First_Prenatal_Care == 97] <- NA
pg2002$Weeks_at_First_Prenatal_Care[pg2002$Weeks_at_First_Prenatal_Care == 98] <- NA
pg2002$Weeks_at_First_Prenatal_Care[pg2002$Weeks_at_First_Prenatal_Care == 99] <- NA

pg2002$Knew_Pregnant_Weeks[pg2002$Knew_Pregnant_Weeks == 97] <- NA
pg2002$Knew_Pregnant_Weeks[pg2002$Knew_Pregnant_Weeks == 98] <- NA
pg2002$Knew_Pregnant_Weeks[pg2002$Knew_Pregnant_Weeks == 99] <- NA


str(pg2002)
# View(pg2002)
# write.table(pg2002, "pg.txt", row.name=FALSE, sep=",")
