create or replace procedure Array121 (p_var in abcd)
as
max_idx pls_integer := 0;
min_idx pls_integer := 0;
max_val pls_integer := 0;
min_val pls_integer := 0;
profit_val pls_integer := 0;
e_nv EXCEPTION;
begin
--edge cases
if(p_var.count <=1) then
RAISE e_nv;
end if;
for i in 1..p_var.count
loop
if(min_val > p_var(i)) then
min_val := p_var(i);
min_idx := i;
end if;
if(max_val <= p_var(i)) then
max_val := p_var(i);
max_idx := i;
end if;
SELECT GREATEST(profit_val, (p_var(i) - min_val)) INTO profit_val FROM DUAL;
end loop;
dbms_output.put_line(' For low Index : ' || min_idx || ' and high idx : ' || max_idx);
dbms_output.put_line('Maximum profit is : ' || profit_val || ' for Max value : ' || max_val || ' and Min value : ' || min_val);

exception
when e_nv
then
dbms_output.put_line('Exception Raised for size of array ..!');
when others
then
dbms_output.put_line(dbms_utility.format_error_backtrace());
dbms_output.put_line(SQLCODE ||'  '|| SQLERRM);
end;