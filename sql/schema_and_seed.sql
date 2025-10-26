-- Create and use the yacht_charter_business database
create database if not exists 	YACHT_CHARTER_BUSINESS ;
use YACHT_CHARTER_BUSINESS ;

-- Create and populate tables customer, port, yacht, charter, visit.
/*
CUSTOMER  (cx_id,cx_name,cx_email,nationality,cx_phone_no)
PORT (p_name,p_phone_no,p_email,docking_no)
YACHT (y_name,y_type,y_model,cost_of_hire,berth_no,home_port)
CHARTER (charter_id,cx_id*,y_name* ,start_date,charter_duration)
VISIT (visit_id, start_date,date_of_arrival,visit_duration, p_name*,charter_id* )
*/
-- Create the CUSTOMER table
create table CUSTOMER (
cx_id varchar (10) not null,
cx_name varchar (20),
cx_email varchar (40),
nationality varchar (30),
cx_phone_no varchar (15),
constraint customer_pk primary key (cx_id) 
);
-- Insert data into the CUSTOMER table
insert into CUSTOMER 
values ('D13-101','Bette Davis','bette.davis@ulster.ac.uk','American','41728003'),
('D13-203','Cary Grant','bigcary@yahoo.com','British','+44417654321'),
('D13-306','William Holden','billyho66@yahoo.com','Irish','+38198322843'),
('D13-42','Humphrey Bogart','bogieh@gmail.com','American','07782751839'),
('D13-51','Ingrid Bergman','IngridB@hotmail.com','Swedish','02890123456'),
('D13-R20','Jean Harlow','jeanh99@gmail.com','German','005866419887654'),
('D13-R93','John Wayne','john.wayne@ulster.ac.uk','South African','02890112233'),
('D14-38','Katharine Hepburn','kath_hep29@hotmail.com','Irish','00447880708090'),
('D17-022','Marilyn Monroe','marilyn@hotmail.com','French','+88487618356732');

-- Create the PORT table

create table PORT (
p_name varchar (20) not null,
port_phone_no varchar (20),
p_email varchar (40),
docking_no smallint,
constraint port_pk primary key (p_name)
);
-- Insert data into the PORT table
insert into PORT
values ('Genoa', '+3984774025', 'genoa667@genoaadmin.co.it', 160),
('Kusadasi', '+9045204295', 'Kusadasi_harbour@hotmail.co.tr', 96),
('Barcelona', '+34(0)8892436767', 'harbourmaster@barcelona_marina.com', 211),
('Marmaris', '+90(0)62228138', Null, 69),
('Perpignan', '+3373600125', Null, 88),
('Paphos', '+35788301000', 'paphosmariana@cyprusports.cy', 47),
('Monaco', '0037788356302', 'mariana@monacoport.mc', 104),
('Dénia', '+90229453883', 'denia_port@denia_port.com', 31),
('St Tropez', Null, 'master@sttropezmarina.fr', 239),
('Cartagena', '+34(0)62045005', Null, 21),
('Palma', '+3494955320', Null, 74),
('Marseiles', '+3330026016', 'marseiles_port@france_ports.fr', 92),
('Malaga', '+3430336117', 'harbour_master@malagaport.com', 198),
('Heraklion', Null, 'herp@heraklioncity.co.gr', 85),
('Athens', '+3014936640', 'paays7@athensport.gr', 106),
('Valencia', '+3483884002', Null, 74),
('Izmir', '009062602105', Null, 93),
('Cagliari', '+3963660326', 'ettwu7@gmail.com', 40),
('Naples', '+3990583686', Null, 132),
('Palermo', '+3922746104', 'ggaft4@visitpalermo.co.it', 57),
('Bodrum', '+9099264831', Null, 89),
('Lisbon', '0035144700212', Null, 79),
('Magaluf', Null, 'maghar@maghar.com', 88),
('Cadiz', '+34(0)18128403', Null, 90),
('Montpelier', '+33(0)51411947', Null, 79),
('Cannes', '+3366295633', 'cannes.marina@yahoo.com', 148),
('Tangier', '+21245936724', 'tan778@tangierport.com', 63);
-- Create the YACHT table
create table YACHT (
y_name varchar (20) not null,
y_type varchar (20),
y_model varchar (25),
cost_of_hire decimal (10, 2),
berth_no tinyint, 
home_port varchar(30),
constraint yacht_name_pk primary key (y_name)
);
-- Insert data into the YACHT table
insert into YACHT
values ('Serendipity', 'Monohull', 'Catalina 350', 2995.92, 9, 'Genoa'),
('Second Wind', 'Catamaran', 'MacGregor 26X', 1063.45, 8, 'Kusadasi'),
('Mad Hatter', 'Monohull', 'Jeanneau 42 DS', 869.45, 4, 'Barcelona'),
('Orion', 'Powered', 'Ranger 28', 2309.56, 9, 'Marmaris'),
('Serenity', 'Powered', 'Ranger 28', 2294, 11, 'Genoa'),
('Wind Dancer', 'Monohull', 'Jeanneau 42 DS', 892.4, 4, 'Barcelona'),
('Windsong', 'Catamaran', 'MacGregor 26X', 1352.9, 7, 'Dénia'),
('Escape', 'Monohull', 'Beneteau 373', 3016.34, 10, 'Kusadasi');
-- Create the CHARTER table

create table CHARTER (
charter_id varchar (10) not null,
cx_id varchar (10) not null,
y_name varchar (20) null,
start_date date,
charter_duration tinyint,
constraint charter_pk primary key (charter_id)
);

-- Insert data into the CHARTER table
insert into CHARTER
values ('CH-033', 'D13-R20', 'Serendipity', '2018-06-17', 7),
('CH-032', 'D17-022', 'Second Wind', '2018-06-24', 36),
('CH-027', 'D13-101', 'Mad Hatter', '2018-06-25', 7),
('CH-034', 'D13-203', 'Serendipity', '2018-06-30', 18),
('CH-036', 'D13-42', 'Serenity', '2018-07-02', 14),
('CH-028', 'D13-42', 'Mad Hatter', '2018-07-05', 21),
('CH-043', 'D13-306', 'Windsong', '2018-07-06', 10),
('CH-030', 'D13-R20', 'Orion', '2018-07-11', 14),
('CH-039', 'D13-101', 'Wind Dancer', '2018-07-12', 7),
('CH-035', 'D13-R20', 'Serendipity', '2018-07-22', 10),
('CH-037', 'D14-38', 'Serenity', '2018-07-23', 21),
('CH-044', 'D13-306', 'Windsong', '2018-07-29', 35),
('CH-031', 'D13-101', 'Orion', '2018-07-30', 10),
('CH-029', 'D13-R93', 'Mad Hatter', '2018-08-05', 14),
('CH-040', 'D17-022', 'Wind Dancer', '2018-08-10', 10),
('CH-038', 'D13-203', 'Serendipity', '2018-08-18', 7),
('CH-041', 'D13-51', 'Wind Dancer', '2018-08-23', 7),
('CH-026', 'D13-51', 'Escape', '2018-08-25', 14),
('CH-042', 'D14-38', 'Wind Dancer', '2018-09-06', 15),
('CH-045', 'D13-203', 'Windsong', '2018-09-06', 21);

-- Create the VISIT table
create table VISIT (
visit_id varchar (6) not null,
start_date date, 
date_of_arrival date, 
visit_duration tinyint,
p_name varchar (20) not null,
charter_id varchar (10) not null,
constraint visit_pk primary key (visit_id)
);

-- Insert data into the VISIT table
insert into VISIT 
values 
('V101','2018-06-17','2018-06-17',0,'Genoa','CH-033'),
('V102','2018-06-24','2018-06-24',0,'Kusadasi','CH-032'),
('V103','2018-06-25','2018-06-25',0,'Barcelona','CH-027'),
('V104','2018-06-24','2018-06-27',1,'Marmaris','CH-032'),
('V105','2018-06-25','2018-06-29',1,'Perpignan','CH-027'),
('V106','2018-06-30','2018-06-30',1,'Genoa','CH-034'),
('V107','2018-07-02','2018-07-02',1,'Genoa','CH-036'),
('V108','2018-06-24','2018-07-04',3,'Paphos','CH-032'),
('V109','2018-06-30','2018-07-04',2,'Monaco','CH-034'),
('V110','2018-07-05','2018-07-05',1,'Barcelona','CH-028'),
('V111','2018-07-06','2018-07-06',0,'Dénia','CH-043'),
('V112','2018-07-02','2018-07-07',2,'St Tropez','CH-036'),
('V113','2018-07-06','2018-07-08',1,'Cartagena','CH-043'),
('V114','2018-07-05','2018-07-09',3,'Palma','CH-028'),
('V115','2018-06-30','2018-07-10',1,'Marseiles','CH-034'),
('V116','2018-07-11','2018-07-11',0,'Marmaris','CH-030'),
('V117','2018-07-06','2018-07-11',3,'Malaga','CH-043'),
('V118','2018-07-12','2018-07-12',1,'Barcelona','CH-039'),
('V119','2018-06-24','2018-07-13',1,'Heraklion','CH-032'),
('V120','2018-07-02','2018-07-13',1,'Monaco','CH-036'),
('V121','2018-06-30','2018-07-15',1,'St Tropez','CH-034'),
('V122','2018-07-05','2018-07-16',1,'Cartagena','CH-028'),
('V123','2018-07-11','2018-07-16',2,'Paphos','CH-030'),
('V124','2018-06-24','2018-07-19',3,'Athens','CH-032'),
('V125','2018-07-11','2018-07-21',1,'Heraklion','CH-030'),
('V126','2018-07-05','2018-07-22',2,'Valencia','CH-028'),
('V127','2018-07-22','2018-07-22',1,'Genoa','CH-035'),
('V128','2018-06-24','2018-07-23',1,'Izmir','CH-032'),
('V129','2018-07-23','2018-07-23',0,'Genoa','CH-037'),
('V130','2018-07-22','2018-07-26',1,'Cagliari','CH-035'),
('V131','2018-07-23','2018-07-26',1,'Naples','CH-037'),
('V132','2018-07-29','2018-07-29',0,'Dénia','CH-044'),
('V133','2018-07-30','2018-07-30',0,'Marmaris','CH-031'),
('V134','2018-07-22','2018-07-30',1,'Naples','CH-035'),
('V135','2018-07-23','2018-07-31',1,'Palermo','CH-037'),
('V136','2018-07-29','2018-08-02',1,'Malaga','CH-044'),
('V137','2018-07-30','2018-08-03',1,'Heraklion','CH-031'),
('V138','2018-08-05','2018-08-05',0,'Barcelona','CH-029'),
('V139','2018-07-23','2018-08-05',2,'Cagliari','CH-037'),
('V140','2018-07-30','2018-08-06',2,'Bodrum','CH-031'),
('V141','2018-07-29','2018-08-07',4,'Lisbon','CH-044'),
('V142','2018-08-05','2018-08-10',1,'Cartagena','CH-029'),
('V143','2018-07-23','2018-08-10',1,'Naples','CH-037'),
('V144','2018-08-10','2018-08-10',0,'Barcelona','CH-040'),
('V145','2018-08-10','2018-08-13',1,'St Tropez','CH-040'),
('V146','2018-08-05','2018-08-15',1,'Magaluf','CH-029'),
('V147','2018-07-29','2018-08-15',1,'Cadiz','CH-044'),
('V148','2018-08-10','2018-08-17',1,'Montpelier','CH-040'),
('V149','2018-08-18','2018-08-18',0,'Genoa','CH-038'),
('V150','2018-08-18','2018-08-22',1,'Cannes','CH-038'),
('V151','2018-07-29','2018-08-22',2,'Tangier','CH-044'),
('V152','2018-08-23','2018-08-23',0,'Barcelona','CH-041'),
('V153','2018-08-25','2018-08-25',0,'Kusadasi','CH-026'),
('V154','2018-08-23','2018-08-27',1,'Montpelier','CH-041'),
('V155','2018-07-29','2018-08-27',1,'Palma','CH-044'),
('V156','2018-08-25','2018-08-29',2,'Athens','CH-026'),
('V157','2018-08-25','2018-09-05',1,'Izmir','CH-026'),
('V158','2018-09-06','2018-09-06',0,'Barcelona','CH-042'),
('V159','2018-09-06','2018-09-06',1,'Dénia','CH-045'),
('V160','2018-09-06','2018-09-08',1,'Magaluf','CH-042'),
('V161','2018-09-06','2018-09-10',2,'Cartagena','CH-042'),
('V162','2018-09-06','2018-09-12',2,'Barcelona','CH-045'),
('V163','2018-09-06','2018-09-15',1,'Dénia','CH-042'),
('V164','2018-09-06','2018-09-17',2,'Montpelier','CH-045'),
('V165','2018-09-06','2018-09-18',1,'Magaluf','CH-042'),
('V166','2018-09-06','2018-09-23',1,'Magaluf','CH-045');


-- Add foreign key constraints
alter table CHARTER
add constraint yatch_name_fk foreign key (y_name) references YACHT (y_name);
alter table CHARTER
add constraint customer_id_fk foreign key (cx_id) references CUSTOMER (cx_id);
alter table VISIT
add constraint port_name_fk foreign key (p_name) references PORT (p_name);
alter table VISIT
add constraint charter_id_fk foreign key (charter_id) references CHARTER (charter_id);
