# Lab 8 
## Discrete-time Logistic Growth Model Through R

#### Setting up the Function 
- First we need to set variables our function will use:
	- N is the abundance of a population
	- T is a given time 
	- R is the intrinsic growth rate 
	- K is the population carrying capicty 

#### Making the equation 
- The complex Logistic Growth Model can be simplified to one equation: 
	- `n[t] = n[t-1] + ( r * n[t-1] * (K - n[t-1])/K )`

- Setting up for later use
	- This equation is useful, but if we want to apply it to apply it to multiple situations, we can set up a loop to run with different variables. 
	- To do this we write a loop that will do the calculating
	- With this we can create a function by adding the function command in front of our for loop. 
	- If we want our function to do extra steps, we can set it up to create a plot of the data by adding a new set of curly braces after our model function 

#### Now, we have a simplified function, where we can simply type the function name, add our new variables and it will run all these complex functions for us!

