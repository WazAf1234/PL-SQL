create or replace procedure Array122(p_var in abcd)
as
e_nv EXCEPTION;
profit_val pls_integer := 0;
begin
if(p_var.count <= 1)then
raise e_nv;
end if;
for i in 1..(p_var.count-1)
loop
if(p_var(i+1) > p_var(i))
then
profit_val := profit_val + p_var(i + 1) - p_var(i);
end if;
end loop;
dbms_output.put_line('Total profit is :' || profit_val);
exception 
when e_nv
then
dbms_output.put_line('Array size issues--> Edge Case..!');
when others
then 
dbms_output.put_line(dbms_utility.format_error_backtrace());
dbms_output.put_line(SQLCODE || SQLERRM);
end;