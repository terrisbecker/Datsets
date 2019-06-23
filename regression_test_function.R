# Generates a data set according to the model y = Bx + e
# Inputs:
	# X a matrix of input (independent variables)
	# B a vector of coefficients
	# var the variance parameter for the gaussian noise
sim_regression <- function(X, B, var){
	y <- X%*%B + rnorm(nrow(X), sqrt(var))
	return(cbind(y,X))
}

B <- c(1, 3)
X <- cbind(integer(10)+1, 1:10)
y <- sim_regression(X,B,1)