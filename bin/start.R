d <- read.csv('processing2/flatened.csv', header=T)
gdt <- strptime(d$global_dt, "%Y-%m-%dT%H:%M:%S")
cdt <- strptime(d$child_dt, "%Y-%m-%dT%H:%M:%S")
pr  <- as.integer(d$price)
rnk <- as.integer(d$sales_rank)

am <- data.frame(gdt, cdt, d$id, d$asin, d$qty, pr, rnk)
names(am) <- names(d)
rm(d, gdt, cdt, pr, rnk)
