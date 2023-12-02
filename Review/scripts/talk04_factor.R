library(tidyverse)
library(ggplot2)
library(dplyr)

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
    ~ ifelse(
      tolower(
        substring(., 1, 1)) == "f",
      "Female",
      "Male"
    )
  )

fct_count(gender_fct_relabel)

responses =
  factor(
    c("Agree", "Agree", "Strongly Agree", "Disagree", "Disagree", "Agree"),
    ordered = TRUE
  )

response_barplot =
  ggplot(
    data = data.frame(res = responses),
    aes(x = res)
  ) +
  geom_bar()

ggsave(
  filename = "response_barplot.png",
  plot = response_barplot,
  device = "png",
  path = "Review/image",
  width = 4,
  height = 4,
  units = "in",
  dpi = 300
)

res =
  data.frame(responses)
# Sort by level of agreement from strong -> weak
res$res =
  factor(
    res$res,
    levels =
       c("Strongly Agree", "Agree", "Disagree")
  )

response_barplot2 =
  ggplot(
    data = res,
    aes(x = res)
  ) +
  geom_bar() +
  xlab("Response")

ggsave(
  filename = "response_barplot2.png",
  plot = response_barplot2,
  device = "png",
  path = "Review/image",
  width = 4,
  height = 4,
  units = "in",
  dpi = 300
)

is.ordered(responses)

x =
  factor(
    c("alpha", "beta", "gamma", "theta", "beta", "alpha")
  )

x =
  recode(
    x,
    alpha = "a",
    beta = "b",
    gamma = "c",
    theta = "d"
  )

str(x)

mouse.genes =
  read.delim(
    file = "data/talk04/mouse_genes_biomart_sep2018.txt",
    sep = "\t",
    header = T,
    stringsAsFactors = T
  )

str(mouse.genes)

mouse.chr_10_12 =
  subset(
    mouse.genes,
    Chromosome.scaffold.name %in% c( "10", "11", "12" )
  )

mouse_gene_plot01 =
  boxplot(
    Transcript.length..including.UTRs.and.CDS. ~ Chromosome.scaffold.name,
    data = mouse.chr_10_12,
    las = 2
  )

png(
  filename = "Review/image/mouse_gene_plot01.png",
  width = 640,
  height = 480,
  units = "px",
  res = 300
)

mouse.chr_10_12$Chromosome.scaffold.name =
  droplevels( mouse.chr_10_12$Chromosome.scaffold.name )
levels(mouse.chr_10_12$Chromosome.scaffold.name)

mouse_gene_plot02 =
  ggplot(
    mouse.chr_10_12,
    aes(
      x = Chromosome.scaffold.name,
      y = Transcript.length..including.UTRs.and.CDS.
    )
  ) +
  geom_boxplot() +
  labs(
    x = "Chromosome Scaffold Name",
    y = "Transcript Length (including UTRs and CDS)"
  )

ggsave(
    filename = "Review/image/mouse_gene_plot02.png",
    plot = mouse_gene_plot02,
    device = "png",
    width = 3200,
    height = 900,
    units = "px",
    dpi = 300
    )
)