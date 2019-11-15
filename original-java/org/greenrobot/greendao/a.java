package org.greenrobot.greendao;

import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.greenrobot.greendao.a.c;
import org.greenrobot.greendao.annotation.apihint.Experimental;
import org.greenrobot.greendao.b.e;
import org.greenrobot.greendao.c.f;
import org.greenrobot.greendao.c.g;
import org.greenrobot.greendao.identityscope.b;

/* compiled from: AbstractDao */
public abstract class a<T, K> {
    protected final org.greenrobot.greendao.b.a config;
    protected final org.greenrobot.greendao.a.a db;
    protected final org.greenrobot.greendao.identityscope.a<K, T> identityScope;
    protected final b<T> identityScopeLong;
    protected final boolean isStandardSQLite;
    protected final int pkOrdinal;
    private volatile org.greenrobot.greendao.d.b<T, K> rxDao;
    private volatile org.greenrobot.greendao.d.b<T, K> rxDaoPlain;
    protected final c session;
    protected final e statements;

    /* access modifiers changed from: protected */
    public abstract void bindValues(SQLiteStatement sQLiteStatement, T t);

    /* access modifiers changed from: protected */
    public abstract void bindValues(c cVar, T t);

    /* access modifiers changed from: protected */
    public abstract K getKey(T t);

    /* access modifiers changed from: protected */
    public abstract boolean hasKey(T t);

    /* access modifiers changed from: protected */
    public abstract boolean isEntityUpdateable();

    /* access modifiers changed from: protected */
    public abstract T readEntity(Cursor cursor, int i);

    /* access modifiers changed from: protected */
    public abstract void readEntity(Cursor cursor, T t, int i);

    /* access modifiers changed from: protected */
    public abstract K readKey(Cursor cursor, int i);

    /* access modifiers changed from: protected */
    public abstract K updateKeyAfterInsert(T t, long j);

    public a(org.greenrobot.greendao.b.a aVar) {
        this(aVar, null);
    }

    public a(org.greenrobot.greendao.b.a aVar, c cVar) {
        this.config = aVar;
        this.session = cVar;
        this.db = aVar.a;
        this.isStandardSQLite = this.db.e() instanceof SQLiteDatabase;
        this.identityScope = aVar.b();
        if (this.identityScope instanceof b) {
            this.identityScopeLong = (b) this.identityScope;
        } else {
            this.identityScopeLong = null;
        }
        this.statements = aVar.i;
        this.pkOrdinal = aVar.g != null ? aVar.g.a : -1;
    }

    public c getSession() {
        return this.session;
    }

    /* access modifiers changed from: 0000 */
    public e getStatements() {
        return this.config.i;
    }

    public String getTablename() {
        return this.config.b;
    }

    public f[] getProperties() {
        return this.config.c;
    }

    public f getPkProperty() {
        return this.config.g;
    }

    public String[] getAllColumns() {
        return this.config.d;
    }

    public String[] getPkColumns() {
        return this.config.e;
    }

    public String[] getNonPkColumns() {
        return this.config.f;
    }

    public T load(K k) {
        assertSinglePk();
        if (k == null) {
            return null;
        }
        if (this.identityScope != null) {
            T a = this.identityScope.a(k);
            if (a != null) {
                return a;
            }
        }
        return loadUniqueAndCloseCursor(this.db.a(this.statements.g(), new String[]{k.toString()}));
    }

    public T loadByRowId(long j) {
        return loadUniqueAndCloseCursor(this.db.a(this.statements.h(), new String[]{Long.toString(j)}));
    }

    /* access modifiers changed from: protected */
    public T loadUniqueAndCloseCursor(Cursor cursor) {
        try {
            return loadUnique(cursor);
        } finally {
            cursor.close();
        }
    }

    /* access modifiers changed from: protected */
    public T loadUnique(Cursor cursor) {
        if (!cursor.moveToFirst()) {
            return null;
        }
        if (cursor.isLast()) {
            return loadCurrent(cursor, 0, true);
        }
        throw new DaoException("Expected unique result, but count was " + cursor.getCount());
    }

    public List<T> loadAll() {
        return loadAllAndCloseCursor(this.db.a(this.statements.f(), (String[]) null));
    }

    public boolean detach(T t) {
        if (this.identityScope == null) {
            return false;
        }
        return this.identityScope.c(getKeyVerified(t), t);
    }

    public void detachAll() {
        if (this.identityScope != null) {
            this.identityScope.a();
        }
    }

    /* access modifiers changed from: protected */
    public List<T> loadAllAndCloseCursor(Cursor cursor) {
        try {
            return loadAllFromCursor(cursor);
        } finally {
            cursor.close();
        }
    }

    public void insertInTx(Iterable<T> iterable) {
        insertInTx(iterable, isEntityUpdateable());
    }

    public void insertInTx(T... tArr) {
        insertInTx(Arrays.asList(tArr), isEntityUpdateable());
    }

    public void insertInTx(Iterable<T> iterable, boolean z) {
        executeInsertInTx(this.statements.a(), iterable, z);
    }

    public void insertOrReplaceInTx(Iterable<T> iterable, boolean z) {
        executeInsertInTx(this.statements.b(), iterable, z);
    }

    public void insertOrReplaceInTx(Iterable<T> iterable) {
        insertOrReplaceInTx(iterable, isEntityUpdateable());
    }

    public void insertOrReplaceInTx(T... tArr) {
        insertOrReplaceInTx(Arrays.asList(tArr), isEntityUpdateable());
    }

    private void executeInsertInTx(c cVar, Iterable<T> iterable, boolean z) {
        this.db.a();
        try {
            synchronized (cVar) {
                if (this.identityScope != null) {
                    this.identityScope.b();
                }
                try {
                    if (this.isStandardSQLite) {
                        SQLiteStatement sQLiteStatement = (SQLiteStatement) cVar.f();
                        for (Object next : iterable) {
                            bindValues(sQLiteStatement, (T) next);
                            if (z) {
                                updateKeyAfterInsertAndAttach(next, sQLiteStatement.executeInsert(), false);
                            } else {
                                sQLiteStatement.execute();
                            }
                        }
                    } else {
                        for (Object next2 : iterable) {
                            bindValues(cVar, (T) next2);
                            if (z) {
                                updateKeyAfterInsertAndAttach(next2, cVar.c(), false);
                            } else {
                                cVar.a();
                            }
                        }
                    }
                    if (this.identityScope != null) {
                        this.identityScope.c();
                    }
                } catch (Throwable th) {
                    if (this.identityScope != null) {
                        this.identityScope.c();
                    }
                    throw th;
                }
            }
            this.db.c();
        } finally {
            this.db.b();
        }
    }

    public long insert(T t) {
        return executeInsert(t, this.statements.a(), true);
    }

    public long insertWithoutSettingPk(T t) {
        return executeInsert(t, this.statements.b(), false);
    }

    public long insertOrReplace(T t) {
        return executeInsert(t, this.statements.b(), true);
    }

    private long executeInsert(T t, c cVar, boolean z) {
        long insertInsideTx;
        if (this.db.d()) {
            insertInsideTx = insertInsideTx(t, cVar);
        } else {
            this.db.a();
            try {
                insertInsideTx = insertInsideTx(t, cVar);
                this.db.c();
            } finally {
                this.db.b();
            }
        }
        if (z) {
            updateKeyAfterInsertAndAttach(t, insertInsideTx, true);
        }
        return insertInsideTx;
    }

    private long insertInsideTx(T t, c cVar) {
        long c;
        synchronized (cVar) {
            if (this.isStandardSQLite) {
                SQLiteStatement sQLiteStatement = (SQLiteStatement) cVar.f();
                bindValues(sQLiteStatement, t);
                c = sQLiteStatement.executeInsert();
            } else {
                bindValues(cVar, t);
                c = cVar.c();
            }
        }
        return c;
    }

    /* access modifiers changed from: protected */
    public void updateKeyAfterInsertAndAttach(T t, long j, boolean z) {
        if (j != -1) {
            attachEntity(updateKeyAfterInsert(t, j), t, z);
        } else {
            d.c("Could not insert row (executeInsert returned -1)");
        }
    }

    public void save(T t) {
        if (hasKey(t)) {
            update(t);
        } else {
            insert(t);
        }
    }

    public void saveInTx(T... tArr) {
        saveInTx((Iterable<T>) Arrays.asList(tArr));
    }

    public void saveInTx(Iterable<T> iterable) {
        int i = 0;
        int i2 = 0;
        for (T hasKey : iterable) {
            if (hasKey(hasKey)) {
                i2++;
            } else {
                i++;
            }
        }
        if (i2 > 0 && i > 0) {
            ArrayList arrayList = new ArrayList(i2);
            ArrayList arrayList2 = new ArrayList(i);
            for (Object next : iterable) {
                if (hasKey(next)) {
                    arrayList.add(next);
                } else {
                    arrayList2.add(next);
                }
            }
            this.db.a();
            try {
                updateInTx((Iterable<T>) arrayList);
                insertInTx((Iterable<T>) arrayList2);
                this.db.c();
            } finally {
                this.db.b();
            }
        } else if (i > 0) {
            insertInTx(iterable);
        } else if (i2 > 0) {
            updateInTx(iterable);
        }
    }

    /* access modifiers changed from: protected */
    /* JADX WARNING: Removed duplicated region for block: B:23:0x0050  */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public java.util.List<T> loadAllFromCursor(android.database.Cursor r8) {
        /*
            r7 = this;
            r1 = 0
            int r4 = r8.getCount()
            if (r4 != 0) goto L_0x000d
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
        L_0x000c:
            return r0
        L_0x000d:
            java.util.ArrayList r3 = new java.util.ArrayList
            r3.<init>(r4)
            r0 = 0
            boolean r2 = r8 instanceof android.database.CrossProcessCursor
            if (r2 == 0) goto L_0x0099
            r0 = r8
            android.database.CrossProcessCursor r0 = (android.database.CrossProcessCursor) r0
            android.database.CursorWindow r2 = r0.getWindow()
            if (r2 == 0) goto L_0x007b
            int r0 = r2.getNumRows()
            if (r0 != r4) goto L_0x0057
            org.greenrobot.greendao.b.b r8 = new org.greenrobot.greendao.b.b
            r8.<init>(r2)
            r0 = 1
            r1 = r2
        L_0x002d:
            boolean r2 = r8.moveToFirst()
            if (r2 == 0) goto L_0x0055
            org.greenrobot.greendao.identityscope.a<K, T> r2 = r7.identityScope
            if (r2 == 0) goto L_0x0041
            org.greenrobot.greendao.identityscope.a<K, T> r2 = r7.identityScope
            r2.b()
            org.greenrobot.greendao.identityscope.a<K, T> r2 = r7.identityScope
            r2.a(r4)
        L_0x0041:
            if (r0 != 0) goto L_0x007e
            if (r1 == 0) goto L_0x007e
            org.greenrobot.greendao.identityscope.a<K, T> r0 = r7.identityScope     // Catch:{ all -> 0x008e }
            if (r0 == 0) goto L_0x007e
            r7.loadAllUnlockOnWindowBounds(r8, r1, r3)     // Catch:{ all -> 0x008e }
        L_0x004c:
            org.greenrobot.greendao.identityscope.a<K, T> r0 = r7.identityScope
            if (r0 == 0) goto L_0x0055
            org.greenrobot.greendao.identityscope.a<K, T> r0 = r7.identityScope
            r0.c()
        L_0x0055:
            r0 = r3
            goto L_0x000c
        L_0x0057:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r5 = "Window vs. result size: "
            java.lang.StringBuilder r0 = r0.append(r5)
            int r5 = r2.getNumRows()
            java.lang.StringBuilder r0 = r0.append(r5)
            java.lang.String r5 = "/"
            java.lang.StringBuilder r0 = r0.append(r5)
            java.lang.StringBuilder r0 = r0.append(r4)
            java.lang.String r0 = r0.toString()
            org.greenrobot.greendao.d.a(r0)
        L_0x007b:
            r0 = r1
            r1 = r2
            goto L_0x002d
        L_0x007e:
            r0 = 0
            r1 = 0
            java.lang.Object r0 = r7.loadCurrent(r8, r0, r1)     // Catch:{ all -> 0x008e }
            r3.add(r0)     // Catch:{ all -> 0x008e }
            boolean r0 = r8.moveToNext()     // Catch:{ all -> 0x008e }
            if (r0 != 0) goto L_0x007e
            goto L_0x004c
        L_0x008e:
            r0 = move-exception
            org.greenrobot.greendao.identityscope.a<K, T> r1 = r7.identityScope
            if (r1 == 0) goto L_0x0098
            org.greenrobot.greendao.identityscope.a<K, T> r1 = r7.identityScope
            r1.c()
        L_0x0098:
            throw r0
        L_0x0099:
            r6 = r1
            r1 = r0
            r0 = r6
            goto L_0x002d
        */
        throw new UnsupportedOperationException("Method not decompiled: org.greenrobot.greendao.a.loadAllFromCursor(android.database.Cursor):java.util.List");
    }

    private void loadAllUnlockOnWindowBounds(Cursor cursor, CursorWindow cursorWindow, List<T> list) {
        int startPosition = cursorWindow.getStartPosition() + cursorWindow.getNumRows();
        int i = 0;
        while (true) {
            list.add(loadCurrent(cursor, 0, false));
            int i2 = i + 1;
            if (i2 >= startPosition) {
                CursorWindow moveToNextUnlocked = moveToNextUnlocked(cursor);
                if (moveToNextUnlocked != null) {
                    startPosition = moveToNextUnlocked.getNumRows() + moveToNextUnlocked.getStartPosition();
                } else {
                    return;
                }
            } else if (!cursor.moveToNext()) {
                return;
            }
            i = i2 + 1;
        }
    }

    private CursorWindow moveToNextUnlocked(Cursor cursor) {
        this.identityScope.c();
        try {
            if (cursor.moveToNext()) {
                return ((CrossProcessCursor) cursor).getWindow();
            }
            this.identityScope.b();
            return null;
        } finally {
            this.identityScope.b();
        }
    }

    /* access modifiers changed from: protected */
    public final T loadCurrent(Cursor cursor, int i, boolean z) {
        if (this.identityScopeLong != null) {
            if (i != 0 && cursor.isNull(this.pkOrdinal + i)) {
                return null;
            }
            long j = cursor.getLong(this.pkOrdinal + i);
            T b = z ? this.identityScopeLong.a(j) : this.identityScopeLong.b(j);
            if (b != null) {
                return b;
            }
            T readEntity = readEntity(cursor, i);
            attachEntity(readEntity);
            if (z) {
                this.identityScopeLong.a(j, readEntity);
                return readEntity;
            }
            this.identityScopeLong.b(j, readEntity);
            return readEntity;
        } else if (this.identityScope != null) {
            Object readKey = readKey(cursor, i);
            if (i != 0 && readKey == null) {
                return null;
            }
            T b2 = z ? this.identityScope.a(readKey) : this.identityScope.b(readKey);
            if (b2 != null) {
                return b2;
            }
            T readEntity2 = readEntity(cursor, i);
            attachEntity(readKey, readEntity2, z);
            return readEntity2;
        } else if (i != 0 && readKey(cursor, i) == null) {
            return null;
        } else {
            T readEntity3 = readEntity(cursor, i);
            attachEntity(readEntity3);
            return readEntity3;
        }
    }

    /* access modifiers changed from: protected */
    public final <O> O loadCurrentOther(a<O, ?> aVar, Cursor cursor, int i) {
        return aVar.loadCurrent(cursor, i, true);
    }

    public List<T> queryRaw(String str, String... strArr) {
        return loadAllAndCloseCursor(this.db.a(this.statements.f() + str, strArr));
    }

    public f<T> queryRawCreate(String str, Object... objArr) {
        return queryRawCreateListArgs(str, Arrays.asList(objArr));
    }

    public f<T> queryRawCreateListArgs(String str, Collection<Object> collection) {
        return f.a(this, this.statements.f() + str, collection.toArray());
    }

    public void deleteAll() {
        this.db.a("DELETE FROM '" + this.config.b + "'");
        if (this.identityScope != null) {
            this.identityScope.a();
        }
    }

    public void delete(T t) {
        assertSinglePk();
        deleteByKey(getKeyVerified(t));
    }

    public void deleteByKey(K k) {
        assertSinglePk();
        c c = this.statements.c();
        if (this.db.d()) {
            synchronized (c) {
                deleteByKeyInsideSynchronized(k, c);
            }
        } else {
            this.db.a();
            try {
                synchronized (c) {
                    deleteByKeyInsideSynchronized(k, c);
                }
                this.db.c();
            } finally {
                this.db.b();
            }
        }
        if (this.identityScope != null) {
            this.identityScope.c(k);
        }
    }

    private void deleteByKeyInsideSynchronized(K k, c cVar) {
        if (k instanceof Long) {
            cVar.a(1, ((Long) k).longValue());
        } else if (k == null) {
            throw new DaoException("Cannot delete entity, key is null");
        } else {
            cVar.a(1, k.toString());
        }
        cVar.a();
    }

    private void deleteInTxInternal(Iterable<T> iterable, Iterable<K> iterable2) {
        assertSinglePk();
        c c = this.statements.c();
        ArrayList arrayList = null;
        this.db.a();
        try {
            synchronized (c) {
                if (this.identityScope != null) {
                    this.identityScope.b();
                    arrayList = new ArrayList();
                }
                if (iterable != null) {
                    try {
                        for (T keyVerified : iterable) {
                            Object keyVerified2 = getKeyVerified(keyVerified);
                            deleteByKeyInsideSynchronized(keyVerified2, c);
                            if (arrayList != null) {
                                arrayList.add(keyVerified2);
                            }
                        }
                    } catch (Throwable th) {
                        if (this.identityScope != null) {
                            this.identityScope.c();
                        }
                        throw th;
                    }
                }
                if (iterable2 != null) {
                    for (Object next : iterable2) {
                        deleteByKeyInsideSynchronized(next, c);
                        if (arrayList != null) {
                            arrayList.add(next);
                        }
                    }
                }
                if (this.identityScope != null) {
                    this.identityScope.c();
                }
            }
            this.db.c();
            if (!(arrayList == null || this.identityScope == null)) {
                this.identityScope.a((Iterable<K>) arrayList);
            }
        } finally {
            this.db.b();
        }
    }

    public void deleteInTx(Iterable<T> iterable) {
        deleteInTxInternal(iterable, null);
    }

    public void deleteInTx(T... tArr) {
        deleteInTxInternal(Arrays.asList(tArr), null);
    }

    public void deleteByKeyInTx(Iterable<K> iterable) {
        deleteInTxInternal(null, iterable);
    }

    public void deleteByKeyInTx(K... kArr) {
        deleteInTxInternal(null, Arrays.asList(kArr));
    }

    public void refresh(T t) {
        assertSinglePk();
        Object keyVerified = getKeyVerified(t);
        Cursor a = this.db.a(this.statements.g(), new String[]{keyVerified.toString()});
        try {
            if (!a.moveToFirst()) {
                throw new DaoException("Entity does not exist in the database anymore: " + t.getClass() + " with key " + keyVerified);
            } else if (!a.isLast()) {
                throw new DaoException("Expected unique result, but count was " + a.getCount());
            } else {
                readEntity(a, t, 0);
                attachEntity(keyVerified, t, true);
            }
        } finally {
            a.close();
        }
    }

    public void update(T t) {
        assertSinglePk();
        c d = this.statements.d();
        if (this.db.d()) {
            synchronized (d) {
                if (this.isStandardSQLite) {
                    updateInsideSynchronized(t, (SQLiteStatement) d.f(), true);
                } else {
                    updateInsideSynchronized(t, d, true);
                }
            }
            return;
        }
        this.db.a();
        try {
            synchronized (d) {
                updateInsideSynchronized(t, d, true);
            }
            this.db.c();
        } finally {
            this.db.b();
        }
    }

    public g<T> queryBuilder() {
        return g.a(this);
    }

    /* access modifiers changed from: protected */
    public void updateInsideSynchronized(T t, c cVar, boolean z) {
        bindValues(cVar, t);
        int length = this.config.d.length + 1;
        Object key = getKey(t);
        if (key instanceof Long) {
            cVar.a(length, ((Long) key).longValue());
        } else if (key == null) {
            throw new DaoException("Cannot update entity without key - was it inserted before?");
        } else {
            cVar.a(length, key.toString());
        }
        cVar.a();
        attachEntity(key, t, z);
    }

    /* access modifiers changed from: protected */
    public void updateInsideSynchronized(T t, SQLiteStatement sQLiteStatement, boolean z) {
        bindValues(sQLiteStatement, t);
        int length = this.config.d.length + 1;
        Object key = getKey(t);
        if (key instanceof Long) {
            sQLiteStatement.bindLong(length, ((Long) key).longValue());
        } else if (key == null) {
            throw new DaoException("Cannot update entity without key - was it inserted before?");
        } else {
            sQLiteStatement.bindString(length, key.toString());
        }
        sQLiteStatement.execute();
        attachEntity(key, t, z);
    }

    /* access modifiers changed from: protected */
    public final void attachEntity(K k, T t, boolean z) {
        attachEntity(t);
        if (this.identityScope != null && k != null) {
            if (z) {
                this.identityScope.a(k, t);
            } else {
                this.identityScope.b(k, t);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void attachEntity(T t) {
    }

    public void updateInTx(Iterable<T> iterable) {
        c d = this.statements.d();
        this.db.a();
        try {
            synchronized (d) {
                if (this.identityScope != null) {
                    this.identityScope.b();
                }
                try {
                    if (this.isStandardSQLite) {
                        SQLiteStatement sQLiteStatement = (SQLiteStatement) d.f();
                        for (T updateInsideSynchronized : iterable) {
                            updateInsideSynchronized(updateInsideSynchronized, sQLiteStatement, false);
                        }
                    } else {
                        for (T updateInsideSynchronized2 : iterable) {
                            updateInsideSynchronized(updateInsideSynchronized2, d, false);
                        }
                    }
                    if (this.identityScope != null) {
                        this.identityScope.c();
                    }
                } catch (Throwable th) {
                    if (this.identityScope != null) {
                        this.identityScope.c();
                    }
                    throw th;
                }
            }
            this.db.c();
            try {
                e = null;
            } catch (RuntimeException e) {
                if (0 != 0) {
                    d.b("Could not end transaction (rethrowing initial exception)", e);
                    throw null;
                }
                throw e;
            }
        } catch (RuntimeException e2) {
            e = e2;
            try {
            } catch (RuntimeException e3) {
                if (e != null) {
                    d.b("Could not end transaction (rethrowing initial exception)", e3);
                    throw e;
                }
                throw e3;
            }
        } finally {
            try {
                this.db.b();
            } catch (RuntimeException e4) {
                if (0 != 0) {
                    d.b("Could not end transaction (rethrowing initial exception)", e4);
                    throw null;
                }
                throw e4;
            }
        }
        if (e != null) {
            throw e;
        }
    }

    public void updateInTx(T... tArr) {
        updateInTx((Iterable<T>) Arrays.asList(tArr));
    }

    /* access modifiers changed from: protected */
    public void assertSinglePk() {
        if (this.config.e.length != 1) {
            throw new DaoException(this + " (" + this.config.b + ") does not have a single-column primary key");
        }
    }

    public long count() {
        return this.statements.e().b();
    }

    /* access modifiers changed from: protected */
    public K getKeyVerified(T t) {
        K key = getKey(t);
        if (key != null) {
            return key;
        }
        if (t == null) {
            throw new NullPointerException("Entity may not be null");
        }
        throw new DaoException("Entity has no key");
    }

    @Experimental
    public org.greenrobot.greendao.d.b<T, K> rxPlain() {
        if (this.rxDaoPlain == null) {
            this.rxDaoPlain = new org.greenrobot.greendao.d.b<>(this);
        }
        return this.rxDaoPlain;
    }

    @Experimental
    public org.greenrobot.greendao.d.b<T, K> rx() {
        if (this.rxDao == null) {
            this.rxDao = new org.greenrobot.greendao.d.b<>(this, rx.e.e.b());
        }
        return this.rxDao;
    }

    public org.greenrobot.greendao.a.a getDatabase() {
        return this.db;
    }
}
