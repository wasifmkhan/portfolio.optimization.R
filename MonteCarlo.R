# Monte Carlo Simulation

install.packages("broom")
library(broom)

symbols <- c('Date', 'vgt', 'xlv', 'xlu', 'xlp', 'xly')

max_sr

sdata <- m2 %>%
  select(symbols)
sdata

sdata <- na.omit(sdata)
sdata

# Then we extract the stock price and set initial values for Monte-Carlo parameters
# Top 5 sectors aftering rounding values
stock_Price = as.matrix( sdata[ , 2:6] )

mc_rep = 1000 # Number of Monte Carlo Simulations
training_days = 30 


# This function returns the first differences of a t x q matrix of data
returns = function(Y){
  len = nrow(Y)
  yDif = Y[2:len, ] / Y[1:len-1, ] - 1
}

# Get the Stock Returns
stock_Returns = returns(stock_Price)

#weights
portfolio_Weights = c(0.36, 0.22, 0.21, 0.12, 0.09)
sum(portfolio_Weights)

portfolio_Weights <- t(as.matrix(portfolio_Weights))


# Get the Variance Covariance Matrix of Stock Returns
coVarMat = cov(stock_Returns)
miu = colMeans(stock_Returns)
# Extend the vector to a matrix
Miu = matrix(rep(miu, training_days), nrow = 5)

# Initializing simulated 30 day portfolio returns
portfolio_Returns_30_m = matrix(0, training_days, mc_rep)

set.seed(200)
for (i in 1:mc_rep) {
  Z = matrix ( rnorm( dim(stock_Returns)[2] * training_days ), ncol = training_days )
  # Lower Triangular Matrix from our Choleski Factorization
  L = t( chol(coVarMat) )
  # Calculate stock returns for each day
  daily_Returns = Miu + L %*% Z  
  # Calculate portfolio returns for 30 days
  portfolio_Returns_30 = cumprod( portfolio_Weights %*% daily_Returns + 1 )
  # Add it to the monte-carlo matrix
  portfolio_Returns_30_m[,i] = portfolio_Returns_30;
}

# Visualising result
x_axis = rep(1:training_days, mc_rep)
y_axis = as.vector(portfolio_Returns_30_m-1)
plot_data = data.frame(x_axis, y_axis)
ggplot(data = plot_data, aes(x = x_axis, y = y_axis)) + geom_path(col = 'red', size = 0.1) +
  xlab('Days') + ylab('Portfolio Returns') + 
  ggtitle('Simulated Portfolio Returns in 300 days')+
  theme_bw() +
  theme(plot.title = element_text(hjust = 0.5))



# Construct a 95% Confidential Interval for average returns
Avg_CI = quantile(portfolio_Returns_30_m[30,]-1, c(0.025, 0.975))
print(Avg_CI)




































































