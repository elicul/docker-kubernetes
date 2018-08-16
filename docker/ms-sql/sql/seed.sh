#!/bin/bash
database=Prime
wait_time=10s
password=P@55w0rd

# wait for SQL Server to come up
echo importing data will start in $wait_time...
sleep $wait_time
echo importing data...

# run the init script to create the DB and the tables in /table
/opt/mssql-tools/bin/sqlcmd -S 0.0.0.0 -U sa -P $password -i /usr/src/app/init.sql
/opt/mssql-tools/bin/sqlcmd -S 0.0.0.0 -U sa -P $password -d $database -i /usr/src/app/table/MyTable.sql