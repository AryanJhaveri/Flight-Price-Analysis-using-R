# Flight Price Analysis

## Introduction

In the competitive world of air travel, understanding the factors that influence flight prices is crucial for both airlines and travelers.  

This project dives deep into analyzing these factors using real-world flight data to uncover key insights that can help users and businesses alike understand the underlying trends in flight pricing.

The analysis leverages **linear regression**, **ANOVA**, and various **visualizations** to identify relationships between **flight duration**, **stops**, **airline**, **departure and arrival times**, and **flight prices**.

## Table of Contents

- [Data Overview](#data-overview)
- [Business Questions Addressed](#business-questions-addressed)
- [Key Findings](#key-findings)
  - [Effect of Flight Duration on Price](#effect-of-flight-duration-on-price)
  - [Effect of Number of Stops on Price](#effect-of-number-of-stops-on-price)
  - [Effect of Airline and Days Left on Price](#effect-of-airline-and-days-left-on-price)
  - [Effect of Departure and Arrival Time on Price](#effect-of-departure-and-arrival-time-on-price)
- [Implications and Recommendations](#implications-and-recommendations)
  - [Summary](#summary)
  - [Business Implications](#business-implications)
  - [Strategic Recommendations](#strategic-recommendations)

## Data Overview

This project uses a flight dataset that includes various features such as:
- **Flight duration**
- **Number of stops**
- **Price**
- **Airline**
- **Departure and arrival times**
- **Days left until departure**

You can find the data [here](https://www.kaggle.com/datasets/gabrielsantello/advertisement-click-on-ad).

## Business Questions Addressed

This project addresses several critical questions about flight pricing:

1. **How does flight duration affect price?**
   - We explore the relationship between the duration of a flight and its price, determining whether longer flights tend to be more expensive.

2. **Does the number of stops influence flight prices?**
   - By analyzing the impact of stops on prices, we identify whether direct flights are consistently more expensive compared to those with one or more stops.

3. **How do airline choices and days left until departure affect pricing?**
   - This part of the analysis examines how different airlines and the time remaining until departure contribute to price variation.

4. **What is the effect of departure and arrival times on flight prices?**
   - We look into the influence of the time of day for departures and arrivals on flight pricing and the interactions between these two factors.

## Key Findings

### Effect of Flight Duration on Price
<table>
  <tr>
    <td>
      <strong>Duration and Price</strong>: The analysis shows a significant linear relationship between flight duration and price. As the duration increases, the price tends to increase by an average of 347.59 units.<br>
      This suggests that longer flights are priced higher, likely due to increased operational costs.
    </td>
    <td>
      <img src="https://github.com/user-attachments/assets/3d6846c4-685a-4222-a2f7-3efdebc8ab65" alt="Scatter Plot of Price vs. Flight Duration" width="1700"/>
    </td>
  </tr>
</table>

### Effect of Number of Stops on Price
<table>
  <tr>
    <td>
      <strong>Stops and Price</strong>: Significant differences in mean prices were found among flights with varying numbers of stops. Flights with more stops generally have higher prices.<br>
      This indicates that additional stops contribute to increased costs, possibly due to longer travel times and additional handling.
    </td>
    <td>
      <img src="https://github.com/user-attachments/assets/906bc351-d4e6-4c53-b4c0-1e548a80a40b" alt="Boxplot of Stops vs. Price" width="1700"/>
    </td>
  </tr>
</table>

### Effect of Airline and Days Left on Price
<table>
  <tr>
    <td>
      <strong>Airline and Days Left</strong>: Airline choice significantly affects flight prices, and this effect remains even when considering 'days_left'.<br>
      This finding highlights the importance of selecting the right airline and booking in advance to secure better prices.
    </td>
    <td>
      <img src="https://github.com/user-attachments/assets/6e2fccb1-59da-41ae-9201-7fd48ac9db95" alt="Boxplot of Airline vs. Price" width="1700"/>
    </td>
  </tr>
</table>

### Effect of Departure and Arrival Time on Price
<table>
  <tr>
    <td>
      <strong>Departure and Arrival Times</strong>: While departure time alone does not affect prices, the combination of departure and arrival times does have a significant impact.<br>
      This suggests that timing strategies could be optimized to take advantage of price variations based on flight schedules.
    </td>
    <td>
      <img src="https://github.com/user-attachments/assets/7277465f-4652-431f-9386-d86b75d2407e" alt="Interaction Plot of Departure and Arrival Times" width="1700"/>
    </td>
  </tr>
</table>

***For a more detailed analysis, you can click [here](https://rpubs.com/Aryan_Jhaveri/1218350)***

## Implications and Recommendations

### Summary

The analysis uncovered several significant factors that influence flight pricing. Flight duration, the number of stops, airline choice, and the departure and arrival times all play critical roles in determining flight prices. These insights can guide consumers in making informed decisions when booking flights, as well as help businesses in the travel industry optimize pricing strategies.

### Business Implications

- **Targeted Pricing Strategies**: Airlines can leverage this analysis to fine-tune their pricing strategies by understanding how factors like stops and flight duration affect consumer preferences and willingness to pay.
- **Customer Insights**: Travel platforms can use this information to recommend cheaper flights based on the number of stops, departure time, and days left until the flight.
- **Dynamic Pricing Models**: Implementing dynamic pricing models that take into account these factors could help airlines maximize revenue and fill seats more efficiently.

### Strategic Recommendations

- **Offer Discounts on Long-Duration Flights**: Since flight duration correlates with higher prices, offering occasional discounts on longer flights could attract budget-conscious travelers.
- **Highlight Non-stop Flights**: Since non-stop flights tend to be cheaper, advertising them as cost-effective options could appeal to price-sensitive customers.
- **Optimize Flight Times**: Use peak times identified in the analysis (e.g., late-night flights being more expensive) to offer promotions during off-peak hours, balancing demand.

These strategies can help airlines and travel platforms better connect with their target audiences and optimize their flight pricing models.
