#employee

INSERT INTO EMPLOYEE VALUES(1,"Noah Alder", 3487384931, "2147 LittleRock 72201", "Manager");
INSERT INTO EMPLOYEE VALUES(2,"Liam Anderson", 6782132326, "3714 Denver 80201", "Manager");
INSERT INTO EMPLOYEE VALUES(3,"Mason Bardot",5867189921 , "1288 Miami 33124", "Manager");
INSERT INTO EMPLOYEE VALUES(10,"Jason Mayo",3321261482 , "3241 Chicago 60601", "Manager");
INSERT INTO EMPLOYEE VALUES(11,"Prachi Desai",3348912634 , "7182 Austin 78701", "Manager");
INSERT INTO EMPLOYEE VALUES(12,"Sanjana Bothale",1287883147 , "2137 Paris 75004", "Manager");
INSERT INTO EMPLOYEE VALUES(13,"Harshada Kulkarni",3369912891 , "8123 New York 10006", "Manager");
INSERT INTO EMPLOYEE VALUES(6,"Ethan Smith",1283884278 , "3328 Miami 33124", "Staff");
INSERT INTO EMPLOYEE VALUES(7,"James Lennon",9664664638 , "1286 Denver 80204", "Staff");
INSERT INTO EMPLOYEE VALUES(8,"Alex Miller",2143262137 , "3622 LittleRock 72202", "Staff");
INSERT INTO EMPLOYEE VALUES(15,"Ronak Gune",3216213334 , "1378 Chicago 60602", "Staff");
INSERT INTO EMPLOYEE VALUES(16,"Peter Parker",4213213321 , "1233 Austin 78701", "Staff");
INSERT INTO EMPLOYEE VALUES(17,"Chris Louis",3321273321 , "1011 Paris 75004", "Staff");
INSERT INTO EMPLOYEE VALUES(18,"David Tim",1476232147 , "7822 New York 10005", "Staff");
INSERT INTO EMPLOYEE VALUES(4,"Jacob Coleman",6382183342 , "2311 Atlanta 30301", "Analyst");
INSERT INTO EMPLOYEE VALUES(5,"William Hutton",1286287791 , "3148 LittleRock 72201", "Analyst");
INSERT INTO EMPLOYEE VALUES(9,"John Snow",6692141754 , "3712 Denver 80203", "Analyst");
INSERT INTO EMPLOYEE VALUES(14,"Anurag Gates",2148326673 , "3710 San Jose 94089", "Analyst");

select *from employee order by EMPLOYEE_NAME asc;

#package

INSERT INTO PACKAGE VALUES("F301","SC1","RC1","Fragile","Local","Baggage",46,"Denver","Miami","B1","C1",200);
INSERT INTO PACKAGE VALUES("F302","SC2","RC2","Official Docs","International","documents",3,"New York","Paris","G1","F1",250);
INSERT INTO PACKAGE VALUES("F303","SC3","RC3","Liquid","local","food",23 ,"Chocago","Denver","D1","B1",100);
INSERT INTO PACKAGE VALUES("F304","SC4","RC4","","local","university application",4 ,"Austin","New York","E1","G1",50);
INSERT INTO PACKAGE VALUES("F305","SC5","RC5","","local","documents",3 ,"Miami","New York","C1","G1",80);

select *from package;

#enquiry_complaint

INSERT INTO enquiry_complaint values ("E1","2001","CO1","Late Delivery","F301","Resolved");
INSERT INTO enquiry_complaint values ("E2","2002","CO2","Tracking Lost Package","F302","Pending");
INSERT INTO enquiry_complaint values ("E3","2001","CO3","Delayed Delivery","F303","Resolved");
INSERT INTO enquiry_complaint values ("E4","2005","CO4","Damaged Goods","F304","Pending");
INSERT INTO enquiry_complaint values ("E5","2003","CO9","Delayed Delivery","F305","Pending");
INSERT INTO enquiry_complaint values ("E6","2004","CO7","Payment Issue","F304","Resolved");

select *from enquiry_complaint;

#Analyst

INSERT INTO analyst values("1001","4","Report 1");
INSERT INTO analyst values("1002","5","Report 2");
INSERT INTO analyst values("1003","9","Report 3");
INSERT INTO analyst values("1004","14","Report 4");

select *from analyst;

#report

INSERT INTO report values("Report 1","TD1","200");
INSERT INTO report values("Report 2","TD2","250");
INSERT INTO report values("Report 3","TD3","100");
INSERT INTO report values("Report 4","TD4","50");
INSERT INTO report values("Report 5","TD5","80");

select *from report;

#route

INSERT INTO route values("R1","2002","B1","C1");
INSERT INTO route values("R2","2007","G1","F1");
INSERT INTO route values("R3","2004","D1","B1");
INSERT INTO route values("R4","2003","C1","G1");
INSERT INTO route values("R5","2005","E1","G1");

UPDATE route SET STAFF_ID = "2005", SOURCE_ID = "E1" WHERE ROUTE_ID = "R4";
UPDATE route SET STAFF_ID = "2003", SOURCE_ID = "C1" WHERE ROUTE_ID = "R5";

select *from route;

#subroute

INSERT INTO subroute values("SR1","R1","FD-909","B1","E1");
INSERT INTO subroute values("SR2","R1","AS-301","E1","A1");
INSERT INTO subroute values("SR3","R1","LR-202","A1","C1");
INSERT INTO subroute values("SR4","R5","AS-322","E1","A1");
INSERT INTO subroute values("SR5","R5","LR-205","A1","G1");
INSERT INTO subroute values("SR6","R4","MI-451","C1","H1");
INSERT INTO subroute values("SR7","R4","WA-105","H1","G1");
INSERT INTO subroute values("SR8","R2","A-6142","G1","F1");
INSERT INTO subroute values("SR9","R3","CH-138","D1","B1");

select *from subroute;

#Franchise:

INSERT INTO franchise values("A1","Little Rock","12143387217","1111");
INSERT INTO franchise values("B1","Denver","13872881287","1122");
INSERT INTO franchise values("C1","Miami","11321880206","1133");
INSERT INTO franchise values("D1","Chicago","13801307456","1144");
INSERT INTO franchise values("E1","Austin","15483831277","1155");
INSERT INTO franchise values("F1","Paris","33396211837","1166");
INSERT INTO franchise values("G1","New York","16621241339","1177");
INSERT INTO franchise values("H1","Washington","33241261403","1188");


SELECT *FROM franchise;

#Tracking Assignment:

INSERT INTO tracking_assignment values("TD1","SR1","R1");
INSERT INTO tracking_assignment values("TD1","SR2","R1");
INSERT INTO tracking_assignment values("TD1","SR3","R1");
INSERT INTO tracking_assignment values("TD2","SR8","R2");
INSERT INTO tracking_assignment values("TD3","SR9","R3");
INSERT INTO tracking_assignment values("TD4","SR6","R4");
INSERT INTO tracking_assignment values("TD4","SR7","R4");
INSERT INTO tracking_assignment values("TD5","SR4","R5");
INSERT INTO tracking_assignment values("TD5","SR5","R5");

SELECT *FROM tracking_assignment;

#SENDER

INSERT INTO sender VALUES("SC1","CO1");
INSERT INTO sender VALUES("SC2","CO2");
INSERT INTO sender VALUES("SC3","CO3");
INSERT INTO sender VALUES("SC4","CO4");
INSERT INTO sender VALUES("SC5","CO5");

SELECT *FROM sender;

#RECEIVER

INSERT INTO receiver VALUES("RC1","CO1");
INSERT INTO receiver VALUES("RC2","CO2");
INSERT INTO receiver VALUES("RC3","CO3");
INSERT INTO receiver VALUES("RC4","CO4");
INSERT INTO receiver VALUES("RC5","CO5");

SELECT *FROM receiver;

#Tracking details:

INSERT INTO tracking_details values("TD1",'2016-09-13',"F301",'2016-09-18',"Delivered",'2016-09-18','2016-09-14',"1631 Hilmar Street Miami 33124");
INSERT INTO tracking_details values("TD2",'2016-12-17',"F302",'2016-12-20',"Delivered",'2016-09-18','2016-12-18',"1231 Avenue Main Paris 75002");
INSERT INTO tracking_details values("TD3",'2017-03-12',"F303",'2017-03-16',"Delivered",'2017-03-16','2017-03-13',"1211 St Caire Denver 80206");
INSERT INTO tracking_details values("TD4",'2018-03-14',"F304",'2018-03-17',"Pending",'0000-00-00','2018-03-15',"2251 Alamada Little Rock 72202");
INSERT INTO tracking_details values("TD5",'2018-03-05',"F305",'2018-03-10',"Pending",'0000-00-00','2018-03-17',"951 Concord Austin 78701");

select *from tracking_details;

#franchise manager:

INSERT INTO franchise_manager values("101","A1","1002","1");
INSERT INTO franchise_manager values("102","B1","1001","2");
INSERT INTO franchise_manager values("103","C1","1003","3");
INSERT INTO franchise_manager values("104","D1","1002","10");
INSERT INTO franchise_manager values("105","E1","1003","11");
INSERT INTO franchise_manager values("106","F1","1004","12");
INSERT INTO franchise_manager values("107","G1","1001","13");

select *from franchise_manager;

#Franchise_staff:

INSERT INTO franchise_staff values("2001","A1","8");
INSERT INTO franchise_staff values("2002","B1","7");
INSERT INTO franchise_staff values("2003","C1","6");
INSERT INTO franchise_staff values("2004","D1","15");
INSERT INTO franchise_staff values("2005","E1","16");
INSERT INTO franchise_staff values("2006","F1","17");
INSERT INTO franchise_staff values("2007","G1","18");

select *from franchise_staff;

#customer

INSERT INTO customer values("CO1","Rahul Sharma","6692141754","2133 Benson Street Denver 80201");
INSERT INTO customer values("CO2","Cody Lione","6672161734","1286 Eden Road New York 10005");
INSERT INTO customer values("CO3","Niki Pawar","6662131324","1787 Lawrence Chicago 60602");
INSERT INTO customer values("CO4","Mihir Kate","6221231789","6824 Santa Rosa Austin 78701");
INSERT INTO customer values("CO5","John Miller","6213331272","1631 Hilmar Street Miami 33124");
INSERT INTO customer values("CO6","Kate Johnson","3392161284","1231 Avenue Maine Paris 75002");
INSERT INTO customer values("CO7","Jim Bomer","3213211284","1211 St. Claire Denver 80206");
INSERT INTO customer values("CO8","Hudson Jerry","3336669999","431 Greens Road New York 10006");
INSERT INTO customer values("CO9","Jerry Richard","2224443333","337 Ballomy Street Miami 33125");
INSERT INTO customer values("C10","Chandler Bing","2123134141","2348 Wilson Street New York 1006");

select *from customer;

#######################################################################################################

UPDATE franchise_manager SET MANAGER_NAME = "Noah Alder", CONTACT = "3487384231",
ADDRESS = "2147 LittleRock 72201",SALARY = "8000" WHERE EMPLOYEE_ID = 1;

UPDATE franchise_manager SET MANAGER_NAME = "Liam Anderson", CONTACT = "6782132326",
ADDRESS = "3714 Denver 80201",SALARY = "7000" WHERE EMPLOYEE_ID = 2;

UPDATE franchise_manager SET MANAGER_NAME = "Mason Bardot", CONTACT = "5867189921",
ADDRESS = "1288 Miami 33124",SALARY = "6000" WHERE EMPLOYEE_ID = 3;

UPDATE franchise_manager SET MANAGER_NAME = "Jason Mayo", CONTACT = "3321261482 ",
ADDRESS = "3241 Chicago 60601",SALARY = "6500" WHERE EMPLOYEE_ID = 10;

UPDATE franchise_manager SET MANAGER_NAME = "Prachi Desai", CONTACT = "3348912634",
ADDRESS = "7182 Austin 78701",SALARY = "7000" WHERE EMPLOYEE_ID = 11;

UPDATE franchise_manager SET MANAGER_NAME = "Sanjana Bothale", CONTACT = "1287883147",
ADDRESS = "2137 Paris 75004",SALARY = "7500" WHERE EMPLOYEE_ID = 12;

UPDATE franchise_manager SET MANAGER_NAME = "Harshada Kulkarni", CONTACT = "3369912891",
ADDRESS = "8123 New York 10006",SALARY = "7000" WHERE EMPLOYEE_ID = 13;

##########################################################################################################

UPDATE franchise_staff SET STAFF_NAME = "Ethan Smith", CONTACT = "1283884278",
ADDRESS = "3328 Miami 33124",SALARY = "3000" WHERE EMPLOYEE_ID = 6;

UPDATE franchise_staff SET STAFF_NAME = "James Lennon", CONTACT = "9664664638",
ADDRESS = "1286 Denver 80204",SALARY = "3500" WHERE EMPLOYEE_ID = 7;

UPDATE franchise_staff SET STAFF_NAME = "Alex Miller", CONTACT = "2143262137",
ADDRESS = "3622 LittleRock 72202",SALARY = "4000" WHERE EMPLOYEE_ID = 8;

UPDATE franchise_staff SET STAFF_NAME = "Ronak Gune", CONTACT = "3216213334",
ADDRESS = "1378 Chicago 60602",SALARY = "4000" WHERE EMPLOYEE_ID = 15;

UPDATE franchise_staff SET STAFF_NAME = "Peter Parker", CONTACT = "4213213321",
ADDRESS = "1233 Austin 78701",SALARY = "3500" WHERE EMPLOYEE_ID = 16;

UPDATE franchise_staff SET STAFF_NAME = "Chris Louis", CONTACT = "3321273321",
ADDRESS = "1011 Paris 75004",SALARY = "3000" WHERE EMPLOYEE_ID = 17;

UPDATE franchise_staff SET STAFF_NAME = "David Tim", CONTACT = "1476232147",
ADDRESS = "7822 New York 10005",SALARY = "3200" WHERE EMPLOYEE_ID = 18;

INSERT INTO EMPLOYEE VALUES("19","Staff");
INSERT INTO EMPLOYEE VALUES("20","Staff");
INSERT INTO EMPLOYEE VALUES("21","Staff");
INSERT INTO EMPLOYEE VALUES("22","Staff");

INSERT INTO franchise_staff values("2008","D1","19","Steve Jobs","3214268293","3124 Chicago 32001","3600");
INSERT INTO franchise_staff values("2009","D1","20","Bob Grays","3334289123","3302 Chicago 32002","4500");
INSERT INTO franchise_staff values("2010","D1","21","Ross Geller","4446217210","3103 Chicago 32002","3500");
INSERT INTO franchise_staff values("2011","E1","22","Rachel Green","1268296231","2204 Austin 78702","4000");

############################################################################################################
############################################################################################################

#DONE

INSERT INTO enquiry_complaint values ("E6","2004","CO7","Payment Issue","F304","Resolved");
INSERT INTO enquiry_complaint values ("E7","2002","CO5","Payment Issue","F305","Pending");
INSERT INTO enquiry_complaint values ("E8","2001","CO6","Delayed Delivery","F302","Resolved");
INSERT INTO enquiry_complaint values ("E9","2001","CO8","Damaged Goods","F304","Resolved");
INSERT INTO enquiry_complaint values ("E10","2007","C12","Payment Issue","F306","Pending");
INSERT INTO enquiry_complaint values ("E11","2004","C13","Payment Issue","F307","Pending");

INSERT INTO enquiry_complaint values ("E12","2008","C31","Late Delivery","F316","Pending");
INSERT INTO enquiry_complaint values ("E13","2010","C28","Damaged Goods","F314","Pending");
INSERT INTO enquiry_complaint values ("E14","2008","C23","Delayed Delivery","F312","Pending");
INSERT INTO enquiry_complaint values ("E15","2010","C36","Damaged Goods","F318","Pending");
INSERT INTO enquiry_complaint values ("E16","2010","C37","Delayed Delivery","F319","Pending");



############################################################################################################



#DONE

INSERT INTO tracking_details values("TD6",'2017-12-08',"F306",'2017-12-11',"Pending",'0000-00-00','2017-12-09',"1312 Lafayette Paris 76801");
INSERT INTO tracking_details values("TD7",'2017-12-10',"F307",'2017-12-13',"Pending",'0000-00-00','2017-12-11',"1342 El Camino Denver 80206");
INSERT INTO tracking_details values("TD8",'2018-02-20',"F308",'2018-02-22',"Delivered",'2018-02-22','2018-02-20',"206 Domi LittleRock 72202");
INSERT INTO tracking_details values("TD9",'2018-02-18',"F309",'2018-02-25',"Delivered",'2018-02-25','2018-02-20',"221 Park Avenue Austin 78707");
INSERT INTO tracking_details values("TD10",'2018-02-19',"F310",'2018-02-23',"Delivered",'2018-02-24','2018-02-20',"1223 Lincoln Park Miami 33124");

##############################################################################################################

#DONE

INSERT INTO customer values("C11","Chandler Bing","2123134141","2348 Wilson Street New York 10006");
INSERT INTO customer values("C12","Alex Philips","6452158492","138 Alison Park Paris 75002");
INSERT INTO customer values("C13","Niki Pawar","6662131324","1787 Lawrence Chicago 60602");
INSERT INTO customer values("C14","Rahul Sharma","6692141754","2133 Benson street Denver 80201");
INSERT INTO customer values("C15","Cody Lione","6672161734","1286 Eden Road New York 10005");
INSERT INTO customer values("C16","Shaun Johnson","2432251657","6615 gray's street Austin 78701");
INSERT INTO customer values("C17","Cody Lione","6672161734","1286 Eden Road New York 10005");
INSERT INTO customer values("C18","Neil Caffrey","6694518264","1354 Benton road Austin 78702");
INSERT INTO customer values("C19","Peter Russel","4063512214","3315 St joseph Denver 80206");
INSERT INTO customer values("C20","Rachael Zane","4088546612","1308 Newark street Miami 33125");

######################################################################################################################

#DONE

INSERT INTO sender VALUES("SC6","C11");
INSERT INTO sender VALUES("SC7","C13");
INSERT INTO sender VALUES("SC8","C15");
INSERT INTO sender VALUES("SC9","C17");
INSERT INTO sender VALUES("SC10","C19");

####################################################################################################################

#DONE

INSERT INTO receiver VALUES("RC6","C12");
INSERT INTO receiver VALUES("RC7","C14");
INSERT INTO receiver VALUES("RC8","C16");
INSERT INTO receiver VALUES("RC9","C18");
INSERT INTO receiver VALUES("RC10","C20");

################################################################################################################

#DONE

INSERT INTO route values("R6","2007","G1","F1");
INSERT INTO route values("R7","2004","D1","B1");
INSERT INTO route values("R8","2007","G1","E1");
INSERT INTO route values("R9","2007","G1","E1");
INSERT INTO route values("R10","2002","B1","C1");

###############################################################################################################

#DONE

INSERT INTO subroute values("SR10","R6","A6-162","G1","F1");
INSERT INTO subroute values("SR11","R7","CH-152","D1","B1");
INSERT INTO subroute values("SR12","R8","A6-132","G1","E1");
INSERT INTO subroute values("SR13","R9","A6-130","G1","E1");
INSERT INTO subroute values("SR14","R10","FD-800","B1","C1");

###################################################################################################################

UPDATE PACKAGE SET DESCRIPTION = "Docs" where PACKAGE_ID = "F304";
UPDATE PACKAGE SET DESCRIPTION = "Docs" where PACKAGE_ID = "F305";

#DONE

INSERT INTO PACKAGE VALUES("F306","SC6","RC6","Liquid","Local","Food",5,"New York","Paris","G1","F1",60);
INSERT INTO PACKAGE VALUES("F307","SC7","RC7","Docs","Local","Documents",7,"Chicago","Denver","D1","B1",90);
INSERT INTO PACKAGE VALUES("F308","SC8","RC8","Solid vacuumed food","Local","Food",25,"New York","Austin","G1","E1",300);
INSERT INTO PACKAGE VALUES("F309","SC9","RC9","Dehydrated food","Local","Food",30,"New York","Austin","G1","E1",350);
INSERT INTO PACKAGE VALUES("F310","SC10","RC10","Fragile","Local","Baggage",56,"Denver","Miami","B1","C1",400);

###################################################################################################################

#DONE

INSERT INTO tracking_assignment values("TD6","SR10","R6");
INSERT INTO tracking_assignment values("TD7","SR11","R7");
INSERT INTO tracking_assignment values("TD8","SR12","R8");
INSERT INTO tracking_assignment values("TD9","SR13","R9");
INSERT INTO tracking_assignment values("TD10","SR14","R10");

###################################################################################################################

#DONE

UPDATE report SET EXPENSE = 20, REVENUE = 180 WHERE REPORT_ID = "Report 1";
UPDATE report SET EXPENSE = 25, REVENUE = 225 WHERE REPORT_ID = "Report 2";
UPDATE report SET EXPENSE = 10, REVENUE = 90 WHERE REPORT_ID = "Report 3";
UPDATE report SET EXPENSE = 30, REVENUE = 20 WHERE REPORT_ID = "Report 4";
UPDATE report SET EXPENSE = 45, REVENUE = 35 WHERE REPORT_ID = "Report 5";

ALTER TABLE report DROP column AMT_RECEIVED;

INSERT INTO report values("Report 6","TD6",35,25,"");
INSERT INTO report values("Report 7","TD7",60,30,"");
INSERT INTO report values("Report 8","TD8",20,280,"");
INSERT INTO report values("Report 9","TD9",50,300,"");
INSERT INTO report values("Report 10","TD10",70,330,"");

##################################################################################################################

update package set DELIVERY_TYPE = "International" where PACKAGE_ID = "F306";

update TRACKING_DETAILS set CURRENT_DELIVERY_LOCATION = "206 Domi Austin 78703" where TRACKING_DETAIL_ID = "TD8";

#################################################################################################################
#################################################################################################################

#DONE
INSERT INTO route values("R11","2002","B1","C1");
INSERT INTO route values("R12","2002","B1","C1");
INSERT INTO route values("R13","2002","B1","C1");
INSERT INTO route values("R14","2007","G1","E1");
INSERT INTO route values("R15","2007","G1","E1");
INSERT INTO route values("R16","2007","G1","E1");
INSERT INTO route values("R17","2007","G1","F1");
INSERT INTO route values("R18","2007","G1","F1");
INSERT INTO route values("R19","2004","D1","B1");
INSERT INTO route values("R20","2004","D1","B1");

##################################################################################################################
#DONE

INSERT INTO subroute values("SR15","R11","FD-909","B1","E1");
INSERT INTO subroute values("SR16","R11","AS-301","E1","A1");
INSERT INTO subroute values("SR17","R11","LR-202","A1","C1");
INSERT INTO subroute values("SR18","R12","FD-909","B1","E1");
INSERT INTO subroute values("SR19","R12","AS-301","E1","A1");
INSERT INTO subroute values("SR20","R12","LR-202","A1","C1");
INSERT INTO subroute values("SR21","R13","FD-909","B1","E1");
INSERT INTO subroute values("SR22","R13","AS-301","E1","A1");
INSERT INTO subroute values("SR23","R13","LR-202","A1","C1");
INSERT INTO subroute values("SR24","R14","A6-132","G1","E1");
INSERT INTO subroute values("SR25","R15","A6-132","G1","E1");
INSERT INTO subroute values("SR26","R16","A6-130","G1","E1");
INSERT INTO subroute values("SR27","R17","A6-162","G1","F1");
INSERT INTO subroute values("SR28","R18","A6-162","G1","F1");
INSERT INTO subroute values("SR29","R19","CH-138","D1","B1");
INSERT INTO subroute values("SR30","R20","CH-138","D1","B1");

##########################################################################################################################

#DONE

INSERT INTO report values("Report 11","TD11",30,250);
INSERT INTO report values("Report 12","TD12",50,200);
INSERT INTO report values("Report 13","TD13",10,90);
INSERT INTO report values("Report 14","TD14",30,270);
INSERT INTO report values("Report 15","TD15",10,60);
INSERT INTO report values("Report 16","TD16",20,30);
INSERT INTO report values("Report 17","TD17",20,130);
INSERT INTO report values("Report 18","TD18",30,70);
INSERT INTO report values("Report 19","TD19",20,130);
INSERT INTO report values("Report 20","TD20",30,200);

##########################################################################################################################
#DONE

INSERT INTO customer values("C21","Rahul Sharma","6692141754","2133 Benson street Denver 80201");
INSERT INTO customer values("C22","Bobby Jonathan","2126134841","2456 Hilmar street Miami 33124");
INSERT INTO customer values("C23","George Bose","9123194140","2135 El camino street Denver 80202");
INSERT INTO customer values("C24","Rahul Sequira","2157134140","1390 Benson street Miami 33125");
INSERT INTO customer values("C25","Abhijeet Paul","2129994141","2100 Benson street Denver 80201");
INSERT INTO customer values("C26","Deanne Lorry","2144444141","2345 Hilmar street Miami 33126");
INSERT INTO customer values("C27","Cody Lione","6672161734","1286 Eden Road New York 10005");
INSERT INTO customer values("C28","Frank William","2121134141","2348 Greens Street Austin 78701");
INSERT INTO customer values("C29","Kevin Walson","2223134141","2348 Lawrence New York 10006");
INSERT INTO customer values("C30","Sheetal Bomer","2123130144","7654 Bellomy Street Austin 78702");
INSERT INTO customer values("C31","Kie Harrington","3123134141","1320 Benson Street New York 10006");
INSERT INTO customer values("C32","Tony Mcquire","2123139999","1200 Wilson Street Austin 78702");
INSERT INTO customer values("C33","Hudson Jerry","3336669999","431 Greens Road New York 10006");
INSERT INTO customer values("C34","Charlie Jenoy","2123134141","2348 Avenue Maine Paris 75002");
INSERT INTO customer values("C35","Chandler Bing","2123134141","2348 Wilson Street New York 10006");
INSERT INTO customer values("C36","Jonny Frank","2166664141","2348 Eden Road Street Paris 75001");
INSERT INTO customer values("C37","Mary Terrual","2123134141","1600 Wilson Street Chicago 60602");
INSERT INTO customer values("C38","colleen Mcdonals","2123134141","1400 Greens Street Denver 80202");
INSERT INTO customer values("C39","Niki Pawar","6662131324","1787 Lawrence Chicago 60602");
INSERT INTO customer values("C40","Jim Bomer","3213211284","1211 St Claire Denver 80206");

##############################################################################################################################
#DONE

INSERT INTO sender VALUES("SC11","C21");
INSERT INTO sender VALUES("SC12","C23");
INSERT INTO sender VALUES("SC13","C25");
INSERT INTO sender VALUES("SC14","C27");
INSERT INTO sender VALUES("SC15","C29");
INSERT INTO sender VALUES("SC16","C31");
INSERT INTO sender VALUES("SC17","C33");
INSERT INTO sender VALUES("SC18","C35");
INSERT INTO sender VALUES("SC19","C37");
INSERT INTO sender VALUES("SC20","C39");

###############################################################################################################################
#DONE

INSERT INTO receiver VALUES("RC11","C22");
INSERT INTO receiver VALUES("RC12","C24");
INSERT INTO receiver VALUES("RC13","C26");
INSERT INTO receiver VALUES("RC14","C28");
INSERT INTO receiver VALUES("RC15","C30");
INSERT INTO receiver VALUES("RC16","C32");
INSERT INTO receiver VALUES("RC17","C34");
INSERT INTO receiver VALUES("RC18","C36");
INSERT INTO receiver VALUES("RC19","C38");
INSERT INTO receiver VALUES("RC20","C40");

##############################################################################################################################

UPDATE analyst SET ANALYST_NAME = "Jacob Coleman", CONTACT = "6382183342", ADDRESS = "2311 Atlanta 30301", SALARY = "6500" WHERE EMPLOYEE_ID = "4";

UPDATE analyst SET ANALYST_NAME = "William Hutton", CONTACT = "1286287791", ADDRESS = "3148 LittleRock 72201", SALARY = "6000" WHERE EMPLOYEE_ID = "5" ;

UPDATE analyst SET ANALYST_NAME = "John Snow", CONTACT = "6692141754", ADDRESS = "3712 Denver 80203", SALARY = "5500" WHERE EMPLOYEE_ID = "9";

UPDATE analyst SET ANALYST_NAME = "Anurag Gates", CONTACT = "2148326673", ADDRESS = "3710 San Jose 94089", SALARY = "5700" WHERE EMPLOYEE_ID = "14";

INSERT INTO analyst values("1001","Report 5","4","Jacob Coleman","6382183342","2311 Atlanta 30301","6500");
INSERT INTO analyst values("1004","Report 6","14","Anurag Gates","2148326673","3710 San Jose 94089","5700");
INSERT INTO analyst values("1001","Report 7","4","Jacob Coleman","6382183342","2311 Atlanta 30301","6500");
INSERT INTO analyst values("1003","Report 8","9","John Snow","6692141754","3712 Denver 80203","5500");
INSERT INTO analyst values("1003","Report 9","9","John Snow","6692141754","3712 Denver 80203","5500");
INSERT INTO analyst values("1003","Report 10","9","John Snow","6692141754","3712 Denver 80203","5500");
INSERT INTO analyst values("1003","Report 11","9","John Snow","6692141754","3712 Denver 80203","5500");
INSERT INTO analyst values("1003","Report 12","9","John Snow","6692141754","3712 Denver 80203","5500");
INSERT INTO analyst values("1003","Report 13","9","John Snow","6692141754","3712 Denver 80203","5500");
INSERT INTO analyst values("1003","Report 14","9","John Snow","6692141754","3712 Denver 80203","5500");
INSERT INTO analyst values("1003","Report 15","9","John Snow","6692141754","3712 Denver 80203","5500");
INSERT INTO analyst values("1003","Report 16","9","John Snow","6692141754","3712 Denver 80203","5500");
INSERT INTO analyst values("1004","Report 17","14","Anurag Gates","2148326673","3710 San Jose 94089","5700");
INSERT INTO analyst values("1004","Report 18","14","Anurag Gates","2148326673","3710 San Jose 94089","5700");
INSERT INTO analyst values("1001","Report 19","4","Jacob Coleman","6382183342","2311 Atlanta 30301","6500");
INSERT INTO analyst values("1001","Report 20","4","Jacob Coleman","6382183342","2311 Atlanta 30301","6500");

##################################################################################################################################
#DONE

INSERT INTO PACKAGE VALUES("F311","SC11","RC11","Vacuum food","Local","food",11,"Denver","Miami","B1","C1",280);
INSERT INTO PACKAGE VALUES("F312","SC12","RC12","Dehydrated food","Local","food",23,"Denver","Miami","B1","C1",250);
INSERT INTO PACKAGE VALUES("F313","SC13","RC13","documents","Local","applications",2,"Denver","Miami","B1","C1",100);
INSERT INTO PACKAGE VALUES("F314","SC14","RC14","fragile","Local","baggage",40,"New York","Austin","G1","E1",300);
INSERT INTO PACKAGE VALUES("F315","SC15","RC15","liquid","Local","food",5,"New York","Austin","G1","E1",70);
INSERT INTO PACKAGE VALUES("F316","SC16","RC16","documents","Local","applications",3,"New York","Austin","G1","E1",50);
INSERT INTO PACKAGE VALUES("F317","SC17","RC17","vacuum food","International","food",20,"New York","Paris","G1","F1",150);
INSERT INTO PACKAGE VALUES("F318","SC18","RC18","dehydrated food","International","food",25,"New York","Paris","G1","F1",100);
INSERT INTO PACKAGE VALUES("F319","SC19","RC19","official documents","Local","applications",5,"Chicago","Denver","D1","B1",150);
INSERT INTO PACKAGE VALUES("F320","SC20","RC20","official documents","Local","applications",7,"Chicago","Denver","D1","B1",230);

update package set SOURCE_NAME = "Chicago" where PACKAGE_ID = "F303";

UPDATE PACKAGE SET DELIVERY_TYPE = "International" where PACKAGE_ID = "F306";

###################################################################################################################################

#DONE

INSERT INTO TRACKING_ASSIGNMENT VALUES("TD11","SR15","R11");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD11","SR16","R11");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD11","SR17","R11");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD12","SR18","R12");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD12","SR19","R12");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD12","SR20","R12");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD13","SR21","R13");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD13","SR22","R13");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD13","SR23","R13");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD14","SR24","R14");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD15","SR25","R15");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD16","SR26","R16");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD17","SR27","R17");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD18","SR28","R18");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD19","SR29","R19");
INSERT INTO TRACKING_ASSIGNMENT VALUES("TD20","SR30","R20");

####################################################################################################################################

#DONE

INSERT INTO TRACKING_DETAILS VALUES("TD11",'2016-09-13',"F311",'2016-09-16',"Delivered",'2016-09-17','2016-09-14',"3124 Hilmar St Miami 33123");
INSERT INTO TRACKING_DETAILS VALUES("TD12",'2016-09-13',"F312",'2016-09-16',"Delivered",'2016-09-17','2016-09-14',"3124 Hilmar St Miami 33123");
INSERT INTO TRACKING_DETAILS VALUES("TD13",'2016-09-13',"F313",'2018-02-22',"Delivered",'2016-09-17','2016-09-14',"3124 Hilmar St Miami 33123");
INSERT INTO TRACKING_DETAILS VALUES("TD14",'2018-02-20',"F314",'2018-02-22',"Delivered",'2016-09-17','2016-09-14',"3124 Hilmar St Miami 33123");
INSERT INTO TRACKING_DETAILS VALUES("TD15",'2018-02-20',"F315",'2018-02-22',"Delivered",'2016-09-17','2016-09-14',"3124 Hilmar St Miami 33123");
INSERT INTO TRACKING_DETAILS VALUES("TD16",'2018-02-20',"F316",'2016-12-20',"Delivered",'2016-09-17','2016-09-14',"3124 Hilmar St Miami 33123");
INSERT INTO TRACKING_DETAILS VALUES("TD17",'2016-12-18',"F317",'2016-12-20',"Delivered",'2016-09-17','2016-09-14',"3124 Hilmar St Miami 33123");
INSERT INTO TRACKING_DETAILS VALUES("TD18",'2016-12-18',"F318",'2016-12-20',"Delivered",'2016-12-20','2016-12-18',"3124 Hilmar St Miami 33123");
INSERT INTO TRACKING_DETAILS VALUES("TD19",'2017-12-17',"F319",'2017-12-20',"Delivered",'2017-12-20','2017-12-17',"3124 Hilmar St Miami 33123");
INSERT INTO TRACKING_DETAILS VALUES("TD20",'2017-12-17',"F320",'2017-12-20',"Delivered",'2017-12-20','2017-12-17',"3124 Hilmar St Miami 33123");

UPDATE tracking_details SET CURRENT_DELIVERY_LOCATION = "3122 Ross Street Miami 33128" WHERE TRACKING_DETAIL_ID = "TD12";
UPDATE tracking_details SET CURRENT_DELIVERY_LOCATION = "3268 Lawrence Miami 33121" WHERE TRACKING_DETAIL_ID = "TD13";
UPDATE tracking_details SET CURRENT_DELIVERY_LOCATION = "302 Domi Austin 72002" WHERE TRACKING_DETAIL_ID = "TD14";
UPDATE tracking_details SET CURRENT_DELIVERY_LOCATION = "306 Domi Austin 72002" WHERE TRACKING_DETAIL_ID = "TD15";
UPDATE tracking_details SET CURRENT_DELIVERY_LOCATION = "308 Domi Austin 72002" WHERE TRACKING_DETAIL_ID = "TD16";
UPDATE tracking_details SET CURRENT_DELIVERY_LOCATION = "303 El Camino Paris 75002" WHERE TRACKING_DETAIL_ID = "TD17";
UPDATE tracking_details SET CURRENT_DELIVERY_LOCATION = "301 El Camino Paris 75002" WHERE TRACKING_DETAIL_ID = "TD18";
UPDATE tracking_details SET CURRENT_DELIVERY_LOCATION = "302 El Camino Denver 80206" WHERE TRACKING_DETAIL_ID = "TD19";
UPDATE tracking_details SET CURRENT_DELIVERY_LOCATION = "302 El Camino Denver 80206" WHERE TRACKING_DETAIL_ID = "TD20";

UPDATE tracking_details SET EST_DELIVERY_DATE = '2016-09-16' WHERE TRACKING_DETAIL_ID = "TD13";
UPDATE tracking_details SET EST_DELIVERY_DATE = '2018-02-22' WHERE TRACKING_DETAIL_ID = "TD16";
UPDATE tracking_details SET ACTUAL_DELIVERY_DATE = '2018-02-22' WHERE TRACKING_DETAIL_ID = "TD14";
UPDATE tracking_details SET ACTUAL_DELIVERY_DATE = '2018-02-22' WHERE TRACKING_DETAIL_ID = "TD15";
UPDATE tracking_details SET ACTUAL_DELIVERY_DATE = '2018-02-22' WHERE TRACKING_DETAIL_ID = "TD16";
UPDATE tracking_details SET ACTUAL_DELIVERY_DATE = '2016-12-20' WHERE TRACKING_DETAIL_ID = "TD17";
UPDATE tracking_details SET DISPATCH_DATE = '2018-02-20' WHERE TRACKING_DETAIL_ID = "TD14";
UPDATE tracking_details SET DISPATCH_DATE = '2018-02-20' WHERE TRACKING_DETAIL_ID = "TD15";
UPDATE tracking_details SET DISPATCH_DATE = '2018-02-20' WHERE TRACKING_DETAIL_ID = "TD16";
UPDATE tracking_details SET DISPATCH_DATE = '2016-12-18' WHERE TRACKING_DETAIL_ID = "TD17";





#######################################################################################################################################

UPDATE report SET ANALYST_ID = "1001" WHERE REPORT_ID = "Report 1";
UPDATE report SET ANALYST_ID = "1002" WHERE REPORT_ID = "Report 2";
UPDATE report SET ANALYST_ID = "1003" WHERE REPORT_ID = "Report 3";
UPDATE report SET ANALYST_ID = "1004" WHERE REPORT_ID = "Report 4";
UPDATE report SET ANALYST_ID = "1001" WHERE REPORT_ID = "Report 5";
UPDATE report SET ANALYST_ID = "1004" WHERE REPORT_ID = "Report 6";
UPDATE report SET ANALYST_ID = "1001" WHERE REPORT_ID = "Report 7";
UPDATE report SET ANALYST_ID = "1003" WHERE REPORT_ID = "Report 8";
UPDATE report SET ANALYST_ID = "1003" WHERE REPORT_ID = "Report 9";
UPDATE report SET ANALYST_ID = "1003" WHERE REPORT_ID = "Report 10";
UPDATE report SET ANALYST_ID = "1003" WHERE REPORT_ID = "Report 11";
UPDATE report SET ANALYST_ID = "1003" WHERE REPORT_ID = "Report 12";
UPDATE report SET ANALYST_ID = "1003" WHERE REPORT_ID = "Report 13";
UPDATE report SET ANALYST_ID = "1003" WHERE REPORT_ID = "Report 14";
UPDATE report SET ANALYST_ID = "1003" WHERE REPORT_ID = "Report 15";
UPDATE report SET ANALYST_ID = "1003" WHERE REPORT_ID = "Report 16";
UPDATE report SET ANALYST_ID = "1004" WHERE REPORT_ID = "Report 17";
UPDATE report SET ANALYST_ID = "1004" WHERE REPORT_ID = "Report 18";
UPDATE report SET ANALYST_ID = "1001" WHERE REPORT_ID = "Report 19";
UPDATE report SET ANALYST_ID = "1001" WHERE REPORT_ID = "Report 20";

########################################################################################################################################

UPDATE tracking_assignment SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR1";
UPDATE tracking_assignment SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR2";
UPDATE tracking_assignment SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR3";
UPDATE tracking_assignment SET ROUTE_ID = "R2" WHERE SUBROUTE_ID = "SR8";
UPDATE tracking_assignment SET ROUTE_ID = "R3" WHERE SUBROUTE_ID = "SR9";
UPDATE tracking_assignment SET ROUTE_ID = "R5" WHERE SUBROUTE_ID = "SR6";
UPDATE tracking_assignment SET ROUTE_ID = "R5" WHERE SUBROUTE_ID = "SR7";
UPDATE tracking_assignment SET ROUTE_ID = "R4" WHERE SUBROUTE_ID = "SR4";
UPDATE tracking_assignment SET ROUTE_ID = "R4" WHERE SUBROUTE_ID = "SR5";
UPDATE tracking_assignment SET ROUTE_ID = "R2" WHERE SUBROUTE_ID = "SR10";
UPDATE tracking_assignment SET ROUTE_ID = "R3" WHERE SUBROUTE_ID = "SR11";
UPDATE tracking_assignment SET ROUTE_ID = "R8" WHERE SUBROUTE_ID = "SR12";
UPDATE tracking_assignment SET ROUTE_ID = "R8" WHERE SUBROUTE_ID = "SR13";
UPDATE tracking_assignment SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR14";
UPDATE tracking_assignment SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR15";
UPDATE tracking_assignment SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR16";
UPDATE tracking_assignment SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR17";
UPDATE tracking_assignment SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR18";
UPDATE tracking_assignment SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR19";
UPDATE tracking_assignment SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR20";
UPDATE tracking_assignment SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR21";
UPDATE tracking_assignment SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR22";
UPDATE tracking_assignment SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR23";
UPDATE tracking_assignment SET ROUTE_ID = "R8" WHERE SUBROUTE_ID = "SR24";
UPDATE tracking_assignment SET ROUTE_ID = "R8" WHERE SUBROUTE_ID = "SR25";
UPDATE tracking_assignment SET ROUTE_ID = "R8" WHERE SUBROUTE_ID = "SR26";
UPDATE tracking_assignment SET ROUTE_ID = "R2" WHERE SUBROUTE_ID = "SR27";
UPDATE tracking_assignment SET ROUTE_ID = "R2" WHERE SUBROUTE_ID = "SR28";
UPDATE tracking_assignment SET ROUTE_ID = "R3" WHERE SUBROUTE_ID = "SR29";
UPDATE tracking_assignment SET ROUTE_ID = "R3" WHERE SUBROUTE_ID = "SR30";

#####################################################################################################################

UPDATE SUBROUTE SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR1";
UPDATE SUBROUTE SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR2";
UPDATE SUBROUTE SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR3";
UPDATE SUBROUTE SET ROUTE_ID = "R4" WHERE SUBROUTE_ID = "SR4";
UPDATE SUBROUTE SET ROUTE_ID = "R4" WHERE SUBROUTE_ID = "SR5";
UPDATE SUBROUTE SET ROUTE_ID = "R5" WHERE SUBROUTE_ID = "SR6";
UPDATE SUBROUTE SET ROUTE_ID = "R5" WHERE SUBROUTE_ID = "SR7";
UPDATE SUBROUTE SET ROUTE_ID = "R2" WHERE SUBROUTE_ID = "SR8";
UPDATE SUBROUTE SET ROUTE_ID = "R3" WHERE SUBROUTE_ID = "SR9";
UPDATE SUBROUTE SET ROUTE_ID = "R2" WHERE SUBROUTE_ID = "SR10";
UPDATE SUBROUTE SET ROUTE_ID = "R3" WHERE SUBROUTE_ID = "SR11";
UPDATE SUBROUTE SET ROUTE_ID = "R8" WHERE SUBROUTE_ID = "SR12";
UPDATE SUBROUTE SET ROUTE_ID = "R8" WHERE SUBROUTE_ID = "SR13";
UPDATE SUBROUTE SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR14";
UPDATE SUBROUTE SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR15";
UPDATE SUBROUTE SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR16";
UPDATE SUBROUTE SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR17";
UPDATE SUBROUTE SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR18";
UPDATE SUBROUTE SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR19";
UPDATE SUBROUTE SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR20";
UPDATE SUBROUTE SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR21";
UPDATE SUBROUTE SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR22";
UPDATE SUBROUTE SET ROUTE_ID = "R1" WHERE SUBROUTE_ID = "SR23";
UPDATE SUBROUTE SET ROUTE_ID = "R8" WHERE SUBROUTE_ID = "SR24";
UPDATE SUBROUTE SET ROUTE_ID = "R8" WHERE SUBROUTE_ID = "SR25";
UPDATE SUBROUTE SET ROUTE_ID = "R8" WHERE SUBROUTE_ID = "SR26";
UPDATE SUBROUTE SET ROUTE_ID = "R2" WHERE SUBROUTE_ID = "SR27";
UPDATE SUBROUTE SET ROUTE_ID = "R2" WHERE SUBROUTE_ID = "SR28";
UPDATE SUBROUTE SET ROUTE_ID = "R3" WHERE SUBROUTE_ID = "SR29";
UPDATE SUBROUTE SET ROUTE_ID = "R3" WHERE SUBROUTE_ID = "SR30";

#####################################################################################################

DELETE FROM ROUTE WHERE ROUTE_ID = "R6";
DELETE FROM ROUTE WHERE ROUTE_ID = "R7";
DELETE FROM ROUTE WHERE ROUTE_ID = "R9";
DELETE FROM ROUTE WHERE ROUTE_ID = "R10";
DELETE FROM ROUTE WHERE ROUTE_ID = "R11";
DELETE FROM ROUTE WHERE ROUTE_ID = "R12";
DELETE FROM ROUTE WHERE ROUTE_ID = "R13";
DELETE FROM ROUTE WHERE ROUTE_ID = "R14";
DELETE FROM ROUTE WHERE ROUTE_ID = "R15";
DELETE FROM ROUTE WHERE ROUTE_ID = "R16";
DELETE FROM ROUTE WHERE ROUTE_ID = "R17";
DELETE FROM ROUTE WHERE ROUTE_ID = "R18";
DELETE FROM ROUTE WHERE ROUTE_ID = "R19";
DELETE FROM ROUTE WHERE ROUTE_ID = "R20";

##########################################################################################################

update tracking_details set DATE_OF_TRANSACTION = '2016-09-13', EST_DELIVERY_DATE = '2016-09-18', ACTUAL_DELIVERY_DATE = '2016-09-18',
DISPATCH_DATE = '2016-09-14' WHERE TRACKING_DETAIL_ID = "TD1";

update tracking_details set DATE_OF_TRANSACTION = '2016-12-17', EST_DELIVERY_DATE = '2016-12-20', ACTUAL_DELIVERY_DATE = '2016-12-21',
DISPATCH_DATE = '2016-12-18' WHERE TRACKING_DETAIL_ID = "TD2";

update tracking_details set DATE_OF_TRANSACTION = '2018-03-14', EST_DELIVERY_DATE = '2018-03-17', ACTUAL_DELIVERY_DATE = '0000-00-00',
DISPATCH_DATE = '2018-03-15' WHERE TRACKING_DETAIL_ID = "TD4";

update tracking_details set DATE_OF_TRANSACTION = '2018-03-05', EST_DELIVERY_DATE = '2018-03-10', ACTUAL_DELIVERY_DATE = '0000-00-00',
DISPATCH_DATE = '2018-03-07' WHERE TRACKING_DETAIL_ID = "TD5";

##############################################################################################################











