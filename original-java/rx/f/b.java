package rx.f;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import rx.exceptions.a;
import rx.f;

/* compiled from: CompositeSubscription */
public final class b implements f {
    private Set<f> a;
    private volatile boolean b;

    public boolean isUnsubscribed() {
        return this.b;
    }

    public void a(f fVar) {
        if (!fVar.isUnsubscribed()) {
            if (!this.b) {
                synchronized (this) {
                    if (!this.b) {
                        if (this.a == null) {
                            this.a = new HashSet(4);
                        }
                        this.a.add(fVar);
                        return;
                    }
                }
            }
            fVar.unsubscribe();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0016, code lost:
        if (r0 == false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:12:0x0018, code lost:
        r2.unsubscribe();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:20:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(rx.f r2) {
        /*
            r1 = this;
            boolean r0 = r1.b
            if (r0 != 0) goto L_0x000e
            monitor-enter(r1)
            boolean r0 = r1.b     // Catch:{ all -> 0x001c }
            if (r0 != 0) goto L_0x000d
            java.util.Set<rx.f> r0 = r1.a     // Catch:{ all -> 0x001c }
            if (r0 != 0) goto L_0x000f
        L_0x000d:
            monitor-exit(r1)     // Catch:{ all -> 0x001c }
        L_0x000e:
            return
        L_0x000f:
            java.util.Set<rx.f> r0 = r1.a     // Catch:{ all -> 0x001c }
            boolean r0 = r0.remove(r2)     // Catch:{ all -> 0x001c }
            monitor-exit(r1)     // Catch:{ all -> 0x001c }
            if (r0 == 0) goto L_0x000e
            r2.unsubscribe()
            goto L_0x000e
        L_0x001c:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x001c }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.f.b.b(rx.f):void");
    }

    public void unsubscribe() {
        if (!this.b) {
            synchronized (this) {
                if (!this.b) {
                    this.b = true;
                    Set<f> set = this.a;
                    this.a = null;
                    a((Collection<f>) set);
                }
            }
        }
    }

    private static void a(Collection<f> collection) {
        List list;
        if (collection != null) {
            List list2 = null;
            for (f unsubscribe : collection) {
                try {
                    unsubscribe.unsubscribe();
                } catch (Throwable th) {
                    if (list2 == null) {
                        list = new ArrayList();
                    } else {
                        list = list2;
                    }
                    list.add(th);
                    list2 = list;
                }
            }
            a.a(list2);
        }
    }
}
