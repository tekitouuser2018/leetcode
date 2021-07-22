# Write your MySQL query statement below
select distinct a.Email
    from Person a
    inner join Person b
    on a.id != b.id && a.Email = b.Email 
    
