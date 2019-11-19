#!/bin/bash
./dc exec db /opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P "Lum!1s!!" \
   -Q "drop database trunk"

./dc exec db /opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P "Lum!1s!!" \
   -Q "create database trunk"


./dc exec db /opt/mssql-tools/bin/sqlcmd \
   -S localhost -U SA -P "Lum!1s!!" \
   -Q "alter database trunk SET READ_COMMITTED_SNAPSHOT ON;"