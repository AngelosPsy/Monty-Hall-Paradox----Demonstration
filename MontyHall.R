####################################
###  Monty Hall Paradox  
####################################

### Create empty variables to answer
### initial answer (ans.in) and
### final answer (ans.fi)
### a random answer in case you want to choose randomly
### after you were given the choice of rechoosing (ans.random)

ans.in     = numeric()
ans.fi     = numeric()
ans.random = numeric()

### Start looping
i = 1
while (i < 1000){
   ### Create two empty doors (denoted with 0), and 1 full of treasures	(denoted with 1) 	 
   x = c(0, 0, 1)
   ### Randomly pick an index number 
   s = sample(1:3, 1)
   ### Initial choice	
   ans.in[i] = x[s]
   ### From the remaining sample (x[-s]) eliminate
   ### one zero (the empty door). You have to be
   ### careful in case there are two zeros.
   ### This will give you just a number which either
   ### going to be zero or one. This will be the choice
   ### in case the person changes his/her initial choice
   ans.fi[i] = x[-s][-(which(x[-s]==0)[1])]  
   ### Also see what happens if someone flips a coin again
   ### after having the choice to change
   ans.random[i] = sample (c(ans.in[i], ans.fi[i]), 1)   
   i = i + 1
}

### With zero are the times that the player did not
### get anything and with 1 the times that he/she won.

### ans.in is the initial choice and ans.fi is the final

table(ans.in)/i
table(ans.fi)/i

### In case that you want to take a random choice, then you
### have again -- of course -- less chances that changing

table(ans.random)/i

