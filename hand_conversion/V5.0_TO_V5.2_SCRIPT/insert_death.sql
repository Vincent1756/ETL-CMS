-- 
-- insert_death.sql
--
--  This is the insert for death generated by synpuf_etl.sql.  
--  Some values were hardcoded based on release notes and discussions with Claire & Erica. 
--

insert into cdm_synpuf_v667.dbo.death with (tablock) ( 
death_type_concept_id, 
cause_concept_id, 
cause_source_value, 
cause_source_concept_id, 
person_id, 
death_date, 
death_datetime
)
select death_type_concept_id, 
cause_concept_id, 
cause_source_value, 
cause_source_concept_id, 
person_id, 
death_date, 
NULL -- death_datetime 
from cdm_synpuf_v665.dbo.death;
