select 
	E1.name as staff, 
    E1.level as staff_level,
    E2.name as Manager ,
    E2.level as Manager_level, 
    E1.name || ' Reports To ' || e2.name as COMMENT
from employee as E1 , employee as E2
where E1.manager_id = E2.id ;

--ใช้ SELF JOIN เพื่อ join table กับตัวมันเอง นิยมใช้ในกรณีแบบ hierarchy เช่น manager - staff หรือ product category - items
