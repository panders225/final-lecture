
# note that package is on biocondutor, not CRAN
library("qvalue")
library("dplyr")

# read in data and sort
data_vec <- c(0.6528, 0.5719, 0.4262
              , 0.0019, 0.0298, 0.0344, 0.0201, 0.0001
              , 1.000, 0.0004, 0.0459, 0.7590
              , 0.3240, 0.0095, 0.0278) %>%
  sort()


q_obj <- qvalue::qvalue(p=data_vec)

data.frame(
        p_val = q_obj$pvalues
        , q_val = q_obj$qvalues
          ) %>%
  View()
