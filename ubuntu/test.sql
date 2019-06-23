set @rank=0;
select s.*,temp.rank
from equipment_num_summary as s
inner join (
    select n.*,@rank:=@rank+1 as rank
    from (
        select distinct equipment_num
        from equipment_num_summary
    ) as n
    order by n.equipment_num desc
) as temp on temp.equipment_num=s.equipment_num
order by temp.rank;