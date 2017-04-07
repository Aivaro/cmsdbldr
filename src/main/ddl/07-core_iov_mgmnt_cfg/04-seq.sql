
PROMPT Creating Sequence 'CONFIG_KEY_ALIAS_ID_SEQ'
CREATE SEQUENCE CONFIG_KEY_ALIAS_ID_SEQ
 INCREMENT BY 20
 MAXVALUE 999999999999999999999999999
 MINVALUE 10000000
 CACHE 20
/

PROMPT Creating Sequence 'CONFIG_KEY_ALIAS_MAP_ID_SEQ '
CREATE SEQUENCE CONFIG_KEY_ALIAS_MAP_ID_SEQ
  INCREMENT BY 20
  MAXVALUE 999999999999999999999999999
  MINVALUE 10000000
  CACHE 20
/

PROMPT Creating Sequence 'CONFIG_KEY_ID_SEQ'
CREATE SEQUENCE CONFIG_KEY_ID_SEQ
  INCREMENT BY 20
  MAXVALUE 999999999999999999999999999
  MINVALUE 10000000
  CACHE 20
/


PROMPT Creating Sequence 'CONFIG_KEY_RUN_HST_ID_SEQ'
CREATE SEQUENCE CONFIG_KEY_RUN_HST_ID_SEQ
  INCREMENT BY 20
  MAXVALUE 999999999999999999999999999
  MINVALUE 10000000
  CACHE 20
/


PROMPT Creating Sequence 'CONFIG_KEY_SUBVER_HST_ID_SEQ '
CREATE SEQUENCE CONFIG_KEY_SUBVER_HST_ID_SEQ
  INCREMENT BY 20
  MAXVALUE 999999999999999999999999999
  MINVALUE 10000000
  CACHE 20
/
PROMPT Creating Sequence 'CONFIG_KEY_TYPE_ID_SEQ'
CREATE SEQUENCE CONFIG_KEY_TYPE_ID_SEQ
  INCREMENT BY 20
  MAXVALUE 999999999999999999999999999
  MINVALUE 10000000
  CACHE 20
/



PROMPT Creating Sequence 'CONFIG_KEY_VER_ALIAS_ID_SEQ'
CREATE SEQUENCE CONFIG_KEY_VER_ALIAS_ID_SEQ
  INCREMENT BY 20
  MAXVALUE 999999999999999999999999999
  MINVALUE 10000000
  CACHE 20
/


PROMPT Creating Sequence 'CONFIG_KEY_VERSION_MAP_ID_SEQ'
CREATE SEQUENCE CONFIG_KEY_VERSION_MAP_ID_SEQ
  INCREMENT BY 20
  MAXVALUE 999999999999999999999999999
  MINVALUE 10000000
  CACHE 20
/


PROMPT Creating Sequence 'CONFIG_TYPE_KOC_MAP_ID_SEQ'
CREATE SEQUENCE CONFIG_TYPE_KOC_MAP_ID_SEQ
  INCREMENT BY 20
  MAXVALUE 999999999999999999999999999
  MINVALUE 10000000
  CACHE 20
/


PROMPT Creating Sequence 'CONFIG_VER_ALIAS_ID_SEQ'
CREATE SEQUENCE CONFIG_VER_ALIAS_ID_SEQ
  INCREMENT BY 20
  MAXVALUE 999999999999999999999999999
  MINVALUE 10000000
  CACHE 20
  ORDER
/


PROMPT Creating Sequence 'CONFIG_VER_ALIAS_MAP_ID_SEQ'
CREATE SEQUENCE CONFIG_VER_ALIAS_MAP_ID_SEQ
  INCREMENT BY 20
  MAXVALUE 999999999999999999999999999
  MINVALUE 10000000
  CACHE 20
  ORDER
/


PROMPT Creating Sequence 'CONFIG_VERSION_SEQ'
CREATE SEQUENCE CONFIG_VERSION_SEQ
  INCREMENT BY 1
  MAXVALUE 999999999999999999999999999
  MINVALUE 1000
  CACHE 2
/

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_ALIAS_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_ADMIN;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_ALIAS_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_WRITER;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_ALIAS_MAP_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_ADMIN;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_ALIAS_MAP_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_WRITER;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_ADMIN;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_WRITER;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_RUN_HST_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_ADMIN;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_RUN_HST_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_WRITER;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_SUBVER_HST_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_ADMIN;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_SUBVER_HST_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_WRITER;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_TYPE_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_ADMIN;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_TYPE_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_WRITER;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_VER_ALIAS_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_ADMIN;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_VER_ALIAS_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_WRITER;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_VERSION_MAP_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_ADMIN;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_KEY_VERSION_MAP_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_WRITER;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_TYPE_KOC_MAP_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_ADMIN;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_TYPE_KOC_MAP_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_WRITER;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_VER_ALIAS_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_ADMIN;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_VER_ALIAS_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_WRITER;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_VER_ALIAS_MAP_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_ADMIN;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_VER_ALIAS_MAP_ID_SEQ TO CMS_&det._CORE_IOV_MGMNT_WRITER;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_VERSION_SEQ TO CMS_&det._CORE_IOV_MGMNT_ADMIN;

GRANT SELECT ON  CMS_&det._CORE_IOV_MGMNT.CONFIG_VERSION_SEQ TO CMS_&det._CORE_IOV_MGMNT_WRITER;
