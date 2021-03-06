###Basics of Probability

#Random variables and probabilities
#Let's use numbers from 1 to 6(as a proxy to dice) as an example.

sample(1:6, 1)
#1:6 defines the range and 1 determines the number of samples.

#The chances of getting a certain in a dice roll is 1 in 6, 1/6 or
#roughly 16.67%.
#Using this, we can create a probability distribution function(PDF).

#Outcome       	1 	2     	3   	4 	  5    	6
#Probability 	1/6 	1/6 	1/6 	1/6 	1/6 	1/6

#Total of all probabilities in our given sample is equal to 1 so using this,
#we can create a cumulative probability distribution function.

#Outcome       	1 	2     	3   	4 	  5    	6
#Probability 	1/6 	2/6 	3/6 	4/6 	5/6 	6/6

##We can also use a plot to visualize th PD.
prob=rep(1/6, 6)
plot(prob, xlab="Outcomes", main="Prob. D.")
#You can check out the R basics tutorial on
#plots to customize this.

#Similary, we can plot out the CDF by adding cumsum function:
cprob=cumsum(prob)
plot(cprob, xlab="Outcomes", main="Cumulative Prob. D.")

##Bernoulli Trials (Heads or tails)
sample(c("H", "T"), 1)

#Result of a coin toss is a Bernoulli distributed outcome, meaning
#one out of two possible outcomes. Results for an n number of
#trials with p event probability and k times desired outcome is:
#   k???B(n,p)
#For example:
# Getting 5 heads out of 10 coin flips with 0.5 heads can be 
#expressed as:
#  5B(10,0.5)

#So, the formula for observing k successes in B(n,p) experiment is:

#(k) = P(k) = (n).p^k.(1-p)^n-k = (n!/(k!(n-k)!).(p^k).(1-p)^n-k 
#             (k)
              
#Lets use k=5, n=10 and p=0.5 values for our example in R.
#We use dbinom function to calculate binomial distributions in R.
dbinom(x=5, size=10, prob=0.5)
#[1] 0.2460938

#Getting 5 heads in 10 fair coin tosses is about 24.6 percent.

#Let's calculate the probability of getting 4 to 7 heads in
#10 coin tosses. To do this, we will combine the values of 
#getting 4, 5, 6 and 7 heads using the sum function.

sum(dbinom(x=4:7, size=10, prob=0.5))
#[1] 0.7734375

#Another approach is to subtract the probabilty of less then 3 heads
#from the probability of less than 7 heads.
# P(3<k<8)=P(k<8)-p(k<4)
pbinom(size=10, prob=0.5, q=7)-pbinom(size=10, prob=0.5, q=3)
#[1] 0.7734375
#We see that the probability of getting 4 to 7 heads in 10
#fair coin flips is around 77 percent.

##Probability distribution for a dicrete random variable is
#a list of its outcomes. To plot PDFs for binomial experiments,
#we must first create numeric vectors.

num1=0:10
prob1=dbinom(x=num1, size=10, prob=0.5)

plot(x=num1, y=prob1, main="Probability DF of Binomial Trials")

#to get the CDF plot for this trial, we can go back to the pbinom
#function
num1=0:10
prob1=pbinom(q=num1, size=10, prob=0.5)

plot(x=num1, y=prob1, main="Cum. DF of Binomial Trials")

##Expected Value and Mean
#
