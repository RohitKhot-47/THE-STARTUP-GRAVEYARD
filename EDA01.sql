--- EDA --- 
select* 
from dup_proj01;

select count(distinct company_name) as total_companies
from dataset_proj01;

select distinct country, count(company_name) as total_comp
from dup_proj01
group by country;

select company_size, company_name, years_active
from dup_proj01;

select  company_name, years_active, official_cause, official_cause_detailed
from dup_proj01;

select total_funding, int_total_funding
from dup_proj01;

alter table dup_proj01
add column int_total_funding decimal (20,2);

update dup_proj01
set int_total_funding = 
case 
	when total_funding like '%B'
    then cast(replace ( replace(total_funding, '$', ''), 'B', '') as decimal (10,2))*1000000000
    when total_funding like '%M%'
    then cast(replace ( replace(total_funding, '$', ''), 'M', '') as decimal (10,2))*1000000
end;

select int_total_funding, company_name, total_funding, official_cause
from dup_proj01;

select int_total_funding, company_name, total_funding, years_active
from dup_proj01;

select distinct  official_cause, count(company_name) as count_cause
from dup_proj01
group by official_cause;


select company_name, official_cause, years_active, total_funding
from dup_proj01
where official_cause in ('fraud', 'Competition', 'Debt', 'Economics', 'Funding');

select company_name, official_cause, official_cause_detailed
from dup_proj01;