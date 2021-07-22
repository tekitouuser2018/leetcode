# Write your MySQL query statement below
select a.Name as Customers
    from Customers a
    where Id not in 
    (select c.Id from Customers c 
     inner join Orders b
    on b.CustomerId = c.Id)
