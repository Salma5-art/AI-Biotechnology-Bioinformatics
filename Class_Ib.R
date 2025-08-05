getwd()

dir.create("raw_data")
dir.create("clean_data")
dir.create("scripts")
dir.create("tasks")
dir.create("plot")

patients <- read.csv(file.choose())

str(patients)
View(patients)

patients$bmi_int <- as.integer(patients$bmi)


patients$gender_fac <- as.factor(patients$gender)
str(patients)

patients$gender_num <- ifelse(patients$gender_fac == "Female", 1, 0)


patients$smoker_fac <- as.factor(patients$smoker)
str(patients)

patients$smoker_num <- ifelse(patients$smoker_fac == "Yes", 1, 0)


patients$diagnosis_fac <- as.factor(patients$diagnosis)
str(patients)

patients$diagnosis_num <- factor(patients$diagnosis_fac,
                                 levels = c("Cancer", "Normal"),
                                 labels = c(1, 0))





