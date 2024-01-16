# Flight Price Analysis

## Main Objective
In this project, I dive into what affects flight prices. I aim to give travelers useful tips and anyone interested in data a peek into how airline pricing works. Using techniques  such as *linear regression, correlation test, pairwise-t test, global F test, ANOVA, hypothesis testing, ANCOVA and two way ANOVA*, I uncover why flight prices change based on things like how long the flight is, how many stops it has, which airline you choose, and when you book.

Code: [flight-analysis](flight_price_analysis)

## Detailed Analysis

### Flight Duration vs. Price
I started by plotting a scatter graph to visually assess the relationship between flight duration and price. After observing a potential correlation, I conducted a correlation test which confirmed a positive relationship. To model this further, I performed linear regression to quantify the exact nature of this relationship.

### Impact of Stops on Price
For the second aspect, I employed a global F-test through ANOVA, which indicated significant differences in mean prices between flights with varying numbers of stops. Following this, I conducted pairwise t-tests to identify specific differences between group means.

### Airline Influence on Price
In exploring the impact of airline choice on pricing, I first ran an ANOVA test. Subsequently, I introduced 'days left' as a covariate in an ANCOVA to understand its additional influence, adjusting for the timing of the booking relative to the flight date.

### Departure and Arrival Time Impact
Lastly, I created boxplots for different times of arrival and departure to visualize price distributions. This was complemented with a two-way ANOVA to investigate the interaction effects between these two variables on flight prices.

