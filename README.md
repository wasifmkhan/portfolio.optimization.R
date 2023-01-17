This repository will contains the files and the pdf used to present a portoflio optimization project I did during my masters final semester.

Discussion of the Python notebook is below. 
To see the code please click on the ipynb file above.

Methodology
The economy can be divided into the some major sectors and with the economic activities
reducing to a bare minimum, only the essential services are remaining active, therefore
currently consumer staples and utilities are supposed to outperform the stock market index.
The following sector indices were selected to analyze their performance during the 14 year
time horizon:

![image](https://user-images.githubusercontent.com/122067802/212204189-d944f405-f943-4381-a25f-4d86c1baee16.png)

The timeline selected for the sector indices are from August 30th, 2006 to June 30th, 2020
which covers some of the most interesting time periods in the stock markets history - including
the housing market bubble of 2008 leading to global recession, the Euro credit crunch and the
COVID-19 virus in 2020 causing the global pandemic. The purpose of selecting such a timeline
was to give a thorough picture of the stock market through its thick and thin.		
We will be randomly generating weights and allocating them to the eight sector indices
selected. The random process has been repeated 10,000 times generating 10,000 different
weighted-combinations of portfolio. The portfolio with the highest Sharpe ratio – the ratio of
return generated per unit of risk – would be the most optimal portfolio

![image](https://user-images.githubusercontent.com/122067802/212204231-99f67e8a-1b36-4e35-b851-60fe123e0e47.png)

![image](https://user-images.githubusercontent.com/122067802/212204247-66901e84-da0e-4a96-84fe-b045420bd48a.png)

![image](https://user-images.githubusercontent.com/122067802/212204267-3e1d3915-9684-41d8-95d7-c96d424d75b5.png)

The above table showcases the correlation among the different indices in the stock market. As
clearly seen, there is high correlation among the indices with correlation ranging above 0.6
apart from one instance between DSEN and DSRE which has a correlation of 0.57787. The result
comes in line with our preconceived notion that all the indices move along the same path.
However, there is still a possibility to exploit the difference in correlation in order to profit from
it and we will be dealing with in the ongoing sections.					

![image](https://user-images.githubusercontent.com/122067802/212204319-aebdfcb4-784a-43f8-9467-b4fe31d172f6.png)

![image](https://user-images.githubusercontent.com/122067802/212204348-061e2152-8bf5-4935-9330-4c59febc6c27.png)

We have decided to focus on the Sharpe ratio, which is a ratio for the expected return divided
by the expected volatilities and quantifies the maximum return that an investor can achieve for
a given unit of risk. The portfolio with the highest Sharpe Ratio will be the most optimal
portfolio.

![image](https://user-images.githubusercontent.com/122067802/212204374-b54aef5e-94dd-41f6-ab58-3ac8989a6a78.png)

As the above graph depicts, the selected portfolio yields a return of approximately 9.96%
annually with a standard deviation of 18.92%.
Monte Carlo Simulation
The randomly generated weights have given us an ideal portfolio of indices, which we expect to
invest in moving forward. However, Monte Carlo simulation will help us generate a range of
possible values that we can expect the portfolio to be in a year
A hypothetical sum of 100,000 is to be invested on 1st July 2020. The simulation is ran 10,000
times for 252 days that yielded a final value of at least $47,524 and a maximum value of
$215,377. The average value is expected to be around 110,480.

![image](https://user-images.githubusercontent.com/122067802/212204411-d4ca6f0c-c58d-4819-9921-336021386d6f.png)

Justification and Conclusion
The results point to a high percentage of assets, 29.47%, in the technology sector with a low
percentage in the energy and real estate sector. Even though the test was conducted with
historic data; however, the results match up with our fundamental analysis and future
expectations, as technology will be evidently present throughout every aspect of our life, a
significantly higher proportion in the technology sector is justified.
Another area, which has a high proportion of funds include the healthcare sector. The
reasoning behind it could be due to the boost in healthcare stocks during the 2020 global
pandemic when healthcare stocks were the prime focus because of their involvement in
developing a vaccine for the virus. There is a potential for new-disease outbreaks, which tips
the weight towards the healthcare and biotech firms.

Hence, a bet on healthcare sector is promising given the importance on medical research and
future vaccine developments.
The energy sector has also been given a low weightage of 8.54%, which coincides with the dim
future of the oil and gas industry as the world goes in non-renewable resources. Whether the
shift to renewable resources will be imminent in the near future or not is still debatable but the
world seems to be moving forward towards a sustainable energy plan. Hence, the energy index,
which has heavyweight oil and gas companies were given a lower weight, which seems justified
as we move forward.
The historical average return on the S&P500 has been 9.80%, however the slight change in
sector allocations can increase the return to 9.96%, which can make a significant impact over a
long time horizon. Our Monte Carlo estimates the mean investment value to be at $110,480
whereas a traditional S&P500 weightage would have yielded to about $109,800.

















