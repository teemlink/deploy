1 - 设置环境变量MYSQL3307_HOME到mysql安装目录
2 - 运行restore_demodb.bat初始化数据库
3 - 运行backup_demodb.bat备份数据库

备注：
如果出错，则检查my.ini(windows版本位于mysql安装目录下)或my.cnf（linux版本位于etc/mysql目录下，具体和linux版本有关）
my.ini或my.cnf中必须设置
port 为 3307 
默认编码 为 utf8

例如：

[client]
port=3307
default-character-set=utf8
[mysqld] 
character-set-server=utf8  
port=3307 

