select * from TESTERS;

select * from DEVELOPERS;

--union

select * from TESTERS
union
select * from DEVELOPERS;

select names from TESTERS
union
select names from DEVELOPERS;

select names from TESTERS
union all
select names from DEVELOPERS;

--minus

select names from TESTERS
minus
select names from DEVELOPERS;

select names from DEVELOPERS
minus
select names from TESTERS;

--intersect
select names from DEVELOPERS
intersect
select names from TESTERS;




