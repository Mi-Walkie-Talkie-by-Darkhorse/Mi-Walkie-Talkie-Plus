package org.greenrobot.greendao;

import java.util.HashMap;
import java.util.Map;
import org.greenrobot.greendao.b.a;
import org.greenrobot.greendao.identityscope.IdentityScopeType;

/* compiled from: AbstractDaoMaster */
public abstract class b {
    protected final Map<Class<? extends a<?, ?>>, a> daoConfigMap = new HashMap();
    protected final org.greenrobot.greendao.a.a db;
    protected final int schemaVersion;

    public abstract c newSession();

    public abstract c newSession(IdentityScopeType identityScopeType);

    public b(org.greenrobot.greendao.a.a aVar, int i) {
        this.db = aVar;
        this.schemaVersion = i;
    }

    /* access modifiers changed from: protected */
    public void registerDaoClass(Class<? extends a<?, ?>> cls) {
        this.daoConfigMap.put(cls, new a(this.db, cls));
    }

    public int getSchemaVersion() {
        return this.schemaVersion;
    }

    public org.greenrobot.greendao.a.a getDatabase() {
        return this.db;
    }
}
