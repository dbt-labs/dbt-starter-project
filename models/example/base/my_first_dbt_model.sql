
-- Welcome to your first dbt model!
-- Did you know that you can also configure models directly within
-- the SQL file? This will override configurations stated in dbt_project.yml

-- Try changing 'view' to 'table', then re-running dbt
{{ config(materialized='view') }}

--it is best practice to only reference raw data in base models
--https://docs.getdbt.com/docs/best-practices#section-limit-dependencies-on-raw-data

select 1 as id
