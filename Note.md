class 1 :

SQL server 

sudo docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=xxxxXxxx" -p 1433:1433 --name sql1 --hostname sql1  -d mcr.microsoft.com/mssql/server:2019-latest 

Client : Azure data studio

SQL data type
SQL Server offers six categories of data types for your use:

Exact numeric: bit, tinyint, smallint, int, bigint, decimal, numeric, money and smallmoney
Approximate numeric: Read and float
Date and time: date, DateTime, datetime2, datetimeoffset, smalldatetime, time
Character strings:char, varchar, text
Unicode character strings: Nchar, Nvarchar, Ntext
Binary strings: Binary, image and varbinary
Other data types: Cursor, hierarchyid, sql_variant, table, rowversion, uniqueidentifier, XML, Spatial and geography


class 2: 

