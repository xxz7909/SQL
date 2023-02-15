declare @a int, @b int ,@c int,@d int;

set @a=1;
print @a

select @b=2,@c=3,@d=4;
print @b;
print @c;
print @d;

declare @@z int;
set @@z = 3;
print @@z

use master;
drop database XSCJ;
drop database StuDB;
go
