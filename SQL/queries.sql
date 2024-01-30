select * from orders ord
    inner join lineitem lit
        on ord.o_orderkey = lit.l_orderkey
    inner join part 
    on part.p_partkey = lit.l_partkey
    where month(ord.o_orderdate) between 1 and 2;

select 
query_id
,start_time
,end_time
,session_id
,credits_used_cloud_services
,total_elapsed_time
,bytes_scanned
,execution_time
,warehouse_name
,warehouse_size
from snowflake.account_usage.query_history
where query_id in (
'01b1fa62-0001-ad59-0002-81260002e02a',
'01b1da24-0001-a992-0002-812600016096',
'01b1dd9d-0001-a9b6-0002-81260001a026',
'01b1ddd6-0001-a9c1-0002-81260001d042',
'01b1ddff-0001-a9c1-0002-81260001d052',
'01b1ea5f-0001-ab26-0002-812600027062',
'01b1de5d-0001-aa23-0002-81260001e0a6'
);
