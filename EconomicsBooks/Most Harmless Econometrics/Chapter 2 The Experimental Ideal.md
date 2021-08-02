# Chapter 2: The Experimental Ideal

$\underbrace{E[Y_i|D_i=1]-E[Y_i|D_i=0]}_{Observed difference}=\underbrace{E[Y_{1i}|D_i=1]-E[Y_{0i}|D_i=1]}_{ATE\ On \ TREATED}+\underbrace{E[Y_{0i}|D_i=1]-E[Y_{0i}|D_i=0]}_{Selection\ Bias}$​​​​​

If we make $D_i$ as **Random assignment** i.e., independent of $Y_i$, then the lase equation would be:

$$\underbrace{E[Y_i|D_i=1]-E[Y_i|D_i=0]}_{Observed difference}=\underbrace{E[Y_{1i}|D_i=1]-E[Y_{0i}|D_i=1]}_{ATE\ On \ TREATED}+\underbrace{E[Y_{0i}|D_i=0]-E[Y_{0i}|D_i=0]}_{Selection\ Bias}=E[Y_{1i}|D_i=1]-E[Y_{0i}|D_i=1]=E[Y_{1i}-Y_{0i}]$$​**Selection Bias** has been eliminated if making treatment random. 









