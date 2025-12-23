This MATLAB code provides a series of simulations and visualizations aimed at enhancing scalability and security in blockchain-powered healthcare systems. By using various 3D scatter plots, convergence curves, and bar charts, this code evaluates and compares the performance of different user groups, healthcare transaction models, and system metrics, such as time complexity, number of transactions, and encryption times.

Features

3D Scatter Plots: Visualize user data with three categories (Good, Very Good, Bad Users) based on "No Nodes," "Threshold Value," and "Security Level."

Grouped Bar Charts: Compare different system metrics such as "Execution Time" and "Number of Attributes."

Convergence Curves: Simulate and compare the convergence of mobility speed and latency with varying nodes for different models.

Time Complexity and Transaction Analysis: Analyze time complexity and transaction counts across different numbers of attributes.

Code Structure

The code consists of multiple sections that generate visualizations and perform simulations related to blockchain-powered healthcare systems:

1. 3D Scatter Plot for User Data

Purpose: Plots 3D scatter plots to visualize user data (Good, Very Good, and Bad Users) based on their respective "No Nodes," "Threshold Value," and "Security Level."

Example: The code generates two figures:

One for initial fixed user data.

Another with random data points representing the users.

2. Grouped Bar Chart for System Metrics

Purpose: Plots a grouped bar chart comparing system performance based on three metrics: Sensor Output, Speed, and AA (Artificial Intelligence).

Example: A bar chart is generated with the displacement (mm) on the x-axis and sensor metrics on the y-axis.

3. Convergence Curves for Mobility Speed and Latency

Purpose: Simulate the convergence of system performance over a range of nodes.

Example: The code uses logistic growth to model the convergence of mobility speed and latency, showing how these metrics behave under different conditions.

4. Time Complexity and Number of Transactions Bar Chart

Purpose: Plots a bar chart comparing the time complexity (in micro-seconds) and the number of transactions across various numbers of attributes.

Example: The chart shows execution time and number of transactions for various system approaches, including proposed schemes and baseline models.
