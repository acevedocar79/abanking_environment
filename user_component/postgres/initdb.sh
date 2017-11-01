#!/bin/bash
echo "Init data base";
psql postgres < /tmp/1_create_db.sql;
psql postgres < /tmp/2_grant_privileges.sql;
psql -U abanking_sco abanking_sco < /tmp/3_create_tables.sql
psql -U abanking_sco abanking_sco < /tmp/4_create_tables.sql
psql -U abanking_sco abanking_sco < /tmp/5_create_tables.sql
psql -U abanking_sco abanking_sco < /tmp/6_create_tables.sql
psql -U abanking_sco abanking_sco < /tmp/7_insert_backoffice_data.sql
echo "Finish data base";
