package org.greenrobot.greendao.c;

import org.greenrobot.greendao.DaoException;
import org.greenrobot.greendao.e;

/* compiled from: AbstractQuery */
abstract class a<T> {
    protected final org.greenrobot.greendao.a<T, ?> a;
    protected final e<T> b;
    protected final String c;
    protected final String[] d;
    protected final Thread e = Thread.currentThread();

    protected static String[] a(Object[] objArr) {
        int length = objArr.length;
        String[] strArr = new String[length];
        for (int i = 0; i < length; i++) {
            Object obj = objArr[i];
            if (obj != null) {
                strArr[i] = obj.toString();
            } else {
                strArr[i] = null;
            }
        }
        return strArr;
    }

    protected a(org.greenrobot.greendao.a<T, ?> aVar, String str, String[] strArr) {
        this.a = aVar;
        this.b = new e<>(aVar);
        this.c = str;
        this.d = strArr;
    }

    /* access modifiers changed from: protected */
    public void a() {
        if (Thread.currentThread() != this.e) {
            throw new DaoException("Method may be called only in owner thread, use forCurrentThread to get an instance for this thread");
        }
    }
}
