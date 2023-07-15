### Gradient Enhanced Decision Tree

The construction of the tree was based on work carried out by Straka (2020) where Geographic Information System (GIS) information was used to generate a model for predicting the popularity associated with the location of charging stations in the Netherlands. The details of the algorithm and optimized hyperparameters were not described in the scientific work however, they were evaluated in the construction of the model for the current project.

### Model characteristics

XGBoost was used to generate the model, evaluating its performance based on 3 characteristics: 
* Accuracy: Metric that measures the proportion of correct predictions made by the model compared to the total predictions. A value of 0.87 was obtained, significantly higher than the target accuracy described in specific objectives. 
* F-Score: Evaluation metric used in classification problems to assess the balance between model accuracy and completeness. It is especially useful when there is an imbalance in the target classes, its application is quite useful in the face of model scalability where this described evaluation system can be used to verify the relevance of the model in Mexico City. The score obtained was 0.70, higher than expected in the specific objectives preliminary to the generation of the model. 

A new evaluation measure, the Matthew Correlation Coefficient (MCC), was included:

* MCC: A metric that measures the overall quality of model classification, taking into account the four possible classification outcomes: true positives, true negatives, false positives and false negatives. It provides a more balanced and robust measure to assess the classification capability of the model, especially in cases of class imbalance and noisy data. Responding to the quality of the data coming from a geographic system, the incorporation of this feature allows us to verify the robustness of the model. The score obtained was 0.63, marking a guideline for improvement in the scalability of the model. 

The training and test samples were 80% and 20% of the data, following conventional instructions. The feature importance array, tree structure array and node splitting threshold were also generated and stored in variables for future analysis.

### Conclusions

The evaluation parameters were higher than expected using the XGBoost algorithm. The model seems to have a behavior capable of predicting location characteristics to increase the popularity of charging stations being able to extrapolate the conclusions to Mexico City.

### Perspectives of the project

A possible improvement in the MCC is considered, hoping to get closer to value 1, this would generate greater robustness to the project and would be able to prevent failures when using data from other locations in the world. The implementation of GIS data from Mexico City would provide a significant enrichment capacity to the project, however, due to space and data management limitations, the current work only incorporates information from the Netherlands, transferring the conclusions of the tree to a map of Mexico City. It is noteworthy to highlight that the implementation of EVs and charging stations in Mexico City are cross-referenced by social perception, so the response to these will not be evaluated.
