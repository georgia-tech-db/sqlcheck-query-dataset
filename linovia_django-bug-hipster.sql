SELECT key FROM "+g+' WHERE location="'+f(n._location)+'"');p={};try{while(j.isValidRow()){var m=a(j.field(0));if(!p[m]){p[m]=true;n._addKey(m);}j.next();}}finally{j.close();}if(k){h.Cookie.set("sessionKey"+c.ENGINE_NAME,true);}n.fireEvent(h.Storage.CE_READY);};d.extend(c,h.StorageEngineKeyed,{_clear:function(){c.superclass._clear.call(this);b.execute("BEGIN");b.execute("DELETE FROM "+g+' WHERE location="'+f(this._location)+'"');b.execute("COMMIT");},_getItem:function(k){var i=b.execute("SELECT value FROM "+g+' WHERE key="'+f(k)+'" AND location="'+f(this._location)+'"'),j="";try{while(i.isValidRow()){j+=i.field(0);i.next();}}finally{i.close();}return j?a(j):null;},_removeItem:function(i){c.superclass._removeItem.call(this,i);b.execute("BEGIN");b.execute("DELETE FROM "+g+' WHERE key="'+f(i)+'" AND location="'+f(this._location)+'"');b.execute("COMMIT");},_setItem:function(r,k){this._addKey(r);var l=f(r),m=f(this._location),p=f(k),q=[],s=e-(l+m).length,o=0,n;if(s<p.length){for(n=p.length
CREATE TABLE IF NOT EXISTS "+g+" (key TEXT, location TEXT, value TEXT)
