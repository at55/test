-- sqlplus / as sysdba
set ti on lin 999 pages 9999
set feedback on
set pagesize 9999
set linesize 2000
set trimspool on
set trimout on
set serveroutput off

COL OWNER FOR A26
COL TABLESPACE_NAME FOR A30
COL FILE_NAME FOR A50
COL VALUE FOR 9999999999999999999
COL NAME FOR A36
COL USERNAME FOR A20
COL PROFILE FOR A20
col status for a10
COL TABLE_NAME FOR A36
COL SYNONYM_NAME FOR A36
COL TABLE_OWNER FOR A22
COL db_LINK FOR A22
col object_name for a36

spool tag.log

select status from v$instance;
pro
pro *** Confirm archive setting ***
pro

archive log list

pro

select owner,object_name,object_type,created,last_ddl_time,timestamp from all_objects where owner in ('DS') and object_type='TABLE' order by 3,2;

spool off
--exit;
