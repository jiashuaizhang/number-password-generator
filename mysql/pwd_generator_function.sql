/*如果执行失败并报错【[Err] 1418 - This function has none of DETERMINISTIC, NO SQL, or READS SQL DATA in its declaration and 
binary logging is enabled (you *might* want to use the less safe log_bin_trust_function_creators variable)】,运行下方注释中语句解决*/
-- set global log_bin_trust_function_creators=TRUE;
-- 创建函数
drop function if exists pwd_generator;
create function pwd_generator()
returns char(6) 
begin
declare pwd char(6);
set pwd = SUBSTR(CAST(RAND() AS CHAR),3,6);
return pwd;
end;
-- 调用
SELECT pwd_generator() pwd;
