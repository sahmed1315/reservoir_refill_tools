
x <- lubridate::ymd_hms("2017-4-28 00:00:00")

# e.year<-round_date(x, unit = "years", week_start = getOption("lubridate.week.start", 7))%>%
#   lubridate::year()
# s.may<-lubridate::make_date(year=e.year,month=5,day=31)


round_date(x, unit = "years",
           week_start = getOption("lubridate.week.start", 7))
floor_date(x, unit = "years",
           week_start = getOption("lubridate.week.start", 7))

ceiling_date(x, unit = "years", change_on_boundary = NULL,
             week_start = getOption("lubridate.week.start", 7))