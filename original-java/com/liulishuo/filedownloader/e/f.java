package com.liulishuo.filedownloader.e;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.Message;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.liulishuo.filedownloader.a.C0042a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: FileDownloadSerialQueue */
public class f {
    volatile com.liulishuo.filedownloader.a a;
    final a b;
    volatile boolean c = false;
    private final Object d = new Object();
    /* access modifiers changed from: private */
    public final BlockingQueue<com.liulishuo.filedownloader.a> e = new LinkedBlockingQueue();
    private final List<com.liulishuo.filedownloader.a> f = new ArrayList();
    private final HandlerThread g = new HandlerThread(g.j("SerialDownloadManager"));
    private final Handler h;

    /* compiled from: FileDownloadSerialQueue */
    private static class a implements C0042a {
        private final WeakReference<f> a;

        a(WeakReference<f> weakReference) {
            this.a = weakReference;
        }

        public synchronized void a(com.liulishuo.filedownloader.a aVar) {
            aVar.b(this);
            if (this.a != null) {
                f fVar = (f) this.a.get();
                if (fVar != null) {
                    fVar.a = null;
                    if (!fVar.c) {
                        fVar.b();
                    }
                }
            }
        }
    }

    /* compiled from: FileDownloadSerialQueue */
    private class b implements Callback {
        private b() {
        }

        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    try {
                        if (!f.this.c) {
                            f.this.a = (com.liulishuo.filedownloader.a) f.this.e.take();
                            f.this.a.a((C0042a) f.this.b).c();
                            break;
                        }
                    } catch (InterruptedException e) {
                        break;
                    }
                    break;
            }
            return false;
        }
    }

    public f() {
        this.g.start();
        this.h = new Handler(this.g.getLooper(), new b());
        this.b = new a(new WeakReference(this));
        b();
    }

    public void a(com.liulishuo.filedownloader.a aVar) {
        synchronized (this.b) {
            if (this.c) {
                this.f.add(aVar);
                return;
            }
            try {
                this.e.put(aVar);
            } catch (InterruptedException e2) {
                ThrowableExtension.printStackTrace(e2);
            }
            return;
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:18:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void a() {
        /*
            r5 = this;
            com.liulishuo.filedownloader.e.f$a r1 = r5.b
            monitor-enter(r1)
            boolean r0 = r5.c     // Catch:{ all -> 0x0036 }
            if (r0 != 0) goto L_0x001e
            java.lang.String r0 = "require resume this queue(remain %d), but it is still running"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x0036 }
            r3 = 0
            java.util.concurrent.BlockingQueue<com.liulishuo.filedownloader.a> r4 = r5.e     // Catch:{ all -> 0x0036 }
            int r4 = r4.size()     // Catch:{ all -> 0x0036 }
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)     // Catch:{ all -> 0x0036 }
            r2[r3] = r4     // Catch:{ all -> 0x0036 }
            com.liulishuo.filedownloader.e.d.d(r5, r0, r2)     // Catch:{ all -> 0x0036 }
            monitor-exit(r1)     // Catch:{ all -> 0x0036 }
        L_0x001d:
            return
        L_0x001e:
            r0 = 0
            r5.c = r0     // Catch:{ all -> 0x0036 }
            java.util.concurrent.BlockingQueue<com.liulishuo.filedownloader.a> r0 = r5.e     // Catch:{ all -> 0x0036 }
            java.util.List<com.liulishuo.filedownloader.a> r2 = r5.f     // Catch:{ all -> 0x0036 }
            r0.addAll(r2)     // Catch:{ all -> 0x0036 }
            java.util.List<com.liulishuo.filedownloader.a> r0 = r5.f     // Catch:{ all -> 0x0036 }
            r0.clear()     // Catch:{ all -> 0x0036 }
            com.liulishuo.filedownloader.a r0 = r5.a     // Catch:{ all -> 0x0036 }
            if (r0 != 0) goto L_0x0039
            r5.b()     // Catch:{ all -> 0x0036 }
        L_0x0034:
            monitor-exit(r1)     // Catch:{ all -> 0x0036 }
            goto L_0x001d
        L_0x0036:
            r0 = move-exception
            monitor-exit(r1)     // Catch:{ all -> 0x0036 }
            throw r0
        L_0x0039:
            com.liulishuo.filedownloader.a r0 = r5.a     // Catch:{ all -> 0x0036 }
            com.liulishuo.filedownloader.e.f$a r2 = r5.b     // Catch:{ all -> 0x0036 }
            r0.a(r2)     // Catch:{ all -> 0x0036 }
            com.liulishuo.filedownloader.a r0 = r5.a     // Catch:{ all -> 0x0036 }
            r0.c()     // Catch:{ all -> 0x0036 }
            goto L_0x0034
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.e.f.a():void");
    }

    /* access modifiers changed from: private */
    public void b() {
        this.h.sendEmptyMessage(1);
    }
}
