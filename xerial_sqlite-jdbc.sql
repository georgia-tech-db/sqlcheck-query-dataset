select * from foo
select * from people;
CREATE TABLE `Pk11` (`Col1`, `Col2`, `Col3`, `Col4`, CONSTRAINT `NamedPk` PRIMARY KEY(`Col3`, `Col2`))
insert into trigtest values (5)
insert into foo values(?)
CREATE TABLE x(%s %Q HIDDEN, docid HIDDEN, %Q HIDDEN)
insert into batch values (7)
create table person (id integer)
UPDATE sqlite_temp_master SET sql = sqlite_rename_table WHERE type IN (view, trigger)
select c1, c3 from t1;");
insert into user values('frank', json_array('704-200-0000','604-200-0000'))
CREATE TABLE x(%s   %s, %s  %s)
select * from t;
create table person ( id integer, name string)
insert into big values(json_object('a',2,'c',4))
insert into t2 values (1)
CREATE TABLE `TabCols3` (`Col1`, `Col2`)
select * from test;
UPDATE sqlite_temp_master SET sql = sqlite_rename_table WHERE type IN (view, trigger)   SELECT 1 FROM temp.%s WHERE name NOT LIKE sqlite_%% AND sql NOT LIKE create virtual%% AND sqlite_rename_test(%Q, sql, type, name, 1)
create table child2 (id1 integer, id2 integer, foreign key(id2, id1) references parent(id2, id1))
insert into person values(1, 'leo')
CREATE TABLE x( %z%s%Q %z, %Q HIDDEN, %s HIDDEN)
CREATE TABLE %Q.'%q_content'(%s)
CREATE TABLE x( %z%s%Q %z, %Q HIDDEN, %s HIDDEN)
create table tbl2(col int)
insert into t values (4)
SELECT count(*) FROM %Q.'%q_%s' SELECT %s   no such function: %s    %lld %lld   offsets %d %d %d %d     <b>...</b>  </b>    <b> snippet compress    uncompress  _content    __langid    unrecognized matchinfo: %s  asc desc    unrecognized order: %s  unrecognized parameter: %s  missing %s parameter in fts4 constructor    docid   ,%s(x.'c%d%q')  , x.%Q  , x.'%q'     FROM '%q'.'%q%s' AS x  ,%s(?)  , ? docid INTEGER PRIMARY KEY   %z, 'c%d%q' %z, langid  CREATE TABLE %Q.'%q_content'(%s)    CREATE TABLE %Q.'%q_segments'(blockid INTEGER PRIMARY KEY, block BLOB); CREATE TABLE %Q.'%q_segdir'(level INTEGER,idx INTEGER,start_block INTEGER,leaves_end_block INTEGER,end_block INTEGER,root BLOB,PRIMARY KEY(level, idx));    CREATE TABLE %Q.'%q_docsize'(docid INTEGER PRIMARY KEY, size BLOB); PRAGMA %Q.page_size %Q,     %z%Q
CREATE TABLE x( id INTEGER PRIMARY KEY  , c%d   k PRIMARY KEY, v    id INTEGER PRIMARY KEY, sz BLOB %z%s%Q  %z, %Q HIDDEN, %s HIDDEN)
select colid from tbl where col = ?
create table in1000 (a)
create table t1 (c1 integer)
select * from t
CREATE TABlE vocab(term, col, doc, cnt)
SELECT * FROM %Q.%Q UNIQUE constraint failed: %s.%s rtree constraint failed: %s.(%s<=%s) INSERT INTO '%q'.'%q_idx'(segid,term,pgno) VALUES(?,?,?) SELECT %s WHERE rowid = ? SELECT rowid, rank FROM %Q.%Q ORDER BY %s(%s%s%s) %s sqlite_stat%d DELETE FROM %Q.%s WHERE %s=%Q DELETE FROM %Q.%s WHERE name=%Q AND type='trigger' UPDATE %Q.%s SET rootpage=%d WHERE #%d AND rootpage=#%d sqlite_stat table %s may not be dropped use DROP TABLE to delete table %s use DROP VIEW to delete view %s DELETE FROM %Q.sqlite_sequence WHERE name=%Q DELETE FROM %Q.%s WHERE tbl_name=%Q and type!='trigger'  UNIQUE cannot create a TEMP index on non-TEMP table "%s" altertab_ table %s may not be indexed views may not be indexed virtual tables may not be indexed there is already a table named %s index %s already exists sqlite_autoindex_%s_%d expressions prohibited in PRIMARY KEY and UNIQUE constraints conflicting ON CONFLICT clauses specified CREATE%s INDEX %.*s INSERT INTO %Q.%s VALUES('index',%Q,%Q,#%d,%Q);
CREATE TABLE TABLE1 (ID1 INTEGER PRIMARY KEY AUTOINCREMENT, ID2 INTEGER)
update s1 set c1 = 23  where c1 = 13
insert into artist values(10, 'leo')
insert into foo values(1)
CREATE TABLE CHILD1 (ID1 INTEGER, DATA2 INTEGER, FOREIGN KEY(ID1) REFERENCES PARENT1(ID1))
insert into message values(1, 'Hello')
CREATE TABLE CHILD2 (ID2 INTEGER, CONSTRAINT FK_PARENT2 FOREIGN KEY(ID2) REFERENCES PARENT1(ID2))
select * from doesnotexist;
create table foo (id integer, CONSTRAINT U_ID UNIQUE (id))
insert into t values (8)
insert into person values(1,'leo')
select c1 from t;
SELECT name, rootpage, sql FROM '%q'.%s WHERE %s ORDER BY rowid too many levels of trigger recursion cannot change %s wal mode from within a transaction into out of database table is locked: %s statement aborts at %d: [%s] %s cannot VACUUM from within a transaction cannot VACUUM - SQL statements in progress ATTACH''AS vacuum_db SELECT sql FROM "%w".sqlite_master WHERE type='table'AND name<>'sqlite_sequence' AND coalesce(rootpage,1)>0 SELECT sql FROM "%w".sqlite_master WHERE type='index' AND length(sql)>10 SELECT'INSERT INTO vacuum_db.'||quote(name)||' SELECT*FROM"%w".'||quote(name)FROM vacuum_db.sqlite_master WHERE type='table'AND coalesce(rootpage,1)>0 INSERT INTO vacuum_db.sqlite_master SELECT*FROM "%w".sqlite_master WHERE type IN('view','trigger') OR(type='table'AND rootpage=0) Main freelist:  Page %d is never used Pointer map page %d is referenced Page %d:  unable to get the page. error code=%d btreeInitPage() returns error code %d On tree page %d cell %d:  On page %d at right chil
create table test (id integer primary key, fn float default 0.0, sn not null)
create table trans (c1)
CREATE TABLE x(type text,name text,tbl_name text,rootpage int,sql text)
CREATE TABLE PARENT4 (ID4 INTEGER, DATA4 INTEGER, CONSTRAINT PK_PARENT4 PRIMARY KEY (ID4))
UPDATE sqlite_temp_master SET sql = sqlite_rename_table WHERE type IN (view, trigger) object name reserved for internal use: %s sqlite_% BBB stat_get %llu  %llu stat_push stat_init tbl,idx,stat sqlite_stat3 sqlite_stat4 CREATE TABLE %Q.%s(%s) DELETE FROM %Q.%s WHERE %s=%Q unable to open a temporary database file for storing temporary tables corrupt database unknown database %T unable to identify the object to be reindexed index %q misuse of aggregate: %s() unknown function: %s() %d columns assigned %d values RAISE()
UPDATE sqlite_temp_master SET sql = sqlite_rename_table WHERE type IN (view, trigger)
CREATE TABLE PARENT2 (ID2 INTEGER, DATA2 INTEGER, CONSTRAINT PK_PARENT2 PRIMARY KEY (ID2))
insert into trans values (4)
CREATE TABLE x(%s %Q HIDDEN, docid HIDDEN, %Q HIDDEN)
insert into day values(?)
CREATE TABlE vocab(term, col, doc, cnt)
CREATE TABlE vocab(term, col, doc, cnt)
insert into s1 values (12)
CREATE TABLE PARENT1 (ID1 INTEGER, DATA1 INTEGER, CONSTRAINT PK_PARENT PRIMARY KEY (ID1))
SELECT * FROM %Q.%Q     UNIQUE constraint failed: %s.%s rtree constraint failed: %s.(%s<=%s)    INSERT INTO '%q'.'%q_idx'(segid,term,pgno) VALUES(?,?,?)        SELECT %s WHERE rowid = ?       SELECT rowid, rank FROM %Q.%Q ORDER BY %s(%s%s%s) %s    sqlite_stat%d   DELETE FROM %Q.%s WHERE %s=%Q   DELETE FROM %Q.%s WHERE name=%Q AND type='trigger'      UPDATE %Q.%s SET rootpage=%d WHERE #%d AND rootpage=#%d sqlite_stat     table %s may not be dropped     use DROP TABLE to delete table %s       use DROP VIEW to delete view %s DELETE FROM %Q.sqlite_sequence WHERE name=%Q    DELETE FROM %Q.%s WHERE tbl_name=%Q and type!='trigger'  UNIQUE cannot create a TEMP index on non-TEMP table "%s"       altertab_       table %s may not be indexed     views may not be indexed        virtual tables may not be indexed       there is already a table named %s       index %s already exists sqlite_autoindex_%s_%d  expressions prohibited in PRIMARY KEY and UNIQUE constraints    conflicting ON CONFLICT clauses 
SELECT %s FROM %s AS T SELECT %s no such function: %s PRAGMA %Q.data_version %lld %lld SELECT %s WHERE rowid = ? %d %d %d %d  <b> <b>...</b> no such fts5 table: %s.%s %_rowid %_parent Rtree depth out of range (%d) SELECT * FROM %Q.'%q_rowid' SELECT * FROM %Q.%Q END CREATE TABLE x(%s ,%s );
insert into batch values (2)
CREATE TABLE x( %z%s%Q %z, %Q HIDDEN, %s HIDDEN)
select sum(c1) from t;
CREATE TABLE TAB2 (COL1 INTEGER NOT NULL PRIMARY KEY, COL2)
select * from trans;";
SELECT 1 FROM "%w".%s WHERE name NOT LIKE 'sqlite_%%' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, %d)=NULL  SELECT 1 FROM temp.%s WHERE name NOT LIKE 'sqlite_%%' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, 1)=NULL  CREATE VIRTUAL TABLE %T UPDATE %Q.%s SET type='table', name=%Q, tbl_name=%Q, rootpage=0, sql=%Q WHERE rowid=#%d name='%q' AND type='table' CREATE TABLE x %c"%s" ("%s" ,arg HIDDEN ,schema HIDDEN CREATE TABlE vocab(term, col, doc, cnt) CREATE TABlE vocab(term, doc, cnt) CREATE TABlE vocab(term, doc, col, offset) wrong number of vtable arguments row instance fts5vocab: unknown table type: %Q CREATE TABLE x(term, col, documents, occurrences, languageid HIDDEN) invalid arguments to fts4aux constructor simple CREATE TABLE x(input, token, start, end, position) CREATE TABLE x(key,value,type,atom,id,parent,fullkey,path,json HIDDEN,root HIDDEN) too many attached databases - max %d database %s is already in use dat
insert into tbl values(100)
create table T (id integer, data blob)
insert into user values('sally', '604-200-0000')
CREATE TABLE x(type text,name text,tbl_name text,rootpage int,sql text)
CREATE TABlE vocab(term, col, doc, cnt)
insert into A values(1, 'leo')
create table parent (id1 integer, id2 integer, primary key(id1, id2))
insert into sample values(?)
CREATE TABLE x( %z%s%Q %z, %Q HIDDEN, %s HIDDEN)
insert into T values(1, ?)
CREATE TABLE x(key,value,type,atom,id,parent,fullkey,path,json HIDDEN,root HIDDEN)
CREATE TABLE x(%s   ,%s )
select sum(col) from foo;
SELECT name, rootpage, sql FROM "%w".%s ORDER BY rowid sqlite_stat1 SELECT tbl,idx,stat FROM %Q.sqlite_stat1 unordered* sz=[0-9]* noskipscan* create  invalid rootpage ? malformed database schema (%s) %z - %s misuse unable to delete/modify collation sequence due to active statements NOCASE RTRIM      json json_array json_array_length json_extract json_insert json_object json_patch json_quote json_remove json_replace json_set json_type json_valid json_group_array json_group_object json_each json_tree [%d] .%.*s $ null true false integer real text array object 0123456789abcdef JSON cannot hold BLOB values malformed JSON JSON path error near '%q' [0] CREATE TABLE x(key,value,type,atom,id,parent,fullkey,path,json HIDDEN,root HIDDEN) {} [] replace json_%s() needs an odd number of arguments json_object() requires an even number of arguments json_object() labels must be TEXT set insert rtreenode rtreedepth rtreecheck rtree rtree_i32 ALTER TABLE %Q.'%q_node' RENAME TO "%w_node";ALTER TABLE %Q.'
CREATE TABLE %Q.'%q_%q'(%s)
SELECT * FROM %Q.%Q   UNIQUE constraint failed: %s.%s rtree constraint failed: %s.(%s<=%s)    INSERT INTO '%q'.'%q_idx'(segid,term,pgno) VALUES(?,?,?)        SELECT %s FROM %s T WHERE T.%Q >= ? AND T.%Q <= ? ORDER BY T.%Q ASC     SELECT %s FROM %s T WHERE T.%Q <= ? AND T.%Q >= ? ORDER BY T.%Q DESC    SELECT %s FROM %s T WHERE T.%Q=?        INSERT INTO %Q.'%q_content' VALUES(%s)  REPLACE INTO %Q.'%q_content' VALUES(%s) DELETE FROM %Q.'%q_content' WHERE id=?  REPLACE INTO %Q.'%q_docsize' VALUES(?,?)        DELETE FROM %Q.'%q_docsize' WHERE id=?  SELECT sz FROM %Q.'%q_docsize' WHERE id=?       REPLACE INTO %Q.'%q_config' VALUES(?,?) SELECT %s FROM %s AS T  SShSRRSSSSSIR    DELETE FROM %Q.'%q_content' WHERE rowid = ?     SELECT NOT EXISTS(SELECT docid FROM %Q.'%q_content' WHERE rowid!=?) DELETE FROM %Q.'%q_content' DELETE FROM %Q.'%q_segments' DELETE FROM %Q.'%q_segdir' DELETE FROM %Q.'%q_docsize' DELETE FROM %Q.'%q_stat' SELECT %s WHERE rowid=?    SELECT (SELECT max(idx) FROM %Q.'%q_segdi
CREATE TABLE %Q.'%q_%q'(%s)
CREATE TABLE %Q.'%q_%q'(%s)
select * from tbl2
UPDATE sqlite_temp_master SET sql = sqlite_rename_table WHERE type IN (view, trigger)
insert into person values(2, 'yui','Y')
select * from A
insert into person values(1, 'leo','L')
select * from coordinate
CREATE TABLE x(%s %Q HIDDEN, docid HIDDEN, %Q HIDDEN)
insert into batch values (4)
insert into track values(1, 'first track', 10)
SELECT name, rootpage, sql FROM '%q'.%s WHERE %s ORDER BY rowid Main freelist:  max rootpage (%d) disagrees with header (%d)    incremental_vacuum enabled with a max rootpage of zero Page %d is never used    Pointer map page %d is referenced   too many levels of trigger recursion    cannot change %s wal mode from within a transaction cannot VACUUM from within a transaction cannot VACUUM - SQL statements in progress ATTACH''AS vacuum_db BEGIN   SELECT sql FROM "%w".sqlite_master WHERE type='table'AND name<>'sqlite_sequence' AND coalesce(rootpage,1)>0 SELECT sql FROM "%w".sqlite_master WHERE type='index'   SELECT'INSERT INTO vacuum_db.'||quote(name)||' SELECT*FROM"%w".'||quote(name)FROM vacuum_db.sqlite_master WHERE type='table'AND coalesce(rootpage,1)>0  INSERT INTO vacuum_db.sqlite_master SELECT*FROM "%w".sqlite_master WHERE type IN('view','trigger') OR(type='table'AND rootpage=0) database table is locked: %s -- %s    statement aborts at %d: [%s] %s G0dF0dZF0d3J0dI0dI0d/I0d H0dS0dp@0d
CREATE TABLE TAB3 (COL1 INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT, COL2)
insert into s1 values (?)
create index testindex_idx on testindex (sn, fn/2);
insert into mxp values(2,1,'T')
CREATE TABLE x(%s %Q HIDDEN, docid HIDDEN, %Q HIDDEN)
insert into test values (1, 'description', 'bar')
SELECT ID1, ID2 FROM TABLE1");
CREATE TABlE vocab(term, col, doc, cnt)
create table referring (id, foreign key references referred)
select * from tab;
create table " + table + "(id)
CREATE TABLE x(%s %s, %s %s)
insert into tab values (2, 'John', 'Smith')
CREATE TABLE x(term, col, documents, occurrences, languageid HIDDEN)
CREATE TABLE "%w"."%w_rowid"(rowid INTEGER PRIMARY KEY,nodeno   )
create table tbl (col int)
insert into batch values (9)
select sum(c1) from test;
select * from t1;
CREATE TABLE x(term, col, documents, occurrences, languageid HIDDEN)
create table t2 (c2)
create table day (time datatime)
CREATE TABLE %Q.%s(%s)
SELECT 1 FROM "%w".%s WHERE name NOT LIKE 'sqlite_%%' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, %d)=NULL  SELECT 1 FROM temp.%s WHERE name NOT LIKE 'sqlite_%%' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, 1)=NULL  CREATE VIRTUAL TABLE %T  UPDATE %Q.%s SET type='table', name=%Q, tbl_name=%Q, rootpage=0, sql=%Q WHERE rowid=#%d name='%q' AND type='table' CREATE TABLE x ("%s" %c"%s" ,arg HIDDEN ,schema HIDDEN col row instance  CREATE TABlE vocab(term, col, doc, cnt) CREATE TABlE vocab(term, doc, cnt)  CREATE TABlE vocab(term, doc, col, offset)  wrong number of vtable arguments    fts5vocab: unknown table type: %Q   CREATE TABLE x(term, col, documents, occurrences, languageid HIDDEN)    invalid arguments to fts4aux constructor simple CREATE TABLE x(input, token, start, end, position)  CREATE TABLE x(key,value,type,atom,id,parent,fullkey,path,json HIDDEN,root HIDDEN)  too many attached databases - max %d database %s is 
CREATE TABLE TABLE2 (ID2 INTEGER, DATA2 VARCHAR(20))
CREATE TABlE vocab(term, col, doc, cnt)
SELECT name FROM user WHERE phone LIKE '705-%'
insert into batch values (3)
create table sample (start_time datetime)
select 1 from sqlite_master
create table foo (col integer)
CREATE TABLE blobs (Blob BLOB)
CREATE TABLE %Q.'%q_content'(%s)
SELECT docid FROM %Q.'%q_content' WHERE rowid!=?) DELETE FROM %Q.'%q_content' DELETE FROM %Q.'%q_segments' DELETE FROM %Q.'%q_segdir' DELETE FROM %Q.'%q_docsize' DELETE FROM %Q.'%q_stat' SELECT %s WHERE rowid=? SELECT (SELECT max(idx) FROM %Q.'%q_segdir' WHERE level = ?) + 1 REPLACE INTO %Q.'%q_segments'(blockid, block) VALUES(?, ?) SELECT coalesce((SELECT max(blockid) FROM %Q.'%q_segments') + 1, 1) REPLACE INTO %Q.'%q_segdir' VALUES(?,?,?,?,?,?) SELECT idx, start_block, leaves_end_block, end_block, root FROM %Q.'%q_segdir' WHERE level = ? ORDER BY idx ASC SELECT idx, start_block, leaves_end_block, end_block, root FROM %Q.'%q_segdir' WHERE level BETWEEN ? AND ?ORDER BY level DESC, idx ASC SELECT count(*) FROM %Q.'%q_segdir' WHERE level = ? SELECT max(level) FROM %Q.'%q_segdir' WHERE level BETWEEN ? AND ? DELETE FROM %Q.'%q_segdir' WHERE level = ? DELETE FROM %Q.'%q_segments' WHERE blockid BETWEEN ? AND ? INSERT INTO %Q.'%q_content' VALUES(%s) DELETE FROM %Q.'%q_docsiz
insert into t values (5)
CREATE TABLE TAB1 (COL1 INTEGER NOT NULL PRIMARY KEY, COL2)
CREATE TABlE vocab(term, col, doc, cnt)
CREATE TABLE `Pk12` (`Col1`, `Col2`, `Col3`, `Col4`, CONSTRAINT`NamedPk`PRIMARY KEY(`Col3`,`Col2`))
CREATE TABLE `Pk6` (`Col1`, `Col2`, `Col3`, `Col4`, CONSTRAINT `NamedPk` PRIMARY KEY (`Col3`, `Col2`))
create table t1 (c1, c2, c3)
insert into message values(2, 'World')
insert into test values (2)
create table test (id integer primary key, fn, sn)
CREATE TABLE x(type text,name text,tbl_name text,rootpage int,sql text)
CREATE TABLE x(key,value,type,atom,id,parent,fullkey,path,json HIDDEN,root HIDDEN)
create table pk1 (col1 primary key, col2, col3)
CREATE TABLE "%w"."%w_node"(nodeno INTEGER PRIMARY KEY, data BLOB)
CREATE TABLE x(term, col, documents, occurrences, languageid HIDDEN)
create table tabcols1 (col1, col2)
insert into mxp values(3,2,'T')
insert into t1 values (4)
CREATE TABLE Pk5 (Col1, Col2, Col3, Col4, CONSTRAINT NamedPk PRIMARY KEY (Col3, Col2))
insert into trans values (3)
SELECT COUNT(fid) FROM data
select rowid, name, ingredients from recipe where ingredients match 'onions'
create table tbl (colid integer primary key AUTOINCREMENT, col varchar)
create table foo (id integer)
CREATE TABLE Parent2 (Id1 INTEGER, DATA1 INTEGER, PRIMARY KEY (Id1))
create table t (c text)
create table sample(id integer primary key autoincrement, name)
create table batch (c1)
SELECT stat FROM %Q.sqlite_stat1 WHERE tbl = '%q_rowid' SELECT * FROM "%w"."%w_rowid" WHERE rowid=?1    UPDATE "%w"."%w_rowid"SET    WHERE rowid=?1 a%d=coalesce(?%d,a%d)   a%d=?%d PRAGMA %Q.page_size SELECT length(data) FROM '%q'.'%q_node' WHERE nodeno = 1    undersize RTree blobs in "%q_node"  CREATE TABLE "%w"."%w_rowid"(rowid INTEGER PRIMARY KEY,nodeno   %_rowid %_parent    Mapping (%lld -> %lld) missing from %s table    Found (%lld -> %lld) in %s table, expected (%lld -> %lld)   SELECT count(*) FROM %Q.'%q%s'  Wrong number of entries in %%%s table - expected %lld, actual %lld  SELECT count(*) FROM %Q.'%q_%s' SELECT data FROM %Q.'%q_node' WHERE nodeno=?    Node %lld missing from database Node %lld is too small (%d bytes)   Rtree depth out of range (%d)   Node %lld is too small for cell count of %d (%d bytes)  Dimension %d of cell %d on node %lld is corrupt Dimension %d of cell %d on node %lld is corrupt relative to parent  wrong number of arguments to function rtreecheck()  SELECT *
CREATE TABLE x(term, col, documents, occurrences, languageid HIDDEN)
create table artist(id integer primary key, name)
create table t (c)
CREATE TABLE %Q.sqlite_sequence(name,seq)
select count(*) from batch;
create table test (c1)
UPDATE sqlite_temp_master SET sql = sqlite_rename_table WHERE type IN (view, trigger)
insert into person values(2, 'yui')
insert into foo values (1)
CREATE TABLE pk7 (col1, col2, col3, col4 VARCHAR(10),PRIMARY KEY (col1, col2, col3))
CREATE TABLE IF NOT EXISTS %Q.'%q_stat'(id INTEGER PRIMARY KEY, value BLOB)
CREATE TABLE x( %z%s%Q  %z, %Q HIDDEN, %s HIDDEN)
insert into mxp values(2,2,'T')
create table sample(id, name)
SELECT 1 FROM "%w".%s WHERE name NOT LIKE 'sqlite_%%' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, %d)=NULL  SELECT 1 FROM temp.%s WHERE name NOT LIKE 'sqlite_%%' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, 1)=NULL   CREATE VIRTUAL TABLE %T UPDATE %Q.%s SET type='table', name=%Q, tbl_name=%Q, rootpage=0, sql=%Q WHERE rowid=#%d name='%q' AND type='table'  CREATE TABLE x  ("%s"   %c"%s"  ,arg HIDDEN ,schema HIDDEN  wrong number of vtable arguments    col row instance    fts5vocab: unknown table type: %Q   CREATE TABLE x(term, col, documents, occurrences, languageid HIDDEN)    invalid arguments to fts4aux constructor    simple  CREATE TABLE x(input, token, start, end, position)  CREATE TABLE x(key,value,type,atom,id,parent,fullkey,path,json HIDDEN,root HIDDEN)  too many attached databases - max %d    database %s is already in use   database is already attached    unable to open database: %s no such table column: %s.%s 
CREATE TABLE `Pk10` (`Col1`, `Col2`, `Col3`, `Col4`, CONSTRAINT `NamedPk`PRIMARY KEY (`Col3`, `Col2`))
insert into t values (2)
insert into s1 values (?)
CREATE TABLE %Q.sqlite_sequence(name,seq)
CREATE TABLE x(%s %Q HIDDEN, docid HIDDEN, %Q HIDDEN)
select sql from sqlite_master where" + " lower(name) = lower('" + escape(tbl) + "')
select * from test
CREATE TABLE %Q.'%q_%q'(%s)
create index testindex_pk_idx on testindex (id);
CREATE TABLE x(%s ,%s )
CREATE TABLE x(%s %Q HIDDEN, docid HIDDEN, %Q HIDDEN)
insert into trans values (5)
create table person (id integer, name string, shortname string)
create table test (id int primary key, DESCRIPTION varchar(40), fOo varchar(3))
CREATE TABLE TabCols2 (Col1, Col2)
insert into test values (?)
insert into t values (1)
CREATE TABLE x( %z%s%Q  %z, %Q HIDDEN, %s HIDDEN)
select sum(c1) from s1;
create table tab (id, firstname, surname)
CREATE TABLE x(term, col, documents, occurrences, languageid HIDDEN)
CREATE TABLE %Q.sqlite_sequence(name,seq)
select * from day
create table testindex (id integer primary key, fn float default 0.0, sn not null)
select * from test;");
insert into tab values (0, 'Bob', 'Builder')
CREATE TABLE "%w"."%w_parent"(nodeno INTEGER PRIMARY KEY,parentnode)
SELECT * FROM sample
SELECT name, rootpage, sql FROM "%w".%s ORDER BY rowid SELECT tbl,idx,stat FROM %Q.sqlite_stat1 unordered* sz=[0-9]* noskipscan* create  invalid rootpage malformed database schema (%s) %z - %s database corruption %s at line %d of [%.10s] misuse unable to delete/modify collation sequence due to active statements NOCASE RTRIM json json_array json_array_length json_extract json_insert json_object json_quote json_remove json_replace json_set json_type json_valid json_group_array json_group_object json_each json_tree [%d] .%.*s $ true false integer real JSON cannot hold BLOB values 0123456789abcdef malformed JSON JSON path error near '%q' [0] CREATE TABLE x(key,value,type,atom,id,parent,fullkey,path,json HIDDEN,root HIDDEN) {} [] json_%s() needs an odd number of arguments json_object() requires an even number of arguments json_object() labels must be TEXT rtreenode rtreedepth rtree rtree_i32 ALTER TABLE %Q.'%q_node' RENAME TO "%w_node";ALTER TABLE %Q.'%q_parent' RENAME TO "%w_parent";ALTER 
CREATE TABLE x(type text,name text,tbl_name text,rootpage int,sql text)
create table t1 (c1 int)
create table user (name, phone)
create table big (json JSON)
select name from sqlite_master where type = 'table'
select * from person
CREATE TABLE x(%s %Q HIDDEN, docid HIDDEN, %Q HIDDEN)
create table child1 (id1 integer, id2 integer,\r\n foreign\tkey(id1) references parent(id1), foreign key(id2) references parent(id2))
select notacol from (select 1);
insert into testobj values (?,?,?,?,?,?,?)
INSERT INTO ResourcesTags values (?, ?, ?)
insert into blobs values(?)
SELECT length(data) FROM '%q'.'%q_node' WHERE nodeno = 1        undersize RTree blobs in "%q_node"      );CREATE TABLE "%w"."%w_node"(nodeno INTEGER PRIMARY KEY,data); CREATE TABLE "%w"."%w_parent"(nodeno INTEGER PRIMARY KEY,parentnode);   INSERT INTO "%w"."%w_node"VALUES(1,zeroblob(%d)) ,a%d   SELECT stat FROM %Q.sqlite_stat1 WHERE tbl = '%q_rowid' SELECT * FROM "%w"."%w_rowid" WHERE rowid=?1 UPDATE "%w"."%w_rowid"SET   WHERE rowid=?1 a%d=coalesce(?%d,a%d) a%d=?%d   CREATE TABLE "%w"."%w_rowid"(rowid INTEGER PRIMARY KEY,nodeno %_rowid %_parent  SELECT parentnode FROM %Q.'%q_parent' WHERE nodeno=?1   SELECT nodeno FROM %Q.'%q_rowid' WHERE rowid=?1 Mapping (%lld -> %lld) missing from %s table    Found (%lld -> %lld) in %s table, expected (%lld -> %lld)       SELECT count(*) FROM %Q.'%q%s'  Wrong number of entries in %%%s table - expected %lld, actual %lld      SELECT data FROM %Q.'%q_node' WHERE nodeno=?    Node %lld missing from database Node %lld is too small (%d bytes) Rtree depth ou
insert into t2 values (2, 1)
CREATE TABLE x( %z%s%Q %z, %Q HIDDEN, %s HIDDEN)
insert into batch values (1)
create table nopk (c1, c2, c3, c4)
insert into person values(2, 'yui')
create table A (id integer, name)
select * from sample where data > ?
insert into user values('frank', '704-200-0000')
select count(a) from in1000;
update s1 set c1 = 5 where c1 = 11
CREATE TABlE vocab(term, col, doc, cnt)
SELECT 1 FROM temp.%s WHERE name NOT LIKE 'sqlite_%%' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, 1)=NULL   Cannot add a PRIMARY KEY column Cannot add a UNIQUE column  Cannot add a REFERENCES column with non-NULL default value  Cannot add a NOT NULL column with default value NULL    Cannot add a column with non-constant default   UPDATE "%w".%s SET sql = substr(sql,1,%d) || ', ' || %Q || substr(sql,%d) WHERE type = 'table' AND name = %Q    virtual tables may not be altered   Cannot add a column to a view   sqlite_altertab_%s  cannot rename columns of %s "%s"    no such column: "%s"    UPDATE "%w".%s SET sql = sqlite_rename_column(sql, type, name, %Q, %Q, %d, %Q, %d, %d) WHERE name NOT LIKE 'sqlite_%%' AND (type != 'index' OR tbl_name = %Q) AND sql NOT LIKE 'create virtual%%'   UPDATE temp.%s SET sql = sqlite_rename_column(sql, type, name, %Q, %Q, %d, %Q, %d, 1) WHERE type IN ('trigger', 'view') SELECT 1 FROM "%w".%s WHERE name NOT LIKE 'sqlite_%%' AN
CREATE TABlE vocab(term, col, doc, cnt)
insert into test values (1)
select * from person order by id
CREATE TABLE CHILD1 (ID1 INTEGER, CONSTRAINT FK_PARENT1 FOREIGN KEY(ID1) REFERENCES PARENT1(ID1))
CREATE TABLE x( %z%s%Q %z, %Q HIDDEN, %s HIDDEN)
select c1,c2,c3,c4,c5,c6,c7 from testobj;
insert into test values (?,?)
insert into person values(3, 'abc', null)
insert into track values(2, 'second track', 3)
insert into s1 values (11)
create table mxp (pid integer, mid integer, type string)
select count(*) from test;
create table message (id integer, subject string)
create table t2 (c1 int, c2 int)
CREATE TABLE pk9 (col1, col2, col3, col4 VARCHAR(10),PRIMARY KEY(col1, col2, col3))
CREATE TABLE %Q.%s(%s)
CREATE TABLE IF NOT EXISTS data (fid VARCHAR(255) PRIMARY KEY, type VARCHAR(64), data BLOB)
create table REFERRED (ID integer primary key not null)
update s1 set c1 = 22  where c1 = 12
select * from tbl
select sql from sqlite_master where
CREATE TABLE Foo (KeyId INTEGER, Stuff BLOB)
CREATE TABLE x(type text,name text,tbl_name text,rootpage int,sql text)
CREATE TABLE "%w"."%w_rowid"(rowid INTEGER PRIMARY KEY, nodeno INTEGER)
CREATE TABLE %Q.'%q_docsize'(docid INTEGER PRIMARY KEY, size BLOB)
CREATE TABLE x(%s %Q HIDDEN, docid HIDDEN, %Q HIDDEN)
CREATE TABLE %Q.'%q_%q'(%s)
insert into t1 values (1)
insert into test values (5)
create table sample (b blob not null)
insert into t values (7)
CREATE TABLE x(%s %Q HIDDEN, docid HIDDEN, %Q HIDDEN)
create table s1 (c1)
CREATE TABLE PARENT1 (ID1 INTEGER, DATA1 INTEGER, CONSTRAINT PK_PARENT1 PRIMARY KEY (ID1))
insert into test values (8)
UPDATE sqlite_temp_master SET sql = sqlite_rename_table WHERE type IN (view, trigger)
insert into sample values(null)
CREATE TABLE x(%s %Q HIDDEN, docid HIDDEN, %Q HIDDEN)
select * from blobs
insert into mxp values(1,2, 'F')
create table sample (b blob null)
insert into s1 values (2)
create table child1 (id1 integer, id2 integer, foreign key(id1) references parent(id1), foreign key(id2) references parent(id2))
insert into mxp values(1,1, 'F')
insert into t values (datetime(?/1000, 'unixepoch'))
create table address (pid integer, name, foreign key(pid) references person(id))
create table s1 (c1)
insert into user values('james', json_array('704-100-0000','604-100-0000'))
insert into sample values(zeroblob(0))
insert into tab values (1, 'Fred', 'Blogs')
CREATE TABLE "%w"."%w_parent"(nodeno INTEGER PRIMARY KEY, parentnode INTEGER)
create index testindex_idx on testindex (sn);
select * from sample
select count(*) from sample
SELECT 1 FROM "%w".%s WHERE name NOT LIKE 'sqlite_%%' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, %d)=NULL  SELECT 1 FROM temp.%s WHERE name NOT LIKE 'sqlite_%%' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, 1)=NULL  CREATE VIRTUAL TABLE %T  UPDATE %Q.%s SET type='table', name=%Q, tbl_name=%Q, rootpage=0, sql=%Q WHERE rowid=#%d name='%q' AND type='table' CREATE TABLE x ("%s" %c"%s" ,arg HIDDEN ,schema HIDDEN col row instance      CREATE TABlE vocab(term, col, doc, cnt) CREATE TABlE vocab(term, doc, cnt)      CREATE TABlE vocab(term, doc, col, offset)      wrong number of vtable arguments        fts5vocab: unknown table type: %Q       CREATE TABLE x(term, col, documents, occurrences, languageid HIDDEN)    invalid arguments to fts4aux constructor simple CREATE TABLE x(input, token, start, end, position)      CREATE TABLE x(key,value,type,atom,id,parent,fullkey,path,json HIDDEN,root HIDDEN)      too many attached databa
create table t1 (c1 integer primary key, v)
create table REFERRING (ID integer, RID integer, constraint fk\r\n foreign\tkey\r\n(RID) references REFERRED(id))
create table person (id integer primary key)
insert into t values (3)
create table sample (date_time datetime)
insert into t values(?)
CREATE TABLE PARENT1 (ID1 INTEGER, ID2 INTEGER, CONSTRAINT PK_PARENT1 PRIMARY KEY (ID1))
insert into s1 values (0)
CREATE TABLE x( id INTEGER PRIMARY KEY  , c%d   config  k PRIMARY KEY, v    id INTEGER PRIMARY KEY, sz BLOB %z%s%Q  %z, %Q HIDDEN, %s HIDDEN)
select rowid, name, ingredients from recipe where recipe match 'onions'
create table test (c1, c2)
CREATE TABLE x(type text,name text,tbl_name text,rootpage integer,sql text)
CREATE TABLE Child2 (Id1 INTEGER, DATA2 INTEGER, CONSTRAINT FK_Child2 FOREIGN KEY(Id1) REFERENCES Parent2(Id1))
select * from memdb1.tbl
CREATE TABLE "%w"."%w_node"(nodeno INTEGER PRIMARY KEY,data)
create table sample (data NOAFFINITY)
CREATE TABLE IF NOT EXISTS ResourcesTags (bd_fid VARCHAR(255), name VARCHAR(64), version INTEGER)
create table test (c1, c2, c3, c4)
insert into t values (?)
create table t1 (c1)
CREATE TABLE pk8 (col1, col2, col3, col4 VARCHAR(10), PRIMARY KEY(col1, col2, col3))
create table person (id integer, name string)
CREATE TABLE x( %z%s%Q %z, %Q HIDDEN, %s HIDDEN)
insert into sample values(zeroblob(5))
CREATE TABLE %Q.'%q_segdir'(level INTEGER,idx INTEGER,start_block INTEGER,leaves_end_block INTEGER,end_block INTEGER,root BLOB,PRIMARY KEY(level, idx))
insert into user values('harry', json_array('504-200-0000','304-200-0000'))
CREATE TABLE %Q.'%q_%q'(%s)
insert into person values(1, 'leo')
insert into user values('sally', json_array('604-200-0000','404-200-0000'))
SELECT 1 FROM "%w".%s WHERE name NOT LIKE 'sqlite_%%' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, %d)=NULL  SELECT 1 FROM temp.%s WHERE name NOT LIKE 'sqlite_%%' AND sql NOT LIKE 'create virtual%%' AND sqlite_rename_test(%Q, sql, type, name, 1)=NULL   CREATE VIRTUAL TABLE %T UPDATE %Q.%s SET type='table', name=%Q, tbl_name=%Q, rootpage=0, sql=%Q WHERE rowid=#%d name='%q' AND type='table'      CREATE TABLE x  ("%s"   %c"%s"  ,arg HIDDEN     ,schema HIDDEN  wrong number of vtable arguments        col     row     instance        fts5vocab: unknown table type: %Q       CREATE TABLE x(term, col, documents, occurrences, languageid HIDDEN)    invalid arguments to fts4aux constructor        simple  CREATE TABLE x(input, token, start, end, position)      CREATE TABLE x(key,value,type,atom,id,parent,fullkey,path,json HIDDEN,root HIDDEN)      too many attached databases - max %d    database %s is already in use   database is already attached    unable to open d
select count(*) from trans;
create table pk3 (col1, col2, col3, col4, primary key (col3, col2 ))
CREATE TABLE PARENT3 (ID3 INTEGER, DATA3 INTEGER, PRIMARY KEY (ID3))
insert into test values (3)
insert into s1 values (1)
select c1 from test
insert into myTemp values (2)
CREATE TABLE %Q.sqlite_sequence(name,seq)
insert into in1000 values (?)
SELECT * FROM %Q.%Q UNIQUE constraint failed: %s.%s rtree constraint failed: %s.(%s<=%s)    INSERT INTO '%q'.'%q_idx'(segid,term,pgno) VALUES(?,?,?)    SELECT %s WHERE rowid = ?   SELECT rowid, rank FROM %Q.%Q ORDER BY %s(%s%s%s) %s    sqlite_stat%d   DELETE FROM %Q.%s WHERE %s=%Q   DELETE FROM %Q.%s WHERE name=%Q AND type='trigger'  UPDATE %Q.%s SET rootpage=%d WHERE #%d AND rootpage=#%d sqlite_stat table %s may not be dropped use DROP TABLE to delete table %s   use DROP VIEW to delete view %s DELETE FROM %Q.sqlite_sequence WHERE name=%Q    DELETE FROM %Q.%s WHERE tbl_name=%Q and type!='trigger'  UNIQUE cannot create a TEMP index on non-TEMP table "%s"   altertab_   table %s may not be indexed views may not be indexed    virtual tables may not be indexed   there is already a table named %s   index %s already exists sqlite_autoindex_%s_%d  expressions prohibited in PRIMARY KEY and UNIQUE constraints    conflicting ON CONFLICT clauses specified   CREATE%s INDEX %.*s INSERT INTO %Q.%s VA
CREATE TABLE %Q.'%q_%q'(%s)
create table person (id integer, name string)
CREATE TABLE %Q.'%q_content'(%s)
create table A(id, name)
create table trigtest (c1)
select * from " + table);
create table t (c1)
CREATE TABLE "%w"."%w_rowid"(rowid INTEGER PRIMARY KEY,nodeno ,a%d )
insert into tbl2 values(200)
select c1 from s1
create table pk2 (col1, col2 primary key, col3)
CREATE TABlE vocab(term, col, doc, cnt)
select pid, firstname, surname from people;
SELECT * FROM %Q.%Q   UNIQUE constraint failed: %s.%s rtree constraint failed: %s.(%s<=%s)    INSERT INTO '%q'.'%q_idx'(segid,term,pgno) VALUES(?,?,?)    SELECT %s FROM %s T WHERE T.%Q >= ? AND T.%Q <= ? ORDER BY T.%Q ASC SELECT %s FROM %s T WHERE T.%Q <= ? AND T.%Q >= ? ORDER BY T.%Q DESC    SELECT %s FROM %s T WHERE T.%Q=?    INSERT INTO %Q.'%q_content' VALUES(%s)  REPLACE INTO %Q.'%q_content' VALUES(%s) DELETE FROM %Q.'%q_content' WHERE id=?  REPLACE INTO %Q.'%q_docsize' VALUES(?,?)    DELETE FROM %Q.'%q_docsize' WHERE id=?  SELECT sz FROM %Q.'%q_docsize' WHERE id=?   REPLACE INTO %Q.'%q_config' VALUES(?,?) SELECT %s FROM %s AS T  1d1d1d1d1d1d1d1d1d1d@1dDELETE FROM %Q.'%q_content' WHERE rowid = ? SELECT NOT EXISTS(SELECT docid FROM %Q.'%q_content' WHERE rowid!=?) DELETE FROM %Q.'%q_content' DELETE FROM %Q.'%q_segments' DELETE FROM %Q.'%q_segdir' DELETE FROM %Q.'%q_docsize' DELETE FROM %Q.'%q_stat' SELECT %s WHERE rowid=?    SELECT (SELECT max(idx) FROM %Q.'%q_segdir' WHERE leve
insert into sample values(1, 'leo')
create table t2 (c1 integer)
create table track(id integer primary key, name, aid, foreign key (aid) references artist(id))
insert into test values (?,?,?,?)
CREATE TABLE x(input, token, start, end, position)
