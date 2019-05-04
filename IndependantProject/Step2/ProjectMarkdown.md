# Predicting Extinction  of Flora in Kalamazoo, MI 

## Evan Gallagher 
### Biological question:

Do any of 10 basic plant characteristics stand out as a good predictor of extinction? 


### Context 

Data is pulled from the American Journal of Botany. The section titled "Species Characteristics affect Local Extinctions," has the goal of categorizing basic characteristics of all past and present plant flora in Kalamazoo county, MI. These characteristics are listed along side whether or not the species has gone extinct. These two factors help indicate if any of these basic characteristics can lead to extinction. Data collection lasts from 1890-2003.


### Methods

##### The source of the data:



- [Original Journal ]([https://doi.org/10.1002/ajb2.1266](https://doi.org/10.1002/ajb2.1266)) source from the Journal of Botany:
	- Zettlemoyer MA, McKenna DD, Lau JA (2019) Species characteristics affect local extinctions. American Journal of Botany. 

- [Dryad Data Package]([https://datadryad.org/resource/doi:10.5061/dryad.231m570/1](https://datadryad.org/resource/doi:10.5061/dryad.231m570/1)) source
	- Zettlemoyer MA, McKenna DD, Lau JA (2019) Data from: Species characteristics affect local extinctions. Dryad Digital Repository


Kalamazoo county in Michigan was selected for study, as there were previously existing records of plant characteristics dating back to 1890. The characteristics that were tracked in this study were "species traits (growth form, life history, nitrogen‐fixation, photosynthetic pathway), and species characteristics (community association, species origin, range edge, habitat specialization, rarity.)" (Zettlemoyer) 

With this data, Zettlemoyer added another category, detailing whether or not the species has gone extinct. With this, statistical tests could be run to look for significant results regarding a link between these characteristics and extinction. 

This study takes 1,137 known species of both natural and invasive flora found in Kalamazoo county into account. 


##### What the original authors did with the data:

On top of examining basic characteristics, Zettlemoyer heavily examines phylogenetic relatedness of these species. Genetic similarity between plant species is examined to make a phylogenetic tree, which was then compared to extinction. This phylogenetic analysis provided no significant results, so the focus of Zettlemoyer's study moved more towards characteristics. Phylogenetic analysis is omitted entirely from my study. 

Though not specifically detailed in the study, statistical tests were run to find defining characteristics of extinction. The main result was that regionally rare, habitat specialist, and species at the edge of their range were most likely to become extinct. As a result of this study, they recommend to keep close watch on already rare species. While I agree with both the results as well as the recommendation, I personally feel there is more here to be explored.   

##### What  I did with the data:

First, I wanted to see if I could reproduce the results Zettlemoyer found. I ran a two-tailed Z test on each  characteristic vs. species extinction, and found very similar results. I found single habitat specialists most susceptible to extinction (p= .0000341), species at the edge of their range second (p= .00263), and rare species with a p value of .14, meaning different statistical tests were likely used to reach that result, as rarity is the only numerical response. 

While these are certainly the most significant results, there is more to look at. When examining some of the categories in more depth there were interesting results. For example, when examining the entire "community association" column, I could not find significant results. However, when looking at the individual characteristics of this column(forest, man-made, prairie, or wetland) vs extinction, I found that prairies were much more susceptible to extinction (p= .000469) than wetlands (p= .78). It wasn't just for the "community association" characteristic either, "growth form" produced similar results where vine had low survivability compared to other subcategories. (p= .000025)   

My results suggest that there is more analysis to be  done on this dataset. 


### Conclusion

The biggest conclusion to draw from this dataset is still what Zettlemoyer initially reported. From the basic categories listed, species on the edge of their native habitat, over specialization to environment, and rarity are the best characteristics to look out for with regards to future extinction. My analysis confirmed this as a good analysis but left some room for further study. 

### Future Study 
The first thing to look into deeper is the type of land it lies in ("community") and the type of plant ("growth form.") Zettlemoyer's initial study consider each of these to be a single characteristic instead of a spectrum of different characteristics that might contribute to extinction in their given environments differently. 

Visual representations such as Fig. 1 would be useful for this analysis. Plotting each category within "growth form" and "range edge" like this can help visualize which subcategory would be worth looking into further. 

![Figure 1](files/Users/Evan/Desktop/GrowthFormPlot1.png)


The next step would be to see how reproducible these results are in different environments. The purpose of a study like this is to take just one environment and see if specific characteristics here contribute to extinction. Now that characteristics have been narrowed down, the study can expand to see how these characteristics apply in different environments. Both the results of Zettlemoyer (species rarity, range edge, and specialization), as well as my own (growth form and community) would be worth implementing into this larger scale study. 


