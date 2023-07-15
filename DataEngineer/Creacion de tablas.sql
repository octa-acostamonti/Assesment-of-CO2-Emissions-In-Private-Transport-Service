use taxis;

create table if not exists TLC_Trip_Record(
	ID_Trip                int not null auto_increment,
    Date_Trip              varchar(7),
    ID_Calendar            int,
    ID_Emission            int,
	Tpep_pickup_datetime   date,
    Tpep_dropoff_datetime  date,
    Passenger_Count        int,
    Trip_Distance          float,
    RatecodeID             int, 
    Fare_Amount            float, 
    Total_amount           float,
    Is_Electric            bool,
    Fuel_Consumption       float,
    CO2_Emission           float,
    Total_Fuel_Cost        float,
    primary key (ID_Trip)
)engine=InnoDB default charset=utf8mb4 collate=utf8mb4_spanish_ci;

create table if not exists Percentage_EV(
	Year_Emission     int not null,
    Percentage_EV     float,
    primary key (Year_Emission)
)engine=InnoDB default charset=utf8mb4 collate=utf8mb4_spanish_ci;


create table if not exists EV(
	ID_EV            int not null auto_increment,
    Brand            varchar(70),
    Model            varchar(70),
    Autonomy_Km      int,
    Efficiency_Wh_Km int,
    Body_Style        varchar(50),
    Price_Euro        int,
    primary key (ID_EV)
)engine=InnoDB default charset=utf8mb4 collate=utf8mb4_spanish_ci;

create table if not exists ICEV(
	ID_ICEV         int not null auto_increment,
    Brand           varchar(70),
    Model           varchar(70),
    ConsumptionKM   float,
    primary key (ID_ICEV)
)engine=InnoDB default charset=utf8mb4 collate=utf8mb4_spanish_ci;

create table if not exists Fuel_Cost(
	ID_Fuel      int not null auto_increment,
    Month_Fuel   varchar(20),
    Cost         float,
    primary Key (ID_Fuel)
)engine=InnoDB default charset=utf8mb4 collate=utf8mb4_spanish_ci;

create table if not exists Electricity_Cost(
	ID_Electricity       int not null auto_increment,
    Month_Electricity    varchar(20),
    Cost                 float,
    primary key (ID_Electricity)
)engine=InnoDB default charset=utf8mb4 collate=utf8mb4_spanish_ci;

create table if not exists Emission_Vehicle(
	ID_EmissionVehicle  int not null auto_increment,
    Type_Emission       varchar(80),
    CO2_EmissionKM     float,
    primary key (ID_EmissionVehicle)
)engine=InnoDB default charset=utf8mb4 collate=utf8mb4_spanish_ci;

show tables;