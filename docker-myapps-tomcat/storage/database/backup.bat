set path=%MYSQL3307_HOME%\bin;%path%
mysqldump -uroot --password=Teemlink2010 -P3307 obpm5> obpm5.sql
mysqldump -uroot --password=Teemlink2010 -P3307 message5> message5.sql