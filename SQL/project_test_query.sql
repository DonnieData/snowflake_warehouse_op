select * from orders ord
    inner join lineitem lit
        on ord.o_orderkey = lit.l_orderkey
    inner join part 
    on part.p_partkey = lit.l_partkey
    where month(ord.o_orderdate) between 1 and 2;
