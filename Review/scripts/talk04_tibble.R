library(tidyverse)
library(ggplot2)
library(dplyr)
library(readr)

mouse.tibble =
  read_delim(
    file = "data/talk04/mouse_genes_biomart_sep2018.txt",
    delim = "\t",
    quote = "",
    show_col_types = FALSE
  )

mouse.tibble.chr10_12 =
  mouse.tibble %>% filter(`Chromosome/scaffold name` %in% c("10", "11", "12"))


mouse_gene_plot03 =
    ggplot(
      data = mouse.tibble.chr10_12,
      aes(
        x = `Chromosome/scaffold name`,
        y = `Transcript length (including UTRs and CDS)`
      )
    ) +
    geom_boxplot() +
    coord_flip() +
    ylim( 0, 2500 ) +
    theme_bw()

ggsave(
    filename = "Review/image/mouse_gene_plot03.png",
    plot = mouse_gene_plot03,
    device = "png",
    width = 1680,
    height = 1050,
    units = "px"
)