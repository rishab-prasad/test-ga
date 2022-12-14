-- *********************************************************************
-- DDL for the Apicurio Registry - Database: H2
-- Upgrades the DB schema from version 10 to version 11.
-- *********************************************************************

UPDATE apicurio SET prop_value = 11 WHERE prop_name = 'db_version';

UPDATE artifactreferences SET groupId = '__$GROUPID$__' WHERE groupId IS NULL;

-- Delete FK for references
ALTER TABLE artifactreferences DROP CONSTRAINT FK_artifactreferences_2
