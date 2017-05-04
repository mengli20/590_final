Final Project Proposal
================
English
3/22/2017

### Problem:

For my project, I will be creating a package that analyzes soil quality data from an interdisciplinary project on the performance and adoption of biodegradable plastic mulches. In the production of many specialty crops, plastic mulch films are employed to provide benefits such as moisture retention, soil temperature optimization, and weed control. Biodegradable plastic mulches (BDMs) are a more sustainable alternative which, after being tilled into the soil subsequent to service life, biodegrade into carbon dioxide, water, and microbial biomass as part of the soil carbon (C) cycle. However, the influence of BDMs on soil quality are not well characterized. Field trials in WA and TN are testing 4 BDMs and 3 control treatments. Soil quality data is collected before harvest and at the end of the season. Currently there are four seasons of soil quality data including total organic carbon, dissolved organic carbon, pH, nitrate, ammonium, and CO2 respiration. Soil moisture and temperature data are collected by decagon sensors year-round. There is a lot of soil quality data that needs to be analyzed and disseminated to different stakeholders in the project. My package would utilize the moisture, temperature and soil quality data collected as part of this project and start to turn it into reportable results.

### Solution:

Running statistics and plotting each soil quality measure separately is redundant and time consuming. Therefore, my package would group the data, summarize it, analyze the means and then create a bar plot by treatment. The field design is randomized complete block design with split plot and repeated measures. Differences between treatments could be analyzed using an ANOVA. Interactions between moisture, temperature and soil quality data should also be analyzed by this package.

### Chacon workflow:

A centralized workflow should be sufficient for this project. There is only one developer but I want people to review the package and be able to make changes that I can easily push to the master.
