### Árbol de decisión potenciado por gradiente

La construcción del árbol se tomó como referencia trabajos llevados a cabo por Straka (2020) donde se utilizó información del Sistema de Información Geográfica (GIS, por sus siglas en inglés) para la generación de un modelo de predicción de la popularidad asociada a la localización de estaciones de carga en la ciudad de Holanda en Países Bajos. Los detalles del algoritmo e hiperparámetros optimizados no fueron descritos en el trabajo científico sin embargo, fueron evaluados en la construcción del modelo para el actual proyecto. 

### Características del modelo

Se utilizó XGBoost para la generación del modelo evaluando su performance con base en 3 características: 
* Exactitud: Métrica que mide la proporción de predicciones correctas realizadas por el modelo en comparación con el total de predicciones. Se obtuvó un valor de 0.87, notoriamente mayor a la exactitud objetivo descrita en objetivos específicos. 
* F-Score: Métrica de evaluación utilizada en problemas de clasificación para evaluar el equilibrio entre la precisión y la exhaustividad del modelo. Es especialmente útil cuando hay un desequilibrio en las clases objetivo, su aplicación es bastante útil en cara a la escalabilidad del modelo donde este sistema de evaluación descrita pueda ser usado para verificar la relevancia del modelo en Ciudad de México. La calificación obtenida fue de 0.70, superior a la esperada en los objetivos espeficicos preliminares a la generación del modelo. 

Se incluyó una nueva medida de evaluación el Coeficiente de Correlación de Matthew (MCC, por sus siglas en inglés):

* MCC: Métrica que mide la calidad general de la clasificación del modelo, teniendo en cuenta los cuatro posibles resultados de la clasificación: verdaderos positivos, verdaderos negativos, falsos positivos y falsos negativos. Proporciona una medida más equilibrada y robusta para evaluar la capacidad de clasificación del modelo, especialmente en casos de desequilibrio de clases y datos ruidosos. Respondiendo a la calidad de los datos provinientes de un sistema geográfico, la incorporación de esta característica nos permite verificar la robustez del modelo. La calificación obtenida fue de 0.63, marcando una pauta de mejora en cara a la escalibidad del modelo. 

Las muestras de entrenamiento y prueba fueron de 80% y 20% de los datos, siguiendo instrucciones convencionales. También se generaron el arreglo de  importancia de las características, el arreglo de estructura de árboles y el umbral de división de nodos que fueron guardados en variables para su futuro análisis.

### Conclusiones

Los parámetros de evaluación fueron superiores a los esperados mediante el algoritmo de XGBoost. El modelo parece tener un comportamiento capaz de predecir las características de la localización para aumentar la popularidad de estaciones de carga siendo capaz de extrapolar las conclusiones a Ciudad de México.

### Perspectivas del proyecto

Se considera una posible mejoría en el MCC, esperando acercarse más al valor 1, esto generaría mayor robustez al proyecto y sería capaz de prevenirse fallos cuando se empleen datos de otras locaciones del mundo. La implementación de datos de GIS de Ciudad de México brindaría una capacidad de enriquecimiento al proyecto bastante importante, sin embargo, por limitaciones en espacio y manejo de datos, el actual trabajo únicamente incorpora información de Holanda,traslando las conclusiones del árbol a un mapa de la Ciudad de México. Es notable destacar que la implementación de EV y de estaciones de carga de Ciudad de México son cruzadas por la percepción social, de manera que la respuesta ante éstas no será evaluada.
