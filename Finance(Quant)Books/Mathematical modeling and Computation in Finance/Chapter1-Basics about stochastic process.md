# Reading notes for the book *Mathematical Modeling and Computation in Finance* (The autors are Cornelis w Oosterlee and Lech A Grzelak)

The book link is [Here](https://www.amazon.com/Mathematical-Modeling-Computation-Finance-Exercises/dp/1786348055/ref=sr_1_2?crid=2BDVLJSJ4QONL&dchild=1&keywords=mathematical+modeling+and+computation+in+finance&qid=1627259346&sprefix=mathematical+modeling+and+%2Caps%2C433&sr=8-2). 

* Basics about stochastic processes
	* Stochastic Variables
	* Stochastic processes, martingale property
	* Stochastic Integration, Ito integral
	* Exercise set

---



Characteristic function (Moment-generating function): $\phi_X(x)$

$$\phi_X(u):= E [e^{iuX}]= \int_{\infty}^{\infty} e^{iux}\, dF_X(x)  = \int_{\infty}^{\infty} e^{iux}f_X(x) \, dx  $$​​​

$$\phi_X(0)=1$$ and $$\phi_X(-i)=E[e^X]$$

The moments of random variable of X:

$$E[X^k]=\frac{1}{i^k}\frac{d^k}{du^k}\phi_X(x)|_{u=0}$$​

$$E[X^k]=\frac{1}{i^k}\frac{d^k}{du^k}\phi_X(x)|_{u=0}\overset{\mathrm{def}}{=}\frac{1}{i^k}\frac{d^k}{du^k}\int_{\infty}^{\infty} e^{iux}\, dF_X(x)|_{u=0} \overset{\mathrm{MGF}}{=}\frac{d^k}{du^k}\phi_X(-iu)$$​​

**Note**: The PDF function and CDF are very smooth function, but the characertistic function is an **oscillation** function (Because it uses complex system).

**Cumulant Characteristic function $\varsigma_k()$​​**:

$$\varsigma_k( )=\log E [e^{iuX}]=\log \phi(x)$$​​

**Inverse Fourier transform of characteristic function**: $f_X(x)=\frac{1}{\pi}\int_{\R}\phi_X(u)e^{-iux}\, du$​

By MacLaulin series: $ e^x=\sum_{k=0}^{\infty}\frac{x^k}{k!}$​​

**Dirac delta function**: $\delta(x)=+\infty$ if x=0, otherwise, $\delta(x)=0$

















