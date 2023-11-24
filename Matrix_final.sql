#1)
select distinct f.franchise_location as 'Franchise', sum(r.revenue) as 'Total Revenue(in $)'
from franchise f, package p, tracking_details t, report r
where year(t.EST_DELIVERY_DATE) = '2018' and 
r.tracking_detail_id= t.tracking_detail_id and t.package_id = p.package_id 
and p.SOURCE_ID= f.franchise_id
group by f.franchise_location;

#2)
select a.ROUTE_ID,count(distinct t.tracking_detail_id) as 'NUMBER OF PACKAGES', group_concat(distinct t.PACKAGE_ID) AS 'PACKAGE IDS'
from tracking_details t, tracking_assignment a, tracking_assignment a1
where t.tracking_detail_id= a.tracking_detail_id and a.route_id=a1.route_id
group by route_id;

#3)
select   e.description as 'Complaint Type',count(e.enquiry_id) as 'Number of Complaints'
from enquiry_complaint e
group by e.description;

#4)
SELECT  YEAR(TD.DATE_OF_TRANSACTION) AS 'YEAR1',COUNT(P.PACKAGE_ID) AS 'NUMBER OF PACKAGES'
FROM PACKAGE P, tracking_details TD
WHERE P.PACKAGE_ID=TD.PACKAGE_ID
GROUP BY YEAR1;

#5)
SELECT YEAR(TD.ACTUAL_DELIVERY_DATE) AS 'YEAR', SUM(R.REVENUE)
FROM REPORT R, TRACKING_DETAILS TD
WHERE R.TRACKING_DETAIL_ID=TD.TRACKING_DETAIL_ID AND TD.DELIVERY_STATUS='DELIVERED'
GROUP BY year(TD.ACTUAL_DELIVERY_DATE);

#6)
SELECT P.DELIVERY_TYPE,COUNT(P.PACKAGE_ID)
FROM PACKAGE P
GROUP BY P.DELIVERY_TYPE;

#7)
SELECT (COUNT(TD.TRACKING_DETAIL_ID)/16)*100 AS 'DELIVERY ACCURACY' , "%" AS 'MEASURE'
FROM tracking_details TD
WHERE TD.EST_DELIVERY_DATE=TD.ACTUAL_DELIVERY_DATE AND DELIVERY_STATUS = 'DELIVERED'


