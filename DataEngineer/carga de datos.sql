-- En este archivo se cargan los datos recopilados en archivos .csv a la base de datos en sus tablas pertinentes.

use taxis;

load data local infile 'Datasets/ev.csv'
into table ev
fields terminated by ',' enclosed by '' escaped by ''
lines terminated by '\n' ignore 1 lines;
SHOW GLOBAL VARIABLES LIKE 'local_infile';

load data local infile 'Datasets/Fuel_cost.csv'
into table fuel_cost
fields terminated by ',' enclosed by '' escaped by ''
lines terminated by '\n' ignore 1 lines;

load data local infile 'Datasets/Electricity_cost.csv'
into table electricity_cost
fields terminated by ',' enclosed by '' escaped by ''
lines terminated by '\n' ignore 1 lines;

load data local infile 'Datasets/ICEV.csv'
into table icev
fields terminated by ',' enclosed by '' escaped by ''
lines terminated by '\n' ignore 1 lines;

load data local infile 'Datasets/Percentage_EV_Vehicle.csv'
into table percentage_ev
fields terminated by ',' enclosed by '' escaped by ''
lines terminated by '\n' ignore 1 lines;

load data local infile 'Datasets/Emission_Vehicle.csv'
into table emission_vehicle
fields terminated by ',' enclosed by '' escaped by ''
lines terminated by '\n' ignore 1 lines;

-- En el caso de las tablas de taxis, se crean con el formato 'ytdYYYYMM' con YYYY representando año y MM representando mes
-- Así la tabla correspondiente a enero del 2015 tiene el nombre ytd201501.csv
-- Del mismo modo, diciembre del 2022 sera ytd202212.csv
-- Con cada carga de datos mensual solo se cambiaron los digitos correspondientes al mes y año, quedando escrita una sola consulta.

load data local infile 'taxi_datasets/ytd202212.csv'
into table tlc_trip_record
fields terminated by ',' enclosed by '' escaped by ''
lines terminated by '\n' ignore 1 lines;

-- Una vez cargados los datos pasamos a hacer algunas consultas para verificar 
-- que todo este en orden.

select * from electricity_cost;

select * from emission_vehicle;

select * from ev;

select * from fuel_cost;

select * from icev;

select * from mean_consumption;

select * from percentage_ev;

select * from tlc_trip_record where Date_Trip='2015-01';

select count(*) from tlc_trip_record;

