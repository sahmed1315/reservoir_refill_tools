working.data.dir <- "data"
#------------------------------------------------------------------------------
na.replace <- c("", " ", "Eqp", "#N/A", "-999999")
#------------------------------------------------------------------------------
inflow.df <- file.path(working.data.dir, "inflows/jrr_inflows_mgd.csv") %>% 
  data.table::fread(data.table = FALSE,
                    na.strings = na.replace) %>% 
#  dplyr::filter(type == "forecast") %>% # not used, filters by row strings in column type
#  dplyr::select(date_time, flow) %>% # not used, filters by header labels date_time and flow
  dplyr::mutate(date = lubridate::ymd(date),
                inflow_mgd = as.numeric(inflow_mgd))
#print(inflow.df)
#----------------------------------------------------------------------------
