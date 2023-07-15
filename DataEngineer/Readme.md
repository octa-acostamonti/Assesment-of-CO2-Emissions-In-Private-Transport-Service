Aqui va la documentacion

TLC Trip Record Dataset
|Columna|Explicacion|
|-----------------------|-----------------------------------------------------------------------------------------------------------|
| ID_trip               | ID del viaje                                                                                              |
| Trip_distance         | Distancia del viaje del servicio de transporte                                                            |
| Total_amount          | Dinero total recaudado del viaje                                                                          |
| ID_Calendar           | Fecha del viaje                                                                                           |
| Is_Electric           | Determina si el vehículo utilizado es el electrico o no                                                   |
| Fuel_consumption      | Combustible utilizado en el viaje en galones                                                              |
| CO2_Emission          | Emisión del CO2 del viaje                                                                                 |
| Total_Fuel_Cost       | Costo total de el combustible utilizado                                                                   |
| tpep_pickup_datetime  | Fecha y hora en el que el taxímetro se activó                                                             |
| tpep_dropoff_datetime | Fecha y hora en el que el taxímetro se desactivo                                                          |
| PULocationID          | ID del lugar (boroughs) donde el taxímetro se activó                                                      |
| DOLocationID          | ID del lugar (boroughs) donde el taxímetro se desactivo                                                   |
| Passanger_count       | Cantidad de pasajeros en el viaje                                                                         |
| RateCodeID            | ID de la tasa que se aplicó (existen tasas diferentes dependiendo del viaje)                              |
| Fare_amount           | La tarifa calculada por el taxímetro está definida por el tiempo distancia y taza del viaje.              |
| Congetstion_Surcharge | Monto adicional cobrado a los pasajeros dependiendo de la congestión del tráfico en el momento del viaje. |


Percentage_EV_Per_Year
|Columna|Explicacion|
|---------------|-------------------------------------------------------------------------|
| ID_Percentage | ID del porcentaje de vehículos por año                                  |
| Año           | Año del porcentaje estimados de vehículos en circulación a nivel global |
| Percentage_EV | Porcentaje de vehículos eléctricos circulando a nivel global por año    |

EV
|Columna|Explicacion|
|------------|------------------------------------------------------|
| ID_Ev      | ID del vehículo eléctrico                            |
| Brand      | Fabricante del vehículo eléctrico                    |
| Model      | Modelo del vehículo eléctrico                        |
| Efficiency | La eficiencia del vehículo eléctrico medido en Wh/km |


ICEV
| Columna        | Explicacion                                   |
|----------------|-----------------------------------------------|
| ID_ICEV        | ID del vehiculo de combustion interna         |
| Brand          | Fabricante del vehiculo de combustion interna |
| Model          | Modelo del vehiculo de combustion interna     |
| Consumption/km | Consumo de gasolina por km                    |

Fuel_Cost
| Columna     | Explicacion                                                             |
|-------------|-------------------------------------------------------------------------|
| ID_Fuel     | ID del combustible                                                      |
| ID_Calendar | ID del calendario                                                       |
| Cost        | Costo del combustible agrupado por semanas en dólares en Estados Unidos |

Electricity_Cost
| Columna       | Explicacion                                            |
|---------------|--------------------------------------------------------|
| ID_Electricty | ID de electricidad                                     |
| ID_Calendar   | ID del calendario                                      |
| Cost          | Costo de la electricidad por dólares en Estados Unidos |

Emission_Vehicle
| Columna         | Explicacion                                         |
|-----------------|-----------------------------------------------------|
| ID_emission     | ID de la emisión del vehículo                       |
| Type            | Tipo de vehículo: eléctrico o de combustión interna |
| CO2 Emission/km | Emisión de CO2 del vehículo por KMs                 |

Calendar
| Columna     | Explicacion       |
|-------------|-------------------|
| ID_Calendar | ID del calendario |
| AAAA/MM     | Año y mes         |

Rate_Code
| Columna     | Explicacion             |
|-------------|-------------------------|
| ID_RateCode | ID de la tasa de tarifa |
| Rate Code   | Tasa de la tarifa       |

Temperatura_NewYork
| Columna         | Explicacion                                                               |
|-----------------|---------------------------------------------------------------------------|
| ID_Temperature  | ID de la temperatura del dia                                              |
| time            | Fecha del dia en el que se tomó la temperatura en la ciudad de Nueva York |
| max_temperature | Máxima temperatura registrada en el dia de la ciudad de Nueva York        |
| avg_temperature | Promedio de temperatura registrada en el dia de la ciudad de Nueva York   |
| min_temperature | Minimo de temperatura registrada en el dia de la ciudad de Nueva York     |
| ID_Calendar     | ID del calendario                                                         |

Location
| Columna     | Explicacion                        |
|-------------|------------------------------------|
| ID_Location | ID del borough de Nueva York       |
| Location    | Nombre de el borough de Nueva York |

