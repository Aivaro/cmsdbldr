
PROMPT Creating Primary Key on 'CONFIG_KEYS'
ALTER TABLE CONFIG_KEYS
 ADD (CONSTRAINT CONFIG_KEYS_PK PRIMARY KEY
  (CONFIG_KEY_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'CONFIG_KEY_ALIASES'
ALTER TABLE CONFIG_KEY_ALIASES
 ADD (CONSTRAINT CONFIG_KEY_ALIASES_PK PRIMARY KEY
  (CONFIG_KEY_ALIAS_ID)
 USING INDEX
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Check Constraint on 'CONFIG_VERSION_ALIASES'
ALTER TABLE CONFIG_VERSION_ALIASES
  ADD CONSTRAINT AVCON_1213204257_IS_RE_001 CHECK (IS_RECORD_DELETED BETWEEN 'F'
  AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T')
/

PROMPT Creating Primary Key on 'CONFIG_VERSION_ALIASES'
ALTER TABLE CONFIG_VERSION_ALIASES
  ADD (CONSTRAINT CONVERALS_PK PRIMARY KEY
    (CONFIG_VERSION_ALIAS_ID)
  USING INDEX
  TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Foreign Key on 'CONFIG_KEY_VERSION_ALIAS_MAPS'
ALTER TABLE CONFIG_KEY_VERSION_ALIAS_MAPS ADD (CONSTRAINT
  CONVERKALMP_VERLAL_FK FOREIGN KEY
    (CONFIG_VERSION_ALIAS_ID) REFERENCES CONFIG_VERSION_ALIASES
    (CONFIG_VERSION_ALIAS_ID))
/

PROMPT Creating Foreign Key on 'CONFIG_KEY_VERSION_ALIAS_MAPS'
ALTER TABLE CONFIG_KEY_VERSION_ALIAS_MAPS ADD (CONSTRAINT
  CONVERKALMP_KEYLAL_FK FOREIGN KEY
    (CONFIG_KEY_ALIAS_ID) REFERENCES CONFIG_KEY_ALIASES
    (CONFIG_KEY_ALIAS_ID))
/



PROMPT Creating Primary Key on 'CONFIG_KEY_VERSION_ALIAS_MAPS'
ALTER TABLE CONFIG_KEY_VERSION_ALIAS_MAPS
  ADD (CONSTRAINT CONVERKEYALMP_PK PRIMARY KEY
    (CONFIG_KEY_VERSION_ALIAS_ID)
  USING INDEX
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/


PROMPT Creating Primary Key on 'CONFIG_VERSION_ALIAS_MAPS'
ALTER TABLE CONFIG_VERSION_ALIAS_MAPS
  ADD (CONSTRAINT CONVERALMP_PK PRIMARY KEY
    (CONFIG_VERSION_ALIAS_MAP_ID)
  USING INDEX
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Foreign Key on 'CONFIG_VERSION_ALIAS_MAPS'
ALTER TABLE CONFIG_VERSION_ALIAS_MAPS ADD (CONSTRAINT
  CREFERS_TO_OPTIONAL_SUBVERS__1 FOREIGN KEY
  (CONDITION_DATA_SET_ID) REFERENCES CMS_&det._CORE_COND.COND_DATA_SETS
  (CONDITION_DATA_SET_ID))
/

PROMPT Creating Foreign Key on 'CONFIG_VERSION_ALIAS_MAPS'
ALTER TABLE CONFIG_VERSION_ALIAS_MAPS
  ADD (CONSTRAINT CONVERALMP_CNDTST_FK FOREIGN KEY
  (SUBVERSION_COND_DATA_SET_ID) REFERENCES CMS_&det._CORE_COND.COND_DATA_SETS
  (CONDITION_DATA_SET_ID))
/

