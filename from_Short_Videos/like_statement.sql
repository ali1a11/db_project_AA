/*
Like statement: partial search
WildCard:

    starts with: Chars%
    ends with: %Chars
    contains: %Chars%
    
    syntax:
    
    select Column(s) from Table(s) where Value Like 'WildCard'
    
*/

-- starts with

select * from countries
where country_name like 'A%'; --Countries with its name starts with A

select * from countries
where country_name like 'Au%'; --Countries with its name starts with Au


-- ends with
select * from countries
where country_name like '%a'; --Countries with its name ends with a

-- starts with and ends with
select * from countries
where country_name like 'A%' and country_name like '%a'; --Countries with its name starts with A and ends with a


-- contains
select * from countries
where country_name like '%n%'; -- Countries with its name contains n
