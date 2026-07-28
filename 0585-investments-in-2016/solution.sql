with tab1 as
(select tiv_2016, 
    count(*) over (partition by tiv_2015) cnt1,
    count(*) over (partition by lat, lon) cnt2 from insurance)
select round(sum(tiv_2016), 2) tiv_2016 from tab1 where cnt1>1 and cnt2=1

