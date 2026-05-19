select*
from eda2;

select distinct classification
from eda2;

update  eda2
set classification = 'Uncontrolled'
where classification = '*';

select  classification, count(*)
from eda2
group by classification;

select company_name, classification, active_years, txt_funding, main_cause_detailed
from eda2
where classification = 'bad decisions';

select  classification, avg(active_years), min(active_years), max(active_years)
from eda2
group by classification ;

select  classification, avg(int_funding), min(int_funding), max(int_funding)
from eda2
group by classification ;