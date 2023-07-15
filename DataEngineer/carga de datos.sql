use taxis;
select * from ev;
load data local infile '/mnt/mauri/Programas/Henry/PF/Datasets/ev.csv'
into table ev
fields terminated by ',' enclosed by '' escaped by ''
lines terminated by '\n' ignore 1 lines;
SHOW GLOBAL VARIABLES LIKE 'local_infile';
