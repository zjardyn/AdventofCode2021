library(tidyverse)
dat <- read_table("../data/day2.txt", col_names = F)
sums <- dat %>%
    transmute(dir=X1, amnt=X2) %>%
    group_by(dir) %>%
    summarise(sum = sum(amnt))

(sums[sums$dir=="down",2] - sums[sums$dir=="up",2]) * sums[sums$dir=="forward",2] 





