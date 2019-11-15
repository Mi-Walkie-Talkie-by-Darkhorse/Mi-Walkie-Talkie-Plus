package io.reactivex.internal.disposables;

import io.reactivex.disposables.b;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.functions.a;
import io.reactivex.internal.util.ExceptionHelper;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* compiled from: ListCompositeDisposable */
public final class e implements b, a {
    List<b> a;
    volatile boolean b;

    public void dispose() {
        if (!this.b) {
            synchronized (this) {
                if (!this.b) {
                    this.b = true;
                    List<b> list = this.a;
                    this.a = null;
                    a(list);
                }
            }
        }
    }

    public boolean isDisposed() {
        return this.b;
    }

    public boolean a(b bVar) {
        a.a(bVar, "d is null");
        if (!this.b) {
            synchronized (this) {
                if (!this.b) {
                    List list = this.a;
                    if (list == null) {
                        list = new LinkedList();
                        this.a = list;
                    }
                    list.add(bVar);
                    return true;
                }
            }
        }
        bVar.dispose();
        return false;
    }

    public boolean b(b bVar) {
        if (!c(bVar)) {
            return false;
        }
        bVar.dispose();
        return true;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:22:?, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean c(io.reactivex.disposables.b r3) {
        /*
            r2 = this;
            r0 = 0
            java.lang.String r1 = "Disposable item is null"
            io.reactivex.internal.functions.a.a(r3, r1)
            boolean r1 = r2.b
            if (r1 == 0) goto L_0x000b
        L_0x000a:
            return r0
        L_0x000b:
            monitor-enter(r2)
            boolean r1 = r2.b     // Catch:{ all -> 0x0012 }
            if (r1 == 0) goto L_0x0015
            monitor-exit(r2)     // Catch:{ all -> 0x0012 }
            goto L_0x000a
        L_0x0012:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0012 }
            throw r0
        L_0x0015:
            java.util.List<io.reactivex.disposables.b> r1 = r2.a     // Catch:{ all -> 0x0012 }
            if (r1 == 0) goto L_0x001f
            boolean r1 = r1.remove(r3)     // Catch:{ all -> 0x0012 }
            if (r1 != 0) goto L_0x0021
        L_0x001f:
            monitor-exit(r2)     // Catch:{ all -> 0x0012 }
            goto L_0x000a
        L_0x0021:
            monitor-exit(r2)     // Catch:{ all -> 0x0012 }
            r0 = 1
            goto L_0x000a
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.disposables.e.c(io.reactivex.disposables.b):boolean");
    }

    /* access modifiers changed from: 0000 */
    public void a(List<b> list) {
        List list2;
        if (list != null) {
            List list3 = null;
            for (b dispose : list) {
                try {
                    dispose.dispose();
                } catch (Throwable th) {
                    io.reactivex.exceptions.a.b(th);
                    if (list3 == null) {
                        list2 = new ArrayList();
                    } else {
                        list2 = list3;
                    }
                    list2.add(th);
                    list3 = list2;
                }
            }
            if (list3 == null) {
                return;
            }
            if (list3.size() == 1) {
                throw ExceptionHelper.a((Throwable) list3.get(0));
            }
            throw new CompositeException((Iterable<? extends Throwable>) list3);
        }
    }
}
