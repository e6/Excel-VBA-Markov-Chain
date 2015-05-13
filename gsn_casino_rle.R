gsn_casino =c(1,0,0,1,0,1,1,0,0,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,
              0,0,1,0,1,0,0,1,1,0,1,0,1,1,0,1,1,0,1,1,1,0,1,1,1,1,0,1,1,1
              ,1,1,1,0,0,1,1,0,1,0,1,1,0,0,1,0,1,0,1,1,0,1,1,1,1,1,1,0,1,1,1
              ,1,1,0,1,1,0,0,1,1,1,0,1,1,1,1,1,1,1,1,1,1,0,1,1,0,1,1,0,0,1,0,1,0,1,0,1,0
              ,1,0,1,0,1,0,0,1,0,1)
rle.gsn_casino = rle(gsn_casino)

runs2 =rle.gsn_casino$lengths
runs2
acf(gsn_casino, plot=TRUE, main= "GSN Casino Memory Plot")
warnings()


runs2

set.seed(1237)
m = 10000; n = 1:m; x = numeric(m); x[1] = 0 #start with a below average bookings day
alpha =.3333 ; beta = 0.07597
# Simulation
for (i in 2:m)
{
  if (x[i-1]==0) x[i] = rbinom(1, 1, alpha)
  else x[i] = rbinom(1, 1, 1 - beta)
}
y = cumsum(x)/n # Running fractions of bookings
y[m] # Fraction of above average bookings among m. Same as: mean(x)
a = sum(x[2:m]==1); a #"x[1:(m-1)]==0 & "
m/a # Average cycle length
plot(x[1:100], type="b", xlab="Step", ylab="State")#plots shift in stochastic process. Lines should be vertical but are not
# due to pixel limitations in R. Only outcomes are 0, below average bookings and 1, above average bookings
