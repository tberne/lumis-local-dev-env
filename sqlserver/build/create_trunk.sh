#!/bin/bash
SQLCMD=/opt/mssql-tools/bin/sqlcmd
$SQLCMD -S localhost -U SA -P "${SA_PASSWORD}" -d master -i /lumis/create_trunk.sql
