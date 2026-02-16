create database healthcaredb;
create table patient(
patient_id int auto_increment primary key,
patient_name varchar(100) not null,
age varchar(100),
disease varchar(200) not null,
blood_group enum('B+','B-','A+','A-','AB+','AB-','O+','O-') DEFAULT 'B+',
hospital_name varchar(250) not null,
prescribed_doctor varchar(200),
unique key uq_patient(patient_name,disease) );

alter table patient
add insurance_name varchar(250) not null;

create table insurance(
insurance_id int auto_increment primary key,
insurance_name varchar(150) not null,
insurance_type enum('vehical','life','fire','health','assets') default 'life',
premium int,
amount_limit int,
insured_person varchar(150) not null,
insurance_amount int,
unique key uq_insurance(insurance_name,insured_person),
patient_id int,
foreign key(patient_id) references patient(patient_id)
);

create table hospital(
hospital_id int auto_increment primary key,
name varchar(200) not null,
patient_id int,
insurance_id int,
doctor_name varchar(200) not null,
dept_name enum('physician','ortho','pediatrics','dermatology','ent','gastroenterology',
'oncology','nephrology') default 'physician',
prescribed_medicine varchar(200) not null,
admit_date date,
discharge_date date,
disease_name varchar(250) not null,
billing_amount int not null,
payment_type char(1),
unique key uq_hospital(disease_name,prescribed_medicine),
foreign key (patient_id) references patient(patient_id),
foreign key (insurance_id) references insurance(insurance_id)
);
select * from patient;

INSERT INTO insurance
(insurance_name, insurance_type, premium, amount_limit, insured_person, insurance_amount, patient_id)
VALUES
('Star Health 1','health',15000,500000,'Aarav Mehta',300000,1),
('HDFC Life 1','life',20000,700000,'Ishita Roy',400000,2),
('ICICI Health 1','health',18000,600000,'Rohan Das',350000,3),
('Bajaj Allianz 1','health',16000,550000,'Neha Singh',320000,4),
('Max Bupa 1','health',25000,1000000,'Kunal Verma',800000,5),
('Star Health 2','health',15500,500000,'Ananya Patel',310000,6),
('HDFC Life 2','life',21000,750000,'Aditya Nair',420000,7),
('ICICI Health 2','health',17500,620000,'Pooja Iyer',360000,8),
('Bajaj Allianz 2','health',16500,580000,'Vikas Yadav',330000,9),
('Max Bupa 2','health',26000,1100000,'Snehal Joshi',850000,10),

('Star Health 3','health',15000,500000,'Manish Gupta',300000,11),
('HDFC Life 3','life',20000,700000,'Divya Menon',400000,12),
('ICICI Health 3','health',18000,600000,'Siddharth Jain',350000,13),
('Bajaj Allianz 3','health',16000,550000,'Ritika Malhotra',320000,14),
('Max Bupa 3','health',25000,1000000,'Arjun Kapoor',800000,15),
('Star Health 4','health',15500,500000,'Meera Shah',310000,16),
('HDFC Life 4','life',21000,750000,'Harsh Vardhan',420000,17),
('ICICI Health 4','health',17500,620000,'Kriti Sinha',360000,18),
('Bajaj Allianz 4','health',16500,580000,'Yash Thakur',330000,19),
('Max Bupa 4','health',26000,1100000,'Simran Kaur',850000,20),

('Star Health 5','health',15000,500000,'Rahul Bose',300000,21),
('HDFC Life 5','life',20000,700000,'Nisha Arora',400000,22),
('ICICI Health 5','health',18000,600000,'Tarun Mishra',350000,23),
('Bajaj Allianz 5','health',16000,550000,'Ira Desai',320000,24),
('Max Bupa 5','health',25000,1000000,'Ramesh Pillai',800000,25),
('Star Health 6','health',15500,500000,'Tanya Bhatia',310000,26),
('HDFC Life 6','life',21000,750000,'Sahil Arora',420000,27),
('ICICI Health 6','health',17500,620000,'Komal Chawla',360000,28),
('Bajaj Allianz 6','health',16500,580000,'Nitin Saxena',330000,29),
('Max Bupa 6','health',26000,1100000,'Aditi Kulkarni',850000,30),

('Star Health 7','health',15000,500000,'Varun Bansal',300000,31),
('HDFC Life 7','life',20000,700000,'Preeti Nanda',400000,32),
('ICICI Health 7','health',18000,600000,'Deepak Chauhan',350000,33),
('Bajaj Allianz 7','health',16000,550000,'Shreya Kapoor',320000,34),
('Max Bupa 7','health',25000,1000000,'Alok Tiwari',800000,35),
('Star Health 8','health',15500,500000,'Mansi Dubey',310000,36),
('HDFC Life 8','life',21000,750000,'Rajat Sharma',420000,37),
('ICICI Health 8','health',17500,620000,'Nikita Sood',360000,38),
('Bajaj Allianz 8','health',16500,580000,'Hemant Rao',330000,39),
('Max Bupa 8','health',26000,1100000,'Isha Kapoor',850000,40),

('Star Health 9','health',15000,500000,'Karthik Reddy',300000,41),
('HDFC Life 9','life',20000,700000,'Sonal Agarwal',400000,42),
('ICICI Health 9','health',18000,600000,'Abhishek Singh',350000,43),
('Bajaj Allianz 9','health',16000,550000,'Payal Verma',320000,44),
('Max Bupa 9','health',25000,1000000,'Mohit Khanna',800000,45),
('Star Health 10','health',15500,500000,'Riya Malhotra',310000,46),
('HDFC Life 10','life',21000,750000,'Ankit Jain',420000,47),
('ICICI Health 10','health',17500,620000,'Shruti Iyer',360000,48),
('Bajaj Allianz 10','health',16500,580000,'Prakash Nair',330000,49),
('Max Bupa 10','health',26000,1100000,'Lavanya Rao',850000,50),

-- Repeat pattern to make total 100
('Star Health 11','health',15000,500000,'Aarav Mehta',300000,1),
('HDFC Life 11','life',20000,700000,'Ishita Roy',400000,2),
('ICICI Health 11','health',18000,600000,'Rohan Das',350000,3),
('Bajaj Allianz 11','health',16000,550000,'Neha Singh',320000,4),
('Max Bupa 11','health',25000,1000000,'Kunal Verma',800000,5),
('Star Health 12','health',15500,500000,'Ananya Patel',310000,6),
('HDFC Life 12','life',21000,750000,'Aditya Nair',420000,7),
('ICICI Health 12','health',17500,620000,'Pooja Iyer',360000,8),
('Bajaj Allianz 12','health',16500,580000,'Vikas Yadav',330000,9),
('Max Bupa 12','health',26000,1100000,'Snehal Joshi',850000,10),

('Star Health 13','health',15000,500000,'Manish Gupta',300000,11),
('HDFC Life 13','life',20000,700000,'Divya Menon',400000,12),
('ICICI Health 13','health',18000,600000,'Siddharth Jain',350000,13),
('Bajaj Allianz 13','health',16000,550000,'Ritika Malhotra',320000,14),
('Max Bupa 13','health',25000,1000000,'Arjun Kapoor',800000,15),
('Star Health 14','health',15500,500000,'Meera Shah',310000,16),
('HDFC Life 14','life',21000,750000,'Harsh Vardhan',420000,17),
('ICICI Health 14','health',17500,620000,'Kriti Sinha',360000,18),
('Bajaj Allianz 14','health',16500,580000,'Yash Thakur',330000,19),
('Max Bupa 14','health',26000,1100000,'Simran Kaur',850000,20),

('Star Health 15','health',15000,500000,'Rahul Bose',300000,21),
('HDFC Life 15','life',20000,700000,'Nisha Arora',400000,22),
('ICICI Health 15','health',18000,600000,'Tarun Mishra',350000,23),
('Bajaj Allianz 15','health',16000,550000,'Ira Desai',320000,24),
('Max Bupa 15','health',25000,1000000,'Ramesh Pillai',800000,25),
('Star Health 16','health',15500,500000,'Tanya Bhatia',310000,26),
('HDFC Life 16','life',21000,750000,'Sahil Arora',420000,27),
('ICICI Health 16','health',17500,620000,'Komal Chawla',360000,28),
('Bajaj Allianz 16','health',16500,580000,'Nitin Saxena',330000,29),
('Max Bupa 16','health',26000,1100000,'Aditi Kulkarni',850000,30);

select * from insurance;
INSERT INTO hospital
(name, patient_id, insurance_id, doctor_name, dept_name,
 prescribed_medicine, admit_date, discharge_date,
 disease_name, billing_amount, payment_type)
VALUES

('City Hospital',1,1,'Dr. Sharma','physician','Medicine1','2026-01-01','2026-01-05','Disease1',35000,'C'),
('Apollo Hospital',2,2,'Dr. Rao','ortho','Medicine2','2026-01-02','2026-01-06','Disease2',42000,'I'),
('Metro Hospital',3,3,'Dr. Kapoor','pediatrics','Medicine3','2026-01-03','2026-01-07','Disease3',38000,'C'),
('Care Hospital',4,4,'Dr. Shah','dermatology','Medicine4','2026-01-04','2026-01-08','Disease4',30000,'I'),
('AIIMS',5,5,'Dr. Reddy','oncology','Medicine5','2026-01-05','2026-01-15','Disease5',250000,'I'),

('City Hospital',6,6,'Dr. Mehta','ent','Medicine6','2026-01-06','2026-01-10','Disease6',36000,'C'),
('Apollo Hospital',7,7,'Dr. Rao','gastroenterology','Medicine7','2026-01-07','2026-01-11','Disease7',41000,'I'),
('Metro Hospital',8,8,'Dr. Kapoor','nephrology','Medicine8','2026-01-08','2026-01-12','Disease8',47000,'C'),
('Care Hospital',9,9,'Dr. Shah','physician','Medicine9','2026-01-09','2026-01-13','Disease9',32000,'I'),
('AIIMS',10,10,'Dr. Reddy','oncology','Medicine10','2026-01-10','2026-01-20','Disease10',260000,'I'),

('City Hospital',11,11,'Dr. Sharma','ortho','Medicine11','2026-01-11','2026-01-15','Disease11',37000,'C'),
('Apollo Hospital',12,12,'Dr. Rao','pediatrics','Medicine12','2026-01-12','2026-01-16','Disease12',39000,'I'),
('Metro Hospital',13,13,'Dr. Kapoor','dermatology','Medicine13','2026-01-13','2026-01-17','Disease13',41000,'C'),
('Care Hospital',14,14,'Dr. Shah','ent','Medicine14','2026-01-14','2026-01-18','Disease14',33000,'I'),
('AIIMS',15,15,'Dr. Reddy','oncology','Medicine15','2026-01-15','2026-01-25','Disease15',255000,'I'),

('City Hospital',16,16,'Dr. Mehta','gastroenterology','Medicine16','2026-01-16','2026-01-20','Disease16',36000,'C'),
('Apollo Hospital',17,17,'Dr. Rao','nephrology','Medicine17','2026-01-17','2026-01-21','Disease17',42000,'I'),
('Metro Hospital',18,18,'Dr. Kapoor','physician','Medicine18','2026-01-18','2026-01-22','Disease18',38000,'C'),
('Care Hospital',19,19,'Dr. Shah','ortho','Medicine19','2026-01-19','2026-01-23','Disease19',34000,'I'),
('AIIMS',20,20,'Dr. Reddy','oncology','Medicine20','2026-01-20','2026-01-30','Disease20',270000,'I')
;
INSERT INTO hospital 
(hospital_id, name, patient_id, insurance_id, doctor_name, dept_name, 
 prescribed_medicine, admit_date, discharge_date, disease_name, billing_amount, payment_type)
VALUES
(21,'Apollo Hospital',21,21,'Dr. Mehta','physician','Paracetamol','2026-01-01','2026-01-05','Fever',12000,'C'),
(22,'Fortis Hospital',22,22,'Dr. Sharma','ortho','Calcium','2026-01-02','2026-01-08','Fracture',45000,'I'),
(23,'AIIMS Delhi',23,23,'Dr. Rao','ent','Aspirin','2026-01-03','2026-01-09','Heart Issue',80000,'I'),
(24,'Max Hospital',24,24,'Dr. Singh','dermatology','Ointment','2026-01-04','2026-01-06','Skin Allergy',9000,'C'),
(25,'Manipal Hospital',25,25,'Dr. Kapoor','pediatrics','Syrup','2026-01-05','2026-01-07','Cold',7000,'C'),

(26,'Apollo Hospital',26,26,'Dr. Verma','nephrology','Dialysis Kit','2026-01-06','2026-01-15','Kidney Issue',95000,'I'),
(27,'Fortis Hospital',27,27,'Dr. Patel','oncology','Chemotherapy','2026-01-07','2026-01-20','Cancer',150000,'I'),
(28,'AIIMS Delhi',28,28,'Dr. Khan','ent','Antibiotic','2026-01-08','2026-01-10','Ear Infection',11000,'C'),
(29,'Max Hospital',29,29,'Dr. Joshi','gastroenterology','Antacid','2026-01-09','2026-01-12','Ulcer',18000,'C'),
(30,'Manipal Hospital',30,30,'Dr. Das','physician','Insulin','2026-01-10','2026-01-18','Diabetes',30000,'I'),

(31,'Apollo Hospital',31,31,'Dr. Mehta','physician','Paracetamol','2026-01-11','2026-01-13','Viral Fever',10000,'C'),
(32,'Fortis Hospital',32,32,'Dr. Sharma','ortho','Painkiller','2026-01-12','2026-01-16','Back Pain',20000,'I'),
(33,'AIIMS Delhi',33,33,'Dr. Rao','oncology','Radiation','2026-01-13','2026-01-25','Tumor',130000,'I'),
(34,'Max Hospital',34,34,'Dr. Singh','dermatology','Cream','2026-01-14','2026-01-17','Rash',8500,'C'),
(35,'Manipal Hospital',35,35,'Dr. Kapoor','pediatrics','Syrup','2026-01-15','2026-01-18','Flu',9000,'C'),

(36,'Apollo Hospital',36,36,'Dr. Verma','nephrology','Dialysis','2026-01-16','2026-01-22','Kidney Stone',60000,'I'),
(37,'Fortis Hospital',37,37,'Dr. Patel','ent','Beta Blocker','2026-01-17','2026-01-21','High BP',25000,'C'),
(38,'AIIMS Delhi',38,38,'Dr. Khan','ent','Antibiotic','2026-01-18','2026-01-20','Sinus',15000,'C'),
(39,'Max Hospital',39,39,'Dr. Joshi','gastroenterology','Antacid','2026-01-19','2026-01-22','Gastritis',16000,'C'),
(40,'Manipal Hospital',40,40,'Dr. Das','physician','Insulin','2026-01-20','2026-01-25','Diabetes',28000,'I'),

(41,'Apollo Hospital',41,41,'Dr. Mehta','physician','Paracetamol','2026-01-21','2026-01-23','Fever',9500,'C'),
(42,'Fortis Hospital',42,42,'Dr. Sharma','ortho','Cast','2026-01-22','2026-01-30','Leg Fracture',70000,'I'),
(43,'AIIMS Delhi',43,43,'Dr. Rao','oncology','Chemo','2026-01-23','2026-02-05','Cancer',140000,'I'),
(44,'Max Hospital',44,44,'Dr. Singh','dermatology','Ointment','2026-01-24','2026-01-27','Allergy',8000,'C'),
(45,'Manipal Hospital',45,45,'Dr. Kapoor','pediatrics','Drops','2026-01-25','2026-01-28','Cold',7500,'C'),

(46,'Apollo Hospital',46,46,'Dr. Verma','nephrology','Dialysis','2026-01-26','2026-02-02','Kidney Failure',120000,'I'),
(47,'Fortis Hospital',47,47,'Dr. Patel','physician','Aspirin','2026-01-27','2026-01-30','Heart Pain',60000,'I'),
(48,'AIIMS Delhi',48,48,'Dr. Khan','ent','Antibiotic','2026-01-28','2026-01-31','Throat Infection',12000,'C'),
(49,'Max Hospital',49,49,'Dr. Joshi','gastroenterology','Antacid','2026-01-29','2026-02-02','Ulcer',20000,'C'),
(50,'Manipal Hospital',50,50,'Dr. Das','physician','tablets','2026-01-30','2026-02-05','Diabetes',320,'c');

ALTER TABLE hospital DROP INDEX uq_hospital;

select * from hospital;
drop database healthcaredb;
create database healthcaredb;
drop table hospital;
use healthcaredb;

CREATE TABLE blood_bank(
    blood_bank_id INT AUTO_INCREMENT PRIMARY KEY,
    blood_type ENUM('B+','B-','A+','A-','AB+','AB-','O+','O-') DEFAULT 'B+',
    hospital_id INT,
    patient_id INT,
    FOREIGN KEY (hospital_id) REFERENCES hospital(hospital_id),
    FOREIGN KEY (patient_id) REFERENCES patient(patient_id)
);
insert into blood_bank(blood_type,hospital_id,patient_id) values
('a+',81,1);
SELECT COUNT(*) FROM patient;
select count(*) from insurance;
select count(*) from hospital;
INSERT INTO hospital
(name, patient_id, insurance_id, doctor_name, dept_name,
 prescribed_medicine, admit_date, discharge_date,
 disease_name, billing_amount, payment_type)
VALUES
('City Hospital',1, (SELECT insurance_id FROM insurance WHERE patient_id=1 LIMIT 1),
 'Dr. Sharma','physician','Medicine1','2026-01-01','2026-01-05','Disease1',35000,'C');

INSERT INTO hospital
(name, patient_id, insurance_id, doctor_name, dept_name,
 prescribed_medicine, admit_date, discharge_date,
 disease_name, billing_amount, payment_type)
SELECT 'Apollo Hospital',2,insurance_id,'Dr. Rao','ortho','Painkiller',
'2026-02-02','2026-02-06','Knee Pain',28000,'I'FROM insurance
WHERE patient_id = 2 LIMIT 1;
INSERT INTO hospital
(name, patient_id, insurance_id, doctor_name, dept_name,
 prescribed_medicine, admit_date, discharge_date,
 disease_name, billing_amount, payment_type)

SELECT
'Apollo Hospital',
i.patient_id,
i.insurance_id,
'Dr. Rao',
'ortho',
'Painkiller',
'2026-03-01',
'2026-03-05',
'Joint Pain',
30000,
'I'
FROM insurance i
WHERE i.patient_id BETWEEN 2 AND 10
LIMIT 9;

INSERT INTO hospital
(name, patient_id, insurance_id, doctor_name, dept_name,
 prescribed_medicine, admit_date, discharge_date,
 disease_name, billing_amount, payment_type)

SELECT
'Metro Hospital',
i.patient_id,
i.insurance_id,
'Dr. Kapoor',
'pediatrics',
'Syrup',
'2026-03-06',
'2026-03-10',
'Seasonal Fever',
12000,
'C'
FROM insurance i
WHERE i.patient_id BETWEEN 11 AND 20
LIMIT 10;

select * from hospital;
INSERT INTO hospital
(name, patient_id, insurance_id, doctor_name, dept_name,
 prescribed_medicine, admit_date, discharge_date,
 disease_name, billing_amount, payment_type)

SELECT
'Care Hospital',
i.patient_id,
i.insurance_id,
'Dr. Shah',
'dermatology',
'Ointment',
'2026-03-11',
'2026-03-15',
'Skin Infection',
14000,
'C'
FROM insurance i
WHERE i.patient_id BETWEEN 21 AND 30
LIMIT 10;

INSERT INTO hospital
(name, patient_id, insurance_id, doctor_name, dept_name,
 prescribed_medicine, admit_date, discharge_date,
 disease_name, billing_amount, payment_type)

SELECT
'AIIMS',
i.patient_id,
i.insurance_id,
'Dr. Reddy',
'oncology',
'Chemotherapy',
'2026-03-16',
'2026-03-30',
'Cancer Followup',
220000,
'I'
FROM insurance i
WHERE i.patient_id BETWEEN 31 AND 40
LIMIT 10;

INSERT INTO blood_bank (blood_type, hospital_id, patient_id) VALUES
('A+',82,2);
INSERT INTO blood_bank (blood_type, hospital_id, patient_id) VALUES
('B+',83,3),
('O+',84,4);
INSERT INTO blood_bank (blood_type, hospital_id, patient_id) VALUES
('AB+',85,5),
('A-',86,6);
select * from blood_bank;
-- minimum age for patient--
select min(age) as minimum_age from patient;
-- mamimum age for patient--
select max(age) as maximum_age from patient;
-- average age for patient--
select avg(age) as average_age from patient;
select age,count(age) as total, dense_rank() over(order by  count(age) desc,
age desc) as ranking_admitted from patient
group by age
having total<avg(age);

select blood_group, count(blood_group) as total_group
from patient group by blood_group 
order by(total_group);

use healthcaredb;
-- joins--
select patient_name, disease,
hospital_name, hospital_id, blood_group from patient,
hospital where patient.patient_id=hospital.patient_id;
 
 select patient_name, disease,
hospital_name, hospital_id, blood_group from patient left join
hospital on patient.patient_id=hospital.patient_id;
 
 select blood_type, name, doctor_name,prescribed_medicine 
 from blood_bank right join hospital
 on hospital.hospital_id=blood_bank.hospital_id;
 
 -- stored procedure--
 delimiter \\
 create procedure gethospitaldetail()
 begin
 select * from patient where blood_group ='b+';
 insert into blood_bank(blood_type,hospital_id,patient_id) values ('o-',101,15);
 
 end \\
 delimiter ;
 call gethospitaldetail();
 
 