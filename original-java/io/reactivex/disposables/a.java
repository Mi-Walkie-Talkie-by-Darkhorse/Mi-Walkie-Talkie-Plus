package io.reactivex.disposables;

import io.reactivex.annotations.NonNull;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.internal.util.i;
import java.util.ArrayList;
import java.util.List;

/* compiled from: CompositeDisposable */
public final class a implements b, io.reactivex.internal.disposables.a {
    i<b> a;
    volatile boolean b;

    public void dispose() {
        if (!this.b) {
            synchronized (this) {
                if (!this.b) {
                    this.b = true;
                    i<b> iVar = this.a;
                    this.a = null;
                    a(iVar);
                }
            }
        }
    }

    public boolean isDisposed() {
        return this.b;
    }

    public boolean a(@NonNull b bVar) {
        io.reactivex.internal.functions.a.a(bVar, "d is null");
        if (!this.b) {
            synchronized (this) {
                if (!this.b) {
                    i<b> iVar = this.a;
                    if (iVar == null) {
                        iVar = new i<>();
                        this.a = iVar;
                    }
                    iVar.a(bVar);
                    return true;
                }
            }
        }
        bVar.dispose();
        return false;
    }

    public boolean b(@NonNull b bVar) {
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
    public boolean c(@io.reactivex.annotations.NonNull io.reactivex.disposables.b r3) {
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
            io.reactivex.internal.util.i<io.reactivex.disposables.b> r1 = r2.a     // Catch:{ all -> 0x0012 }
            if (r1 == 0) goto L_0x001f
            boolean r1 = r1.b(r3)     // Catch:{ all -> 0x0012 }
            if (r1 != 0) goto L_0x0021
        L_0x001f:
            monitor-exit(r2)     // Catch:{ all -> 0x0012 }
            goto L_0x000a
        L_0x0021:
            monitor-exit(r2)     // Catch:{ all -> 0x0012 }
            r0 = 1
            goto L_0x000a
        */
        throw new UnsupportedOperationException("Method not decompiled: io.reactivex.disposables.a.c(io.reactivex.disposables.b):boolean");
    }

    /* access modifiers changed from: 0000 */
    public void a(i<b> iVar) {
        Object[] b2;
        List list;
        if (iVar != null) {
            List list2 = null;
            for (Object obj : iVar.b()) {
                if (obj instanceof b) {
                    try {
                        ((b) obj).dispose();
                    } catch (Throwable th) {
                        Throwable th2 = th;
                        io.reactivex.exceptions.a.b(th2);
                        if (list2 == null) {
                            list = new ArrayList();
                        } else {
                            list = list2;
                        }
                        list.add(th2);
                        list2 = list;
                    }
                }
            }
            if (list2 == null) {
                return;
            }
            if (list2.size() == 1) {
                throw ExceptionHelper.a((Throwable) list2.get(0));
            }
            throw new CompositeException((Iterable<? extends Throwable>) list2);
        }
    }
}
