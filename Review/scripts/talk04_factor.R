library(tidyverse)

gender =
   c("f", "m ", "male ","male", "female", "FEMALE", "Male", "f", "m")

gender_fct =
  as.factor(gender)

fct_count(gender_fct)

gender_fct =
  fct_collapse(
    gender,
    Female = c("f", "female", "FEMALE"),
    Male = c("m ", "m", "male ", "male", "Male")
  )

fct_count(gender_fct)

gender_fct_relabel =
  fct_relabel(
    gender,
    ~ ifelse(tolower(substring(., 1, 1))) == "f",
    "Female",
    "Male"
  )

fct_count(gender_fct_relabel)