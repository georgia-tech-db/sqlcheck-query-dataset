CREATE TABLE IF NOT EXISTS cluster_nodes ( member_address VARCHAR(255) NOT NULL PRIMARY KEY )
CREATE TABLE snapshot ( persistence_id VARCHAR(255) NOT NULL, sequence_nr INTEGER(8) NOT NULL, created_at INTEGER(8) NOT NULL, manifest VARCHAR(255) NOT NULL, payload BLOB NOT NULL, PRIMARY KEY (persistence_id, sequence_nr) )
CREATE TABLE "event_journal" (	`ordering`	INTEGER NOT NULL,	`persistence_id`	VARCHAR ( 255 ) NOT NULL,	`sequence_nr`	INTEGER ( 8 ) NOT NULL,	`is_deleted`	INTEGER ( 1 ) NOT NULL,	`manifest`	VARCHAR ( 255 ),	`timestamp`	INTEGER NOT NULL,	`payload`	BLOB NOT NULL,	`tags`	VARCHAR ( 2000 ),	UNIQUE(`persistence_id`,`sequence_nr`),	PRIMARY KEY(`ordering`))
CREATE TABLE IF NOT EXISTS {conventions.FullJournalTableName} ( {conventions.OrderingColumnName} INTEGER PRIMARY KEY NOT NULL, {conventions.PersistenceIdColumnName} VARCHAR(255) NOT NULL, {conventions.SequenceNrColumnName} INTEGER(8) NOT NULL, {conventions.IsDeletedColumnName} INTEGER(1) NOT NULL, {conventions.ManifestColumnName} VARCHAR(255) NULL, {conventions.TimestampColumnName} INTEGER NOT NULL, {conventions.PayloadColumnName} BLOB NOT NULL, {conventions.TagsColumnName} VARCHAR(2000) NULL, {conventions.SerializerIdColumnName} INTEGER(4), UNIQUE ({conventions.PersistenceIdColumnName}, {conventions.SequenceNrColumnName}) )
CREATE TABLE IF NOT EXISTS {configuration.FullSnapshotTableName} ( {configuration.PersistenceIdColumnName} VARCHAR(255) NOT NULL, {configuration.SequenceNrColumnName} INTEGER(8) NOT NULL, {configuration.TimestampColumnName} INTEGER(8) NOT NULL, {configuration.ManifestColumnName} VARCHAR(255) NOT NULL, {configuration.PayloadColumnName} BLOB NOT NULL, {configuration.SerializerIdColumnName} INTEGER(4), PRIMARY KEY ({configuration.PersistenceIdColumnName}, {configuration.SequenceNrColumnName}) )
SELECT member_address from cluster_nodes
CREATE TABLE snapshot ( persistence_id VARCHAR(255) NOT NULL, sequence_nr INTEGER(8) NOT NULL, created_at INTEGER(8) NOT NULL, manifest VARCHAR(255) NOT NULL, payload BLOB NOT NULL, `Field6`	INTEGER, PRIMARY KEY (persistence_id, sequence_nr) )
CREATE TABLE IF NOT EXISTS {configuration.FullMetaTableName} ( {configuration.PersistenceIdColumnName} VARCHAR(255) NOT NULL, {configuration.SequenceNrColumnName} INTEGER(8) NOT NULL, PRIMARY KEY ({configuration.PersistenceIdColumnName}, {configuration.SequenceNrColumnName}) )
CREATE TABLE event_journal ( ordering INTEGER PRIMARY KEY NOT NULL, persistence_id VARCHAR(255) NOT NULL, sequence_nr INTEGER(8) NOT NULL, is_deleted INTEGER(1) NOT NULL, manifest VARCHAR(255) NULL, timestamp INTEGER NOT NULL, payload BLOB NOT NULL, tags VARCHAR(2000) NULL, UNIQUE (persistence_id, sequence_nr) )
CREATE TABLE IF NOT EXISTS {conventions.FullMetaTableName} ( {conventions.PersistenceIdColumnName} VARCHAR(255) NOT NULL, {conventions.SequenceNrColumnName} INTEGER(8) NOT NULL, PRIMARY KEY ({conventions.PersistenceIdColumnName}, {conventions.SequenceNrColumnName}) )
CREATE TABLE IF NOT EXISTS {configuration.FullJournalTableName} ( {configuration.OrderingColumnName} INTEGER PRIMARY KEY NOT NULL, {configuration.PersistenceIdColumnName} VARCHAR(255) NOT NULL, {configuration.SequenceNrColumnName} INTEGER(8) NOT NULL, {configuration.IsDeletedColumnName} INTEGER(1) NOT NULL, {configuration.ManifestColumnName} VARCHAR(255) NULL, {configuration.TimestampColumnName} INTEGER NOT NULL, {configuration.PayloadColumnName} BLOB NOT NULL, {configuration.TagsColumnName} VARCHAR(2000) NULL, {configuration.SerializerIdColumnName} INTEGER(4), UNIQUE ({configuration.PersistenceIdColumnName}, {configuration.SequenceNrColumnName}) )
CREATE TABLE "event_journal" (	`ordering`	INTEGER NOT NULL,	`persistence_id`	VARCHAR ( 255 ) NOT NULL,	`sequence_nr`	INTEGER ( 8 ) NOT NULL,	`is_deleted`	INTEGER ( 1 ) NOT NULL,	`manifest`	VARCHAR ( 255 ),	`timestamp`	INTEGER NOT NULL,	`payload`	BLOB NOT NULL,	`tags`	VARCHAR ( 2000 ), `serializer_id` INTEGER ( 4 ),	UNIQUE(`persistence_id`,`sequence_nr`),	PRIMARY KEY(`ordering`))
