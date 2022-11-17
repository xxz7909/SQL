-- 给读者类型表添加字段备注
execute sp_addextendedproperty N'MS_Description',N'读者类型编号',N'user',N'dbo',N'table',N'ReaderType',N'column',N'RTypeld';
execute sp_addextendedproperty N'MS_Description',N'读者类型名称',N'user',N'dbo',N'table',N'ReaderType',N'column',N'RType';
execute sp_addextendedproperty N'MS_Description',N'可借数量',N'user',N'dbo',N'table',N'ReaderType',N'column',N'Num';
