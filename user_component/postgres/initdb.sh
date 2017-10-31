#!/bin/bash
echo "Init data base";
psql postgres < /tmp/1_create_db.sql;
psql postgres < /tmp/2_grant_privileges.sql;
psql -U abanking_sco abanking_sco < /tmp/3_create_tables.sql
psql -U abanking_sco abanking_sco < /tmp/4_create_tables.sql

echo "Finish data base";
