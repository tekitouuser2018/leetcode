# Write your MySQL query statement below
select d.id, e.revenue as Jan_Revenue, f.revenue as Feb_Revenue, g.revenue as Mar_Revenue, h.revenue as Apr_Revenue, i.revenue as May_Revenue, j.revenue as Jun_Revenue, k.revenue as Jul_Revenue, l.revenue as Aug_Revenue, m.revenue as Sep_Revenue, n.revenue as Oct_Revenue, o.revenue as Nov_Revenue, p.revenue as Dec_Revenue
    from (select id, revenue from department group by id) as d
    left join (select id, revenue from department where month = 'Jan' ) as e
    on d.id = e.id
    left join (select id, revenue from department where month = 'Feb' ) as f
    on d.id = f.id
    left join (select id, revenue from department where month = 'Mar' ) as g
    on d.id = g.id
    left join (select id, revenue from department where month = 'Apr' ) as h
    on d.id = h.id
    left join (select id, revenue from department where month = 'May' ) as i
    on d.id = i.id
    left join (select id, revenue from department where month = 'Jun' ) as j
    on d.id = j.id
    left join (select id, revenue from department where month = 'Jul' ) as k
    on d.id = k.id
    left join (select id, revenue from department where month = 'Aug' ) as l
    on d.id = l.id
    left join (select id, revenue from department where month = 'Sep' ) as m
    on d.id = m.id
    left join (select id, revenue from department where month = 'Oct' ) as n
    on d.id = n.id
    left join (select id, revenue from department where month = 'Nov' ) as o
    on d.id = o.id
    left join (select id, revenue from department where month = 'Dec' ) as p
    on d.id = p.id

   
 
