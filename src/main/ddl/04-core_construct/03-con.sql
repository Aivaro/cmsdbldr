
PROMPT Creating Primary Key on 'PARTS_HST'
ALTER TABLE PARTS_HST
 ADD (CONSTRAINT PRTHST_PK PRIMARY KEY 
  (HISTORY_RECORD_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'KINDS_OF_PARTS'
ALTER TABLE KINDS_OF_PARTS
 ADD (CONSTRAINT KNDPRT_PK PRIMARY KEY 
  (KIND_OF_PART_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'PHYSICAL_PARTS_TREE_HST'
ALTER TABLE PHYSICAL_PARTS_TREE_HST
 ADD (CONSTRAINT PRTRHST_PK PRIMARY KEY 
  (HISTORY_RECORD_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'SIGNAL_CONNECTIONS'
ALTER TABLE SIGNAL_CONNECTIONS
 ADD (CONSTRAINT SGNCON_PK PRIMARY KEY 
  (CONNNECTION_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'KINDS_OF_PARTS_HST'
ALTER TABLE KINDS_OF_PARTS_HST
 ADD (CONSTRAINT KOPHST_PK PRIMARY KEY 
  (HISTORY_RECORD_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'PART_TO_ATTR_RLTNSHPS_HST'
ALTER TABLE PART_TO_ATTR_RLTNSHPS_HST
 ADD (CONSTRAINT PTAHST_PK PRIMARY KEY 
  (HISTORY_RECORD_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'SUBDETECTORS'
ALTER TABLE SUBDETECTORS
 ADD (CONSTRAINT SUBDET_PK PRIMARY KEY 
  (SUBDETECTOR_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'CONNECTORS'
ALTER TABLE CONNECTORS
 ADD (CONSTRAINT HCD_PK PRIMARY KEY 
  (CONNECTOR_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'PART_TO_PART_RLTNSHPS'
ALTER TABLE PART_TO_PART_RLTNSHPS
 ADD (CONSTRAINT PTPTRL_PK PRIMARY KEY 
  (RELATIONSHIP_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'MANUFACTURERS_HST'
ALTER TABLE MANUFACTURERS_HST
 ADD (CONSTRAINT MNFR_HST_PK PRIMARY KEY 
  (HISTORY_RECORD_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'PART_ATTR_LISTS'
ALTER TABLE PART_ATTR_LISTS
 ADD (CONSTRAINT PATLST_PK PRIMARY KEY 
  (ATTR_LIST_RECORD_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'SIGNAL_CONNECTION_TYPES'
ALTER TABLE SIGNAL_CONNECTION_TYPES
 ADD (CONSTRAINT SGCNTP_PK PRIMARY KEY 
  (SIGNAL_CONNECTION_TYPE_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'PART_TO_ATTR_RLTNSHPS'
ALTER TABLE PART_TO_ATTR_RLTNSHPS
 ADD (CONSTRAINT PTAREL_PK PRIMARY KEY 
  (RELATIONSHIP_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'PARTS'
ALTER TABLE PARTS
 ADD (CONSTRAINT PART_PK PRIMARY KEY 
  (PART_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'SIGNAL_CONNECTION_TYPES_HST'
ALTER TABLE SIGNAL_CONNECTION_TYPES_HST
 ADD (CONSTRAINT SGCNTH_PK PRIMARY KEY 
  (HISTORY_RECORD_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'SUBDETECTORS_HST'
ALTER TABLE SUBDETECTORS_HST
 ADD (CONSTRAINT SBDTHT_PK PRIMARY KEY 
  (HISTORY_RECORD_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'PHYSICAL_PARTS_TREE'
ALTER TABLE PHYSICAL_PARTS_TREE
 ADD (CONSTRAINT PRTTREE_PK PRIMARY KEY 
  (PART_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'CONNECTORS_HST'
ALTER TABLE CONNECTORS_HST
 ADD (CONSTRAINT CNRHST_PK PRIMARY KEY 
  (HISTORY_RECORD_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'MANUFACTURERS'
ALTER TABLE MANUFACTURERS
 ADD (CONSTRAINT MNFCTR_PK PRIMARY KEY 
  (MANUFACTURER_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'LOGICALPARTTYPES'
ALTER TABLE LOGICALPARTTYPES
 ADD (CONSTRAINT LOG_PK PRIMARY KEY 
  (LPNAME)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Primary Key on 'PART_TO_PART_RLTNSHPS_HST'
ALTER TABLE PART_TO_PART_RLTNSHPS_HST
 ADD (CONSTRAINT PTPHST_PK PRIMARY KEY 
  (HISTORY_RECORD_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/


PROMPT Creating Unique Key on 'PART_TO_PART_RLTNSHPS'
ALTER TABLE PART_TO_PART_RLTNSHPS
 ADD (CONSTRAINT PTPTRL_PTP_KOP_PAIR_UNQ_UK UNIQUE 
  (KIND_OF_PART_ID_CHILD
  ,KIND_OF_PART_ID))
/

PROMPT Creating Unique Key on 'PART_ATTR_LISTS'
ALTER TABLE PART_ATTR_LISTS
 ADD (CONSTRAINT P_ATRLST_PRTATTRLSTENTRY_UK UNIQUE 
  (ATTRIBUTE_ID
  ,RELATIONSHIP_ID
  ,PART_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Unique Key on 'PARTS'
ALTER TABLE PARTS
 ADD (CONSTRAINT PART_SERIAL_KOP_UK_UK UNIQUE 
  (SERIAL_NUMBER
  ,KIND_OF_PART_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA
  DISABLE)
/

PROMPT Creating Unique Key on 'PARTS'
ALTER TABLE PARTS
 ADD (CONSTRAINT PART_BARCODE_UK_UK UNIQUE 
  (BARCODE)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

PROMPT Creating Unique Key on 'PARTS'
ALTER TABLE PARTS
 ADD (CONSTRAINT PART_NAME_KOP_UK_UK UNIQUE 
  (NAME_LABEL
  ,KIND_OF_PART_ID)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA
  DISABLE)
/

PROMPT Creating Unique Key on 'PHYSICAL_PARTS_TREE'
ALTER TABLE PHYSICAL_PARTS_TREE
 ADD (CONSTRAINT PRTTREE_DDDNAME_UK UNIQUE 
  (DDD_PART_NAME)
 USING INDEX 
 TABLESPACE CMS_&det._PROCERNIT_DATA)
/

 
PROMPT Creating Check Constraint on 'PARTS_HST'
ALTER TABLE PARTS_HST
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_000 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'KINDS_OF_PARTS'
ALTER TABLE KINDS_OF_PARTS
 ADD (CONSTRAINT AVCON_1143145663_IS_IM_000 CHECK (IS_IMAGINARY_PART BETWEEN 'F' 
AND 'F' OR IS_IMAGINARY_PART BETWEEN 'T' AND 'T'))
/

PROMPT Creating Check Constraint on 'KINDS_OF_PARTS'
ALTER TABLE KINDS_OF_PARTS
 ADD (CONSTRAINT AVCON_1143145663_IS_DE_000 CHECK (IS_DETECTOR_PART BETWEEN 'F' 
AND 'F' OR IS_DETECTOR_PART BETWEEN 'T' AND 'T'))
/

PROMPT Creating Check Constraint on 'KINDS_OF_PARTS'
ALTER TABLE KINDS_OF_PARTS
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_001 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'PHYSICAL_PARTS_TREE_HST'
ALTER TABLE PHYSICAL_PARTS_TREE_HST
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_002 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'SIGNAL_CONNECTIONS'
ALTER TABLE SIGNAL_CONNECTIONS
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_003 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'KINDS_OF_PARTS_HST'
ALTER TABLE KINDS_OF_PARTS_HST
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_004 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/

PROMPT Creating Check Constraint on 'KINDS_OF_PARTS_HST'
ALTER TABLE KINDS_OF_PARTS_HST
 ADD (CONSTRAINT AVCON_1143145663_IS_IM_001 CHECK (IS_IMAGINARY_PART BETWEEN 'F' 
AND 'F' OR IS_IMAGINARY_PART BETWEEN 'T' AND 'T'))
/

PROMPT Creating Check Constraint on 'KINDS_OF_PARTS_HST'
ALTER TABLE KINDS_OF_PARTS_HST
 ADD (CONSTRAINT AVCON_1143145663_IS_DE_001 CHECK (IS_DETECTOR_PART BETWEEN 'F' 
AND 'F' OR IS_DETECTOR_PART BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'PART_TO_ATTR_RLTNSHPS_HST'
ALTER TABLE PART_TO_ATTR_RLTNSHPS_HST
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_005 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'SUBDETECTORS'
ALTER TABLE SUBDETECTORS
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_006 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'CONNECTORS'
ALTER TABLE CONNECTORS
 ADD (CONSTRAINT AVCON_1143145663_IS_IN_000 CHECK (IS_INPUT_SIGNAL_DIRECTION BETWEEN 'F' 
AND 'F' OR IS_INPUT_SIGNAL_DIRECTION BETWEEN 'T' AND 'T'))
/

PROMPT Creating Check Constraint on 'CONNECTORS'
ALTER TABLE CONNECTORS
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_008 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/

PROMPT Creating Check Constraint on 'CONNECTORS'
ALTER TABLE CONNECTORS
 ADD (CONSTRAINT AVCON_1143145663_IS_MA_000 CHECK (IS_MALE_SIDE BETWEEN 'F' AND 'F' OR IS_MALE_SIDE BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'PART_TO_PART_RLTNSHPS'
ALTER TABLE PART_TO_PART_RLTNSHPS
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_010 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'MANUFACTURERS_HST'
ALTER TABLE MANUFACTURERS_HST
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_011 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'PART_ATTR_LISTS'
ALTER TABLE PART_ATTR_LISTS
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_012 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'SIGNAL_CONNECTION_TYPES'
ALTER TABLE SIGNAL_CONNECTION_TYPES
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_013 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'PART_TO_ATTR_RLTNSHPS'
ALTER TABLE PART_TO_ATTR_RLTNSHPS
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_014 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'PARTS'
ALTER TABLE PARTS
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_016 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'SIGNAL_CONNECTION_TYPES_HST'
ALTER TABLE SIGNAL_CONNECTION_TYPES_HST
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_017 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'SUBDETECTORS_HST'
ALTER TABLE SUBDETECTORS_HST
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_018 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'PHYSICAL_PARTS_TREE'
ALTER TABLE PHYSICAL_PARTS_TREE
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_019 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'CONNECTORS_HST'
ALTER TABLE CONNECTORS_HST
 ADD (CONSTRAINT AVCON_1143145663_IS_IN_001 CHECK (IS_INPUT_SIGNAL_DIRECTION BETWEEN 'F' 
AND 'F' OR IS_INPUT_SIGNAL_DIRECTION BETWEEN 'T' AND 'T'))
/

PROMPT Creating Check Constraint on 'CONNECTORS_HST'
ALTER TABLE CONNECTORS_HST
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_020 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/

PROMPT Creating Check Constraint on 'CONNECTORS_HST'
ALTER TABLE CONNECTORS_HST
 ADD (CONSTRAINT AVCON_1143145663_IS_MA_001 CHECK (IS_MALE_SIDE BETWEEN 'F' AND 'F' OR IS_MALE_SIDE BETWEEN 'T' AND 'T'))
/
 
PROMPT Creating Check Constraint on 'MANUFACTURERS'
ALTER TABLE MANUFACTURERS
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_021 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/
  
PROMPT Creating Check Constraint on 'PART_TO_PART_RLTNSHPS_HST'
ALTER TABLE PART_TO_PART_RLTNSHPS_HST
 ADD (CONSTRAINT AVCON_1143145663_IS_RE_022 CHECK (IS_RECORD_DELETED BETWEEN 'F' 
AND 'F' OR IS_RECORD_DELETED BETWEEN 'T' AND 'T'))
/


PROMPT Creating Foreign Key on 'PARTS_HST'
ALTER TABLE PARTS_HST ADD (CONSTRAINT
 PRTHST_PART_FK FOREIGN KEY 
  (PART_ID) REFERENCES PARTS
  (PART_ID))
/

PROMPT Creating Foreign Key on 'KINDS_OF_PARTS'
ALTER TABLE KINDS_OF_PARTS ADD (CONSTRAINT
 KNDPRT_MNFCTR_FK FOREIGN KEY 
  (MANUFACTURER_ID) REFERENCES MANUFACTURERS
  (MANUFACTURER_ID))
/

PROMPT Creating Foreign Key on 'KINDS_OF_PARTS'
ALTER TABLE KINDS_OF_PARTS ADD (CONSTRAINT
 KNDPRT_SUBDET_FK FOREIGN KEY 
  (SUBDETECTOR_ID) REFERENCES SUBDETECTORS
  (SUBDETECTOR_ID))
/

PROMPT Creating Foreign Key on 'KINDS_OF_PARTS'
ALTER TABLE KINDS_OF_PARTS ADD (CONSTRAINT
 KNDPRT_LOG_FK FOREIGN KEY 
  (LPNAME) REFERENCES LOGICALPARTTYPES
  (LPNAME) DISABLE)
/

PROMPT Creating Foreign Key on 'PHYSICAL_PARTS_TREE_HST'
ALTER TABLE PHYSICAL_PARTS_TREE_HST ADD (CONSTRAINT
 PRTRHST_PRTTREE_FK FOREIGN KEY 
  (PART_ID) REFERENCES PHYSICAL_PARTS_TREE
  (PART_ID))
/

PROMPT Creating Foreign Key on 'SIGNAL_CONNECTIONS'
ALTER TABLE SIGNAL_CONNECTIONS ADD (CONSTRAINT
 SGNCON_PART_CABLE_FK FOREIGN KEY 
  (CABLE_PART_ID) REFERENCES PARTS
  (PART_ID))
/

PROMPT Creating Foreign Key on 'SIGNAL_CONNECTIONS'
ALTER TABLE SIGNAL_CONNECTIONS ADD (CONSTRAINT
 SGNCON_HCD_FK FOREIGN KEY 
  (CONNECTOR_BEGIN_SIDE_ID) REFERENCES CONNECTORS
  (CONNECTOR_ID))
/

PROMPT Creating Foreign Key on 'SIGNAL_CONNECTIONS'
ALTER TABLE SIGNAL_CONNECTIONS ADD (CONSTRAINT
 SGNCON_PART_FK FOREIGN KEY 
  (PART_BEGIN_SIDE_ID) REFERENCES PARTS
  (PART_ID))
/

PROMPT Creating Foreign Key on 'SIGNAL_CONNECTIONS'
ALTER TABLE SIGNAL_CONNECTIONS ADD (CONSTRAINT
 SGNCON_PART_END_SIDE_FK FOREIGN KEY 
  (PART_END_SIDE_ID) REFERENCES PARTS
  (PART_ID))
/

PROMPT Creating Foreign Key on 'SIGNAL_CONNECTIONS'
ALTER TABLE SIGNAL_CONNECTIONS ADD (CONSTRAINT
 SGNCON_SGCNTP_FK FOREIGN KEY 
  (SIGNAL_CONNECTION_TYPE_ID) REFERENCES SIGNAL_CONNECTION_TYPES
  (SIGNAL_CONNECTION_TYPE_ID))
/

PROMPT Creating Foreign Key on 'SIGNAL_CONNECTIONS'
ALTER TABLE SIGNAL_CONNECTIONS ADD (CONSTRAINT
 SGNCON_HCD_END_SIDE_FK FOREIGN KEY 
  (CONNECTOR_END_SIDE_ID) REFERENCES CONNECTORS
  (CONNECTOR_ID))
/

PROMPT Creating Foreign Key on 'KINDS_OF_PARTS_HST'
ALTER TABLE KINDS_OF_PARTS_HST ADD (CONSTRAINT
 KOPHST_KNDPRT_FK FOREIGN KEY 
  (KIND_OF_PART_ID) REFERENCES KINDS_OF_PARTS
  (KIND_OF_PART_ID))
/

PROMPT Creating Foreign Key on 'PART_TO_ATTR_RLTNSHPS_HST'
ALTER TABLE PART_TO_ATTR_RLTNSHPS_HST ADD (CONSTRAINT
 PTAHST_PTAREL_FK FOREIGN KEY 
  (RELATIONSHIP_ID) REFERENCES PART_TO_ATTR_RLTNSHPS
  (RELATIONSHIP_ID))
/

PROMPT Creating Foreign Key on 'CONNECTORS'
ALTER TABLE CONNECTORS ADD (CONSTRAINT
 HCD_PART_FK FOREIGN KEY 
  (PART_ID) REFERENCES PARTS
  (PART_ID))
/

PROMPT Creating Foreign Key on 'PART_TO_PART_RLTNSHPS'
ALTER TABLE PART_TO_PART_RLTNSHPS ADD (CONSTRAINT
 PTPTRL_KNDPRT_FK FOREIGN KEY 
  (KIND_OF_PART_ID_CHILD) REFERENCES KINDS_OF_PARTS
  (KIND_OF_PART_ID))
/

PROMPT Creating Foreign Key on 'PART_TO_PART_RLTNSHPS'
ALTER TABLE PART_TO_PART_RLTNSHPS ADD (CONSTRAINT
 PTPTRL_KNDPRT_PARENT_FK FOREIGN KEY 
  (KIND_OF_PART_ID) REFERENCES KINDS_OF_PARTS
  (KIND_OF_PART_ID))
/

PROMPT Creating Foreign Key on 'MANUFACTURERS_HST'
ALTER TABLE MANUFACTURERS_HST ADD (CONSTRAINT
 MNFR_HST_MNFCTR_FK FOREIGN KEY 
  (MANUFACTURER_ID) REFERENCES MANUFACTURERS
  (MANUFACTURER_ID))
/

PROMPT Creating Foreign Key on 'PART_ATTR_LISTS'
ALTER TABLE PART_ATTR_LISTS ADD (CONSTRAINT
 PATLST_PTAREL_FK FOREIGN KEY 
  (RELATIONSHIP_ID) REFERENCES PART_TO_ATTR_RLTNSHPS
  (RELATIONSHIP_ID))
/

PROMPT Creating Foreign Key on 'PART_ATTR_LISTS'
ALTER TABLE PART_ATTR_LISTS ADD (CONSTRAINT
 PATLST_PART_FK FOREIGN KEY 
  (PART_ID) REFERENCES PARTS
  (PART_ID))
/

PROMPT Creating Foreign Key on 'PART_ATTR_LISTS'
ALTER TABLE PART_ATTR_LISTS ADD (CONSTRAINT
 PATLST_ATRBSE_FK FOREIGN KEY 
  (ATTRIBUTE_ID) REFERENCES CMS_&det._CORE_ATTRIBUTE.ATTR_BASES
  (ATTRIBUTE_ID))
/

PROMPT Creating Foreign Key on 'SIGNAL_CONNECTION_TYPES'
ALTER TABLE SIGNAL_CONNECTION_TYPES ADD (CONSTRAINT
 SGCNTP_KNDPRT_END_SIDE_FK FOREIGN KEY 
  (KIND_OF_PART_END_SIDE_ID) REFERENCES KINDS_OF_PARTS
  (KIND_OF_PART_ID))
/

PROMPT Creating Foreign Key on 'SIGNAL_CONNECTION_TYPES'
ALTER TABLE SIGNAL_CONNECTION_TYPES ADD (CONSTRAINT
 SGCNTP_KNDPRT_FK FOREIGN KEY 
  (KIND_OF_PART_BEGIN_SIDE_ID) REFERENCES KINDS_OF_PARTS
  (KIND_OF_PART_ID))
/

PROMPT Creating Foreign Key on 'PART_TO_ATTR_RLTNSHPS'
ALTER TABLE PART_TO_ATTR_RLTNSHPS ADD (CONSTRAINT
 PTAREL_ATRCTG_FK FOREIGN KEY 
  (ATTR_CATALOG_ID) REFERENCES CMS_&det._CORE_ATTRIBUTE.ATTR_CATALOGS
  (ATTR_CATALOG_ID))
/

PROMPT Creating Foreign Key on 'PART_TO_ATTR_RLTNSHPS'
ALTER TABLE PART_TO_ATTR_RLTNSHPS ADD (CONSTRAINT
 PTAREL_KNDPRT_FK FOREIGN KEY 
  (KIND_OF_PART_ID) REFERENCES KINDS_OF_PARTS
  (KIND_OF_PART_ID))
/

PROMPT Creating Foreign Key on 'PARTS'
ALTER TABLE PARTS ADD (CONSTRAINT
 PART_LOCATN_FK FOREIGN KEY 
  (LOCATION_ID) REFERENCES CMS_&det._CORE_MANAGEMNT.LOCATIONS
  (LOCATION_ID))
/

PROMPT Creating Foreign Key on 'PARTS'
ALTER TABLE PARTS ADD (CONSTRAINT
 PART_MNFCTR_FK FOREIGN KEY 
  (MANUFACTURER_ID) REFERENCES MANUFACTURERS
  (MANUFACTURER_ID))
/

PROMPT Creating Foreign Key on 'PARTS'
ALTER TABLE PARTS ADD (CONSTRAINT
 PART_KNDPRT_FK FOREIGN KEY 
  (KIND_OF_PART_ID) REFERENCES KINDS_OF_PARTS
  (KIND_OF_PART_ID))
/

PROMPT Creating Foreign Key on 'SIGNAL_CONNECTION_TYPES_HST'
ALTER TABLE SIGNAL_CONNECTION_TYPES_HST ADD (CONSTRAINT
 SGCNTH_SGCNTP_FK FOREIGN KEY 
  (SIGNAL_CONNECTION_TYPE_ID) REFERENCES SIGNAL_CONNECTION_TYPES
  (SIGNAL_CONNECTION_TYPE_ID))
/

PROMPT Creating Foreign Key on 'SUBDETECTORS_HST'
ALTER TABLE SUBDETECTORS_HST ADD (CONSTRAINT
 SBDTHT_SUBDET_FK FOREIGN KEY 
  (SUBDETECTOR_ID) REFERENCES SUBDETECTORS
  (SUBDETECTOR_ID))
/

PROMPT Creating Foreign Key on 'PHYSICAL_PARTS_TREE'
ALTER TABLE PHYSICAL_PARTS_TREE ADD (CONSTRAINT
 PRTTREE_PRTTREE_FK FOREIGN KEY 
  (PART_PARENT_ID) REFERENCES PHYSICAL_PARTS_TREE
  (PART_ID))
/

PROMPT Creating Foreign Key on 'PHYSICAL_PARTS_TREE'
ALTER TABLE PHYSICAL_PARTS_TREE ADD (CONSTRAINT
 PRTTREE_PTPTRL_FK FOREIGN KEY 
  (RELATIONSHIP_ID) REFERENCES PART_TO_PART_RLTNSHPS
  (RELATIONSHIP_ID))
/

PROMPT Creating Foreign Key on 'PHYSICAL_PARTS_TREE'
ALTER TABLE PHYSICAL_PARTS_TREE ADD (CONSTRAINT
 PRTTREE_PART_FK FOREIGN KEY 
  (PART_ID) REFERENCES PARTS
  (PART_ID))
/

PROMPT Creating Foreign Key on 'CONNECTORS_HST'
ALTER TABLE CONNECTORS_HST ADD (CONSTRAINT
 CNRHST_HCD_FK FOREIGN KEY 
  (CONNECTOR_ID) REFERENCES CONNECTORS
  (CONNECTOR_ID))
/

PROMPT Creating Foreign Key on 'PART_TO_PART_RLTNSHPS_HST'
ALTER TABLE PART_TO_PART_RLTNSHPS_HST ADD (CONSTRAINT
 PTPHST_PTPTRL_FK FOREIGN KEY 
  (RELATIONSHIP_ID) REFERENCES PART_TO_PART_RLTNSHPS
  (RELATIONSHIP_ID))
/


