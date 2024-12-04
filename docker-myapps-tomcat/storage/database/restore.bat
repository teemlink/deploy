set path=%MYSQL3307_HOME%\bin;%path%

cd /d %~dp0
mysqladmin -uroot --password=Teemlink2010 -P3307 -f drop obpm5
mysqladmin -uroot --password=Teemlink2010 -P3307 -f drop message5

mysqladmin -uroot --password=Teemlink2010 -P3307 create obpm5
mysqladmin -uroot --password=Teemlink2010 -P3307 create message5

mysql -uroot --password=Teemlink2010 -P3307 obpm5 <obpm5.sql
mysql -uroot --password=Teemlink2010 -P3307 message5 <message5.sql
@exit