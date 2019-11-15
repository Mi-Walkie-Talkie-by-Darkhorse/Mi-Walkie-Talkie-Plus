package org.greenrobot.greendao.c;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import org.greenrobot.greendao.c.a;

/* compiled from: AbstractQueryData */
abstract class b<T, Q extends a<T>> {
    final String a;
    final org.greenrobot.greendao.a<T, ?> b;
    final String[] c;
    final Map<Long, WeakReference<Q>> d = new HashMap();

    /* access modifiers changed from: protected */
    public abstract Q b();

    b(org.greenrobot.greendao.a<T, ?> aVar, String str, String[] strArr) {
        this.b = aVar;
        this.a = str;
        this.c = strArr;
    }

    /* access modifiers changed from: 0000 */
    public Q a(Q q) {
        if (Thread.currentThread() != q.e) {
            return a();
        }
        System.arraycopy(this.c, 0, q.d, 0, this.c.length);
        return q;
    }

    /* access modifiers changed from: 0000 */
    public Q a() {
        Q q;
        long id = Thread.currentThread().getId();
        synchronized (this.d) {
            WeakReference weakReference = (WeakReference) this.d.get(Long.valueOf(id));
            q = weakReference != null ? (a) weakReference.get() : null;
            if (q == null) {
                c();
                q = b();
                this.d.put(Long.valueOf(id), new WeakReference(q));
            } else {
                System.arraycopy(this.c, 0, q.d, 0, this.c.length);
            }
        }
        return q;
    }

    /* access modifiers changed from: 0000 */
    public void c() {
        synchronized (this.d) {
            Iterator it = this.d.entrySet().iterator();
            while (it.hasNext()) {
                if (((WeakReference) ((Entry) it.next()).getValue()).get() == null) {
                    it.remove();
                }
            }
        }
    }
}
