nmonte = 10000

lookup.x = c(0,0.5,1)
lookup.y = c(1,0,1)
plot(lookup.x,lookup.y)
curr_x = 0.5
curr_y = 0
for (i in 1:nmonte ){
  points(curr_x,curr_y,pch=20)
  random = ceiling(3*runif(1))
  next_x = lookup.x[random]
  next_y = lookup.y[random]
  prev_x = curr_x
  prev_y = curr_y
  curr_x = (prev_x + next_x)/2
  curr_y = (prev_y + next_y)/2

}
