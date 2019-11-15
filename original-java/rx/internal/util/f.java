package rx.internal.util;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedList;
import java.util.List;
import rx.exceptions.a;

/* compiled from: SubscriptionList */
public final class f implements rx.f {
    private LinkedList<rx.f> a;
    private volatile boolean b;

    public f() {
    }

    public f(rx.f... fVarArr) {
        this.a = new LinkedList<>(Arrays.asList(fVarArr));
    }

    public f(rx.f fVar) {
        this.a = new LinkedList<>();
        this.a.add(fVar);
    }

    public boolean isUnsubscribed() {
        return this.b;
    }

    public void a(rx.f fVar) {
        if (!fVar.isUnsubscribed()) {
            if (!this.b) {
                synchronized (this) {
                    if (!this.b) {
                        LinkedList<rx.f> linkedList = this.a;
                        if (linkedList == null) {
                            linkedList = new LinkedList<>();
                            this.a = linkedList;
                        }
                        linkedList.add(fVar);
                        return;
                    }
                }
            }
            fVar.unsubscribe();
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:10:0x0014, code lost:
        if (r0 == false) goto L_?;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:11:0x0016, code lost:
        r3.unsubscribe();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:19:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:21:?, code lost:
        return;
     */
    /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void b(rx.f r3) {
        /*
            r2 = this;
            boolean r0 = r2.b
            if (r0 != 0) goto L_0x000e
            monitor-enter(r2)
            java.util.LinkedList<rx.f> r0 = r2.a     // Catch:{ all -> 0x001a }
            boolean r1 = r2.b     // Catch:{ all -> 0x001a }
            if (r1 != 0) goto L_0x000d
            if (r0 != 0) goto L_0x000f
        L_0x000d:
            monitor-exit(r2)     // Catch:{ all -> 0x001a }
        L_0x000e:
            return
        L_0x000f:
            boolean r0 = r0.remove(r3)     // Catch:{ all -> 0x001a }
            monitor-exit(r2)     // Catch:{ all -> 0x001a }
            if (r0 == 0) goto L_0x000e
            r3.unsubscribe()
            goto L_0x000e
        L_0x001a:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x001a }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.util.f.b(rx.f):void");
    }

    public void unsubscribe() {
        if (!this.b) {
            synchronized (this) {
                if (!this.b) {
                    this.b = true;
                    LinkedList<rx.f> linkedList = this.a;
                    this.a = null;
                    a((Collection<rx.f>) linkedList);
                }
            }
        }
    }

    private static void a(Collection<rx.f> collection) {
        List list;
        if (collection != null) {
            List list2 = null;
            for (rx.f unsubscribe : collection) {
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
