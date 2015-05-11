tripeaks = c(1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,
1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,0,0,1,1,0,0,0,0,0,0,1,0,1)
rle.tripeaks =rle(tripeaks)

runs =rle.tripeaks$lengths
runs
acf(tripeaks, plot=TRUE, main= "Tripeaks Memory Plot")
warnings()


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

x[2]
x[3]
sim_runs = rle(x) #run length encoding, gives the length of the runs.
length_vector = sim_runs$length #This vector gives the lengths of runs in a two state markov chain. 
run_of_negative_days = 0
i = 1
repeat    #equivalent of a do while loop, breaks when there are no more runs of 0's
{
  if (i >1249)
  {break     }
  run_of_negative_days = run_of_negative_days + length_vector[i]
  i = i+2
}
average_negative_run = run_of_negative_days / (length(length_vector)/2) 
average_negative_run



run_of_positive_days = 0
i = 2
repeat
{
  if (i >1250)
  {break     }
  run_of_positive_days = run_of_positive_days + length_vector[i]
  i = i+2
}
run_of_positive_days
average_positive_run = run_of_positive_days/625 (length(length_vector)/2)
