\c courier_system
INSERT INTO Branch values(1,'karnataka','bangalore','rajajinagar','560010');
INSERT INTO Branch values(2,'tamil nadu','chennai','tiruvannamalai','606905');
INSERT INTO Branch values(3,'kerala','kollam','punalur','691305');
INSERT INTO Branch values(4,'andhra pradesh','shrikakulam','burja','532445');
INSERT INTO Branch values(5,'bihar','patna','maner','801108');
INSERT INTO Branch values(6,'goa','southgoa','canacona','403702');
INSERT INTO Branch values(7,'gujarat','ahmedabad','dholka','382225');
INSERT INTO Branch values(8,'maharashtra','mumbai','kurla','400070');


INSERT INTO Employee values('sheela','2233123456','10392','2001-03-24','female',1,NULL,'SUPERVISOR');
INSERT INTO Employee values('rajesh','9873984756','11456','2000-03-18','male',1,'10392','COURIER');
INSERT INTO Employee values('suresh','9849898983','12343','1990-09-08','male',1,'10392','ACCOUNTANT');
INSERT INTO Employee values('sushanth','9384729111','26543','2001-03-24','male',2,NULL,'SUPERVISOR');
INSERT INTO Employee values('shylaja','7338220101','20012','1986-01-01','female',2,'26543','COURIER');
INSERT INTO Employee values('akash','9293829929','23145','1993-05-28','male',2,'26543','ACCOUNTANT');
INSERT INTO Employee values('swapneel','8989838293','31245','1994-12-24','male',3,NULL,'SUPERVISOR');
INSERT INTO Employee values('rekha','9282928292','36475','1982-10-01','female',3,'31245','COURIER');
INSERT INTO Employee values('raman','2243572091','40030','1999-02-22','male',4,NULL,'SUPERVISOR');
INSERT INTO Employee values('kishore','9271801901','41678','1990-03-18','male',4,'40030','COURIER');
INSERT INTO Employee values('sulekha','9898981019','43939','1992-01-08','female',4,'40030','ACCOUNTANT');
INSERT INTO Employee values('ashika','9900134562','50123','1990-08-26','female',5,NULL,'SUPERVISOR');
INSERT INTO Employee values('radha','8911297600','56001','1980-12-28','female',5,'50123','COURIER');
INSERT INTO Employee values('tanya','7712890011','51902','1988-04-21','male',5,'50123','ACCOUNTANT');
INSERT INTO Employee values('shama','8881234562','60012','2002-08-20','female',6,NULL,'SUPERVISOR');
INSERT INTO Employee values('radhika','9911897600','66001','1990-12-18','female',6,'60012','COURIER');
INSERT INTO Employee values('tarun','9849890011','65002','1980-01-21','male',6,'60012','ACCOUNTANT');
INSERT INTO Employee values('shamitha','9991234562','70012','2000-03-20','female',7,NULL,'SUPERVISOR');
INSERT INTO Employee values('rakshith','9311897653','75611','1999-03-18','male',7,'70012','COURIER');
INSERT INTO Employee values('ramya','9849898111','70123','1989-09-02','female',7,'70012','ACCOUNTANT');
INSERT INTO Employee values('sannidhi','987654321','80123','2000-04-20','female',8,NULL,'SUPERVISOR');
INSERT INTO Employee values('rajan','9873944446','80022','1998-01-19','male',8,'80123','COURIER');
INSERT INTO Employee values('sujan','8765898983','81117','1997-03-08','male',8,'80123','ACCOUNTANT');




INSERT INTO Sender values('123','raman','8765678234','17283','103/a',4,1);
INSERT INTO Sender values('234','rajan','9765678234','12210','193/b',3,1);
INSERT INTO Sender values('345','sharadhi','8885678234','39912','323/1',4,3);
INSERT INTO Sender values('456','shama','8765645674','40025','128/d',9,2);
INSERT INTO Sender values('567','shloka','9995671114','50034','523/e',9,3);
INSERT INTO Sender values('678','raman','8765678234','65241','103/a',4,1);
INSERT INTO Sender values('789','rajan','9765678234','77123','193/b',3,1);
INSERT INTO Sender values('890','sharadhi','8885678234','82001','323/1',4,3);
INSERT INTO Sender values('118','raghav','9760891232','20012','103/b',9,4);
INSERT INTO Sender values('898','rani','9900123454','91200','303/6',1,5);

INSERT INTO Receiver values('101','raghav','9765678234','17283','123/1',6,1);
INSERT INTO Receiver values('102','arjun','8865678234','12210','193/2',7,2);
INSERT INTO Receiver values('103','sujani','9885678231','39912','923/3',1,3);
INSERT INTO Receiver values('104','raghav','9765678234','65241','128/4',6,1);
INSERT INTO Receiver values('105','shloka','8895671114','50034','523/a',9,3);
INSERT INTO Receiver values('106','mith','8765670004','77123','173/c',2,8);
INSERT INTO Receiver values('107','vinutha','9765678994','99912','323/e',4,5);
INSERT INTO Receiver values('108','vinutha','9765678994','22212','323/e',4,5);
INSERT INTO Receiver values('110','uma','900453219','40025','300/k',9,5);
INSERT INTO Receiver values('111','Anish','9765600004','20082','188/e',4,6);

INSERT INTO Rates values(01.0,'050.20','10.02');
INSERT INTO Rates values(04.0,'100.00','20.10');
INSERT INTO Rates values(10.0,'220.30','29.22');
INSERT INTO Rates values(15.0,'300.00','40.92');
INSERT INTO Rates values(20.0,'350.50','50.00');
INSERT INTO Rates values(24.0,'440.30','58.12');
INSERT INTO Rates values(30.0,'490.10','63.30');
INSERT INTO Rates values(40.0,'510.20','70.80');


INSERT INTO Packages values('17283','11456','picked up',01.0,'123','101',1,'2021-02-25 09:34:58','2021-03-08 10:23:30');
INSERT INTO Packages values('12210','20012','out for delivery',04.0,'234','102',2,'2021-03-23 09:23:09','2021-03-24 10:21:22');
INSERT INTO Packages values('39912','31245','out for delivery',10.0,'345','103',3,'2020-12-02 09:14:45','2020-12-05 06:00:01');
INSERT INTO Packages values('40025','56001','picked up',15.0,'456','110',5,'2021-03-23 12:23:23','2021-03-29 05:40:41');
INSERT INTO Packages values('50034','31245','waiting',20.0,'567','105',3,'2021-04-23 01:32:45','2021-04-27 01:32:09');
INSERT INTO Packages values('65241','11456','delivered',24.0,'678','104',1,'2021-06-06 12:34:56','2021-07-01 09:43:22');
INSERT INTO Packages values('77123','80022','out for delivery',30.0,'789','106',8,'2021-06-14 12:12:34','2021-06-25 09:54:34');
INSERT INTO Packages values('82001',NULL,'picked up',40.0,'890',NULL,NULL,'2020-02-20 07:23:34','2021-03-04 09:27:45');
INSERT INTO Packages values('20012',NULL,'picked up',01.0,'118',NULL,NULL,'2021-08-20 11:12:45','2021-09-30 10:12:11');
INSERT INTO Packages values('91200',NULL,'out for delivery',04.0,'898',NULL,NULL,'2021-07-20 10:20:34','2021-07-30 08:27:45');
INSERT INTO Packages values('99912','56001','delivered',10.0,NULL,'107',5,'2021-03-20 09:27:34','2021-03-28 09:27:40');
INSERT INTO Packages values('22218',NULL,'delivered',20.0,NULL,NULL,NULL,'2020-06-20 12:15:05','2020-07-09 09:27:60');
INSERT INTO Packages values('20082','66001','delivered',40.0,NULL,'111',6,'2021-05-22 03:02:60','2021-06-30 09:27:30');


INSERT INTO Courier values(1,'11456');
INSERT INTO Courier values(2,'20012');
INSERT INTO Courier values(3,'31245');
INSERT INTO Courier values(4,'41678');
INSERT INTO Courier values(5,'56001');
INSERT INTO Courier values(6,'66001');
INSERT INTO Courier values(7,'75611');
INSERT INTO Courier values(8,'80022');








