
PROMPT Creating Role 'CMS_&det._&subdet._APP_WRITER'
CREATE ROLE CMS_&det._&subdet._APP_WRITER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._USER_ROLE'
CREATE ROLE CMS_&det._USER_ROLE NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._SCHEMA_OWNER_ROLE'
CREATE ROLE CMS_&det._SCHEMA_OWNER_ROLE NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._&subdet._APP_READER'
CREATE ROLE CMS_&det._&subdet._APP_READER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._&subdet._APP_ADMIN'
CREATE ROLE CMS_&det._&subdet._APP_ADMIN NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_CONDITION_WRITER'
CREATE ROLE CMS_&det._CORE_CONDITION_WRITER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_CONDITION_READER'
CREATE ROLE CMS_&det._CORE_CONDITION_READER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_CONDITION_ADMIN'
CREATE ROLE CMS_&det._CORE_CONDITION_ADMIN NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._SYS_PRIV_ROLE'
CREATE ROLE CMS_&det._SYS_PRIV_ROLE NOT IDENTIFIED
/

GRANT CREATE ANY SYNONYM TO CMS_&det._SYS_PRIV_ROLE 
/

GRANT CREATE SYNONYM TO CMS_&det._SYS_PRIV_ROLE 
/

PROMPT Creating Role 'CMS_&det._&subdet._CONDITION_WRITER'
CREATE ROLE CMS_&det._&subdet._CONDITION_WRITER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._&subdet._CONDITION_READER'
CREATE ROLE CMS_&det._&subdet._CONDITION_READER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_IOV_MGMNT_ADMIN'
CREATE ROLE CMS_&det._CORE_IOV_MGMNT_ADMIN NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_IOV_MGMNT_WRITER'
CREATE ROLE CMS_&det._CORE_IOV_MGMNT_WRITER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._&subdet._CONDITION_ADMIN'
CREATE ROLE CMS_&det._&subdet._CONDITION_ADMIN NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._&subdet._CONSTRUCT_READER'
CREATE ROLE CMS_&det._&subdet._CONSTRUCT_READER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._&subdet._CONSTRUCT_WRITER'
CREATE ROLE CMS_&det._&subdet._CONSTRUCT_WRITER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_CONSTRUCT_WRITER'
CREATE ROLE CMS_&det._CORE_CONSTRUCT_WRITER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_ATTRIBUTE_WRITER'
CREATE ROLE CMS_&det._CORE_ATTRIBUTE_WRITER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_MANAGEMNT_WRITER'
CREATE ROLE CMS_&det._CORE_MANAGEMNT_WRITER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_CONSTRUCT_READER'
CREATE ROLE CMS_&det._CORE_CONSTRUCT_READER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_ATTRIBUTE_ADMIN'
CREATE ROLE CMS_&det._CORE_ATTRIBUTE_ADMIN NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_MANAGEMNT_ADMIN'
CREATE ROLE CMS_&det._CORE_MANAGEMNT_ADMIN NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_CONSTRUCT_ADMIN'
CREATE ROLE CMS_&det._CORE_CONSTRUCT_ADMIN NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_ATTRIBUTE_READER'
CREATE ROLE CMS_&det._CORE_ATTRIBUTE_READER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_IOV_MGMNT_READER'
CREATE ROLE CMS_&det._CORE_IOV_MGMNT_READER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._CORE_MANAGEMNT_READER'
CREATE ROLE CMS_&det._CORE_MANAGEMNT_READER NOT IDENTIFIED
/

PROMPT Creating Role 'CMS_&det._&subdet._CONSTRUCT_ADMIN'
CREATE ROLE CMS_&det._&subdet._CONSTRUCT_ADMIN NOT IDENTIFIED
/

GRANT CMS_&det._CORE_CONDITION_READER TO CMS_&det._CORE_CONDITION_WRITER 
/
GRANT CMS_&det._CORE_CONDITION_WRITER TO CMS_&det._CORE_CONDITION_ADMIN 
/
GRANT CMS_&det._&subdet._CONDITION_READER TO CMS_&det._&subdet._CONDITION_WRITER 
/
GRANT CMS_&det._CORE_IOV_MGMNT_WRITER TO CMS_&det._CORE_IOV_MGMNT_ADMIN 
/
GRANT CMS_&det._&subdet._CONDITION_WRITER TO CMS_&det._&subdet._CONDITION_ADMIN 
/
GRANT CMS_&det._&subdet._CONSTRUCT_WRITER TO CMS_&det._&subdet._APP_WRITER 
/
GRANT CMS_&det._CORE_CONSTRUCT_WRITER TO CMS_&det._&subdet._APP_WRITER 
/
GRANT CMS_&det._&subdet._APP_READER TO CMS_&det._&subdet._APP_WRITER 
/
GRANT CMS_&det._CORE_ATTRIBUTE_WRITER TO CMS_&det._&subdet._APP_WRITER 
/
GRANT CMS_&det._CORE_IOV_MGMNT_WRITER TO CMS_&det._&subdet._APP_WRITER 
/
GRANT CMS_&det._CORE_CONDITION_WRITER TO CMS_&det._&subdet._APP_WRITER 
/
GRANT CMS_&det._CORE_MANAGEMNT_WRITER TO CMS_&det._&subdet._APP_WRITER 
/
GRANT CMS_&det._&subdet._CONDITION_WRITER TO CMS_&det._&subdet._APP_WRITER 
/
GRANT CMS_&det._CORE_ATTRIBUTE_READER TO CMS_&det._CORE_ATTRIBUTE_WRITER 
/
GRANT CMS_&det._SYS_PRIV_ROLE TO CMS_&det._SCHEMA_OWNER_ROLE 
/
GRANT CONNECT TO CMS_&det._SCHEMA_OWNER_ROLE 
/
GRANT RESOURCE TO CMS_&det._SCHEMA_OWNER_ROLE 
/
GRANT CMS_&det._CORE_MANAGEMNT_WRITER TO CMS_&det._CORE_MANAGEMNT_ADMIN 
/
GRANT CMS_&det._CORE_CONSTRUCT_READER TO CMS_&det._CORE_CONSTRUCT_WRITER 
/
GRANT CMS_&det._CORE_CONSTRUCT_WRITER TO CMS_&det._CORE_CONSTRUCT_ADMIN 
/
GRANT CMS_&det._CORE_ATTRIBUTE_WRITER TO CMS_&det._CORE_ATTRIBUTE_ADMIN 
/
GRANT CMS_&det._CORE_CONDITION_ADMIN TO CMS_&det._&subdet._APP_ADMIN 
/
GRANT CMS_&det._&subdet._CONDITION_ADMIN TO CMS_&det._&subdet._APP_ADMIN 
/
GRANT CMS_&det._CORE_IOV_MGMNT_ADMIN TO CMS_&det._&subdet._APP_ADMIN 
/
GRANT CMS_&det._CORE_MANAGEMNT_ADMIN TO CMS_&det._&subdet._APP_ADMIN 
/
GRANT CMS_&det._&subdet._APP_WRITER TO CMS_&det._&subdet._APP_ADMIN 
/
GRANT CMS_&det._&subdet._CONSTRUCT_ADMIN TO CMS_&det._&subdet._APP_ADMIN 
/
GRANT CMS_&det._CORE_ATTRIBUTE_ADMIN TO CMS_&det._&subdet._APP_ADMIN 
/
GRANT CMS_&det._CORE_CONSTRUCT_ADMIN TO CMS_&det._&subdet._APP_ADMIN 
/
GRANT CMS_&det._&subdet._CONSTRUCT_WRITER TO CMS_&det._&subdet._CONSTRUCT_ADMIN 
/
GRANT CMS_&det._CORE_MANAGEMNT_READER TO CMS_&det._CORE_MANAGEMNT_WRITER 
/
GRANT CMS_&det._&subdet._CONSTRUCT_READER TO CMS_&det._&subdet._CONSTRUCT_WRITER 
/
GRANT CONNECT TO CMS_&det._USER_ROLE 
/
GRANT CMS_&det._&subdet._CONSTRUCT_READER TO CMS_&det._&subdet._APP_READER 
/
GRANT CMS_&det._&subdet._CONDITION_READER TO CMS_&det._&subdet._APP_READER 
/
GRANT CMS_&det._CORE_IOV_MGMNT_READER TO CMS_&det._&subdet._APP_READER 
/
GRANT CMS_&det._CORE_MANAGEMNT_READER TO CMS_&det._&subdet._APP_READER 
/
GRANT CMS_&det._CORE_CONSTRUCT_READER TO CMS_&det._&subdet._APP_READER 
/
GRANT CMS_&det._CORE_ATTRIBUTE_READER TO CMS_&det._&subdet._APP_READER 
/
GRANT CMS_&det._CORE_CONDITION_READER TO CMS_&det._&subdet._APP_READER 
/
GRANT CMS_&det._CORE_IOV_MGMNT_READER TO CMS_&det._CORE_IOV_MGMNT_WRITER 
/
GRANT CREATE VIEW TO CMS_&det._SCHEMA_OWNER_ROLE
/
GRANT CREATE SYNONYM TO CMS_&det._USER_ROLE
/