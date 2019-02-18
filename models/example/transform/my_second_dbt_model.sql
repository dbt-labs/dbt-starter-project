--because no configuration is defined in this SQL file, it defaults to "view" as 
--defined in the dbt_project.yml file

with raw_data as (
    
--now that we have the raw data defined in the base model, we can use the most 
--important dbt function, ref() to reference that model in subsequent queries
--https://docs.getdbt.com/reference#ref
    
    select * from {{ref('my_first_dbt_model')}}
    
),

calculations as (
    
    select
        id,
        id + 10 as add_id,
        id * 2 as multiply_id
    from raw_data
    
)

select * from calculations