library(pageviews)
pagestat <- article_pageviews(project = "en.wikipedia", 
                              article = "Emma_Watson", platform = "all", user_type = "all",
                              start = "2018010100", end = "2019071100")

plot(pagestat$date, pagestat$views, type = "l")

