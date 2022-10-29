--突然发现字段名设置错了
execute sp_rename 'ReaderType.RTypeld','RTypeId','column';
execute sp_rename 'Readers.Rtypeld','RTypeId','column';
go