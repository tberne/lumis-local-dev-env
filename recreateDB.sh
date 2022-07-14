#!/bin/bash
SQLCMD=//opt/mssql-tools/bin/sqlcmd
./dc exec db $SQLCMD \
   -S localhost -U SA -P 'Lum!1s!!' \
   -Q 'drop database trunk' -d master

./createDB.sh
