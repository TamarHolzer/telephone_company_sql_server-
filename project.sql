use customer_lip

----select [custid],[custname],
--create view ex1(custId,custName,monthC,yearC,minutesSpeak,minutesO,cost)
--select c.[custid],c.[custname], month(u.[timestart]),year( u.[timestart]),d.[sum_minute],DATEDIFF(DD,u.[timestart],u.[timeend])-d.[sum_minute],d.[cost]+DATEDIFF(DD,u.[timestart],u.[timeend])-d.[sum_minute]*d.[plus]
--from [dbo].[customer] c join [dbo].[usage] u on c.custid=u.custid join [dbo].[discount] d on d.discountid=c.discountid
--group by u.[usageid]

--2
go
alter procedure proc_active_customer(@prodid int)
as
begin
	if(select top 1  year([timeend]) desc from [dbo].[usage] where [custid]=@prodid group by 
end
--3
go
create function func77(@month1 int,@year1 int) returns table as

--5
select d.[discountname],d.[cost] as 'מחיר סלקום',p.cost as 'מחיר פלפון',case when p.cost>d.cost then 'סלקום ' else 'פלפון' end
from [dbo].[discount] d
join [dbo].[pel_discount] p on p.[discountid]=d.discountid



--6
go
create function ex6(@custid int) returns @table table(pel varchar(10),time_start datetime,longt float)
as
begin
;with cte as (select [custphone] as 'פלאפון',[timestart]  as 'התחלת השיחה',DATEDIFF(MINUTE,[timestart],[timeend]) as 'משך השיחה'
			from [dbo].[usage] u join [dbo].[customer] c on c.[custid]=u.custid
			where @custid=c.custid)
insert @table 
select top 10 * from cte
return
end

--7

select *
from[dbo].[customer] cross apply targil6([custname],[custid])
where [discountid]=2 and [active]=1

--9
;with cte9
as
(
select  ROW_NUMBER()over(partition by [custid]order by[charag] desc)as r,*
from v
)
select *
from cte9
where r<=2
--10
--11
select * ,case when[tophone]in(select[custphone]from[dbo].[customer])then[custname]
                  else 'לקוח זה של חברה אחרת'
				  end
from [dbo].[usage]u join[dbo].[customer]c on u.[custid]=c.[custid]
--12
--13
select *,sum(datediff(MINUTE,[timestart],[timeend]))
over(partition by[custid],year([timestart]),month([timestart]) order by [timestart])
from[dbo].[usage] 

--14
select[custname],[custphone],[timestart],[timeend]
from[dbo].[customer]c join[dbo].[usage]u on c.custid=u.custid

















