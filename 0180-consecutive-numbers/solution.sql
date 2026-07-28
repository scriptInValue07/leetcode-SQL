with seq_diff as
(select num,
    lag(num, 1) over (order by id) nxt1,
    lag(num, 2) over (order by id) nxt2
    from logs)
select distinct num as ConsecutiveNums from seq_diff
where num=nxt1 and num=nxt2

