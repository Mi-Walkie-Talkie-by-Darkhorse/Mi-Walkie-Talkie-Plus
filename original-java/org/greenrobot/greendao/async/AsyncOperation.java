package org.greenrobot.greendao.async;

import org.greenrobot.greendao.a;

public class AsyncOperation {
    final OperationType a;
    final a<Object, Object> b;
    final Object c;
    final int d;
    volatile long e;
    volatile long f;
    volatile Throwable g;
    volatile Object h;
    volatile int i;
    private final org.greenrobot.greendao.a.a j;
    private volatile boolean k;

    public enum OperationType {
        Insert,
        InsertInTxIterable,
        InsertInTxArray,
        InsertOrReplace,
        InsertOrReplaceInTxIterable,
        InsertOrReplaceInTxArray,
        Update,
        UpdateInTxIterable,
        UpdateInTxArray,
        Delete,
        DeleteInTxIterable,
        DeleteInTxArray,
        DeleteByKey,
        DeleteAll,
        TransactionRunnable,
        TransactionCallable,
        QueryList,
        QueryUnique,
        Load,
        LoadAll,
        Count,
        Refresh
    }

    public boolean a() {
        return (this.d & 1) != 0;
    }

    /* access modifiers changed from: 0000 */
    public org.greenrobot.greendao.a.a b() {
        return this.j != null ? this.j : this.b.getDatabase();
    }

    /* access modifiers changed from: 0000 */
    public boolean a(AsyncOperation asyncOperation) {
        return asyncOperation != null && a() && asyncOperation.a() && b() == asyncOperation.b();
    }

    public boolean c() {
        return this.g != null;
    }

    /* access modifiers changed from: 0000 */
    public synchronized void d() {
        this.k = true;
        notifyAll();
    }

    /* access modifiers changed from: 0000 */
    public void e() {
        this.e = 0;
        this.f = 0;
        this.k = false;
        this.g = null;
        this.h = null;
        this.i = 0;
    }
}
