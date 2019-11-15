package org.greenrobot.greendao;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import org.greenrobot.greendao.a.a;
import org.greenrobot.greendao.annotation.apihint.Experimental;
import org.greenrobot.greendao.c.g;
import rx.e.e;

/* compiled from: AbstractDaoSession */
public class c {
    private final a db;
    private final Map<Class<?>, a<?, ?>> entityToDao = new HashMap();
    private volatile org.greenrobot.greendao.d.c rxTxIo;
    private volatile org.greenrobot.greendao.d.c rxTxPlain;

    public c(a aVar) {
        this.db = aVar;
    }

    /* access modifiers changed from: protected */
    public <T> void registerDao(Class<T> cls, a<T, ?> aVar) {
        this.entityToDao.put(cls, aVar);
    }

    public <T> long insert(T t) {
        return getDao(t.getClass()).insert(t);
    }

    public <T> long insertOrReplace(T t) {
        return getDao(t.getClass()).insertOrReplace(t);
    }

    public <T> void refresh(T t) {
        getDao(t.getClass()).refresh(t);
    }

    public <T> void update(T t) {
        getDao(t.getClass()).update(t);
    }

    public <T> void delete(T t) {
        getDao(t.getClass()).delete(t);
    }

    public <T> void deleteAll(Class<T> cls) {
        getDao(cls).deleteAll();
    }

    public <T, K> T load(Class<T> cls, K k) {
        return getDao(cls).load(k);
    }

    public <T, K> List<T> loadAll(Class<T> cls) {
        return getDao(cls).loadAll();
    }

    public <T, K> List<T> queryRaw(Class<T> cls, String str, String... strArr) {
        return getDao(cls).queryRaw(str, strArr);
    }

    public <T> g<T> queryBuilder(Class<T> cls) {
        return getDao(cls).queryBuilder();
    }

    public a<?, ?> getDao(Class<? extends Object> cls) {
        a<?, ?> aVar = (a) this.entityToDao.get(cls);
        if (aVar != null) {
            return aVar;
        }
        throw new DaoException("No DAO registered for " + cls);
    }

    public void runInTx(Runnable runnable) {
        this.db.a();
        try {
            runnable.run();
            this.db.c();
        } finally {
            this.db.b();
        }
    }

    public <V> V callInTx(Callable<V> callable) throws Exception {
        this.db.a();
        try {
            V call = callable.call();
            this.db.c();
            return call;
        } finally {
            this.db.b();
        }
    }

    public <V> V callInTxNoException(Callable<V> callable) {
        this.db.a();
        try {
            V call = callable.call();
            this.db.c();
            this.db.b();
            return call;
        } catch (Exception e) {
            throw new DaoException("Callable failed", e);
        } catch (Throwable th) {
            this.db.b();
            throw th;
        }
    }

    public a getDatabase() {
        return this.db;
    }

    public Collection<a<?, ?>> getAllDaos() {
        return Collections.unmodifiableCollection(this.entityToDao.values());
    }

    public org.greenrobot.greendao.async.c startAsyncSession() {
        return new org.greenrobot.greendao.async.c(this);
    }

    @Experimental
    public org.greenrobot.greendao.d.c rxTxPlain() {
        if (this.rxTxPlain == null) {
            this.rxTxPlain = new org.greenrobot.greendao.d.c(this);
        }
        return this.rxTxPlain;
    }

    @Experimental
    public org.greenrobot.greendao.d.c rxTx() {
        if (this.rxTxIo == null) {
            this.rxTxIo = new org.greenrobot.greendao.d.c(this, e.b());
        }
        return this.rxTxIo;
    }
}
