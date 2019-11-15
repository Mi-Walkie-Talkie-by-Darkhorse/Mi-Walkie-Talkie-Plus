package com.liulishuo.filedownloader;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;

/* compiled from: FileDownloadMessageStation */
public class j {
    static int a = 10;
    static int b = 5;
    private final Executor c;
    private final Handler d;
    private final LinkedBlockingQueue<t> e;
    private final Object f;
    private final ArrayList<t> g;

    /* compiled from: FileDownloadMessageStation */
    private static final class a {
        /* access modifiers changed from: private */
        public static final j a = new j();
    }

    /* compiled from: FileDownloadMessageStation */
    private static class b implements Callback {
        private b() {
        }

        public boolean handleMessage(Message message) {
            if (message.what == 1) {
                ((t) message.obj).b();
            } else if (message.what == 2) {
                a((ArrayList) message.obj);
                j.a().c();
            }
            return true;
        }

        private void a(ArrayList<t> arrayList) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((t) it.next()).b();
            }
            arrayList.clear();
        }
    }

    public static j a() {
        return a.a;
    }

    private j() {
        this.c = com.liulishuo.filedownloader.e.b.a(5, "BlockCompleted");
        this.f = new Object();
        this.g = new ArrayList<>();
        this.d = new Handler(Looper.getMainLooper(), new b());
        this.e = new LinkedBlockingQueue<>();
    }

    /* access modifiers changed from: 0000 */
    public void a(t tVar) {
        a(tVar, false);
    }

    /* access modifiers changed from: 0000 */
    public void a(final t tVar, boolean z) {
        if (tVar.c()) {
            tVar.b();
        } else if (tVar.d()) {
            this.c.execute(new Runnable() {
                public void run() {
                    tVar.b();
                }
            });
        } else {
            if (!b() && !this.e.isEmpty()) {
                synchronized (this.f) {
                    if (!this.e.isEmpty()) {
                        Iterator it = this.e.iterator();
                        while (it.hasNext()) {
                            b((t) it.next());
                        }
                    }
                    this.e.clear();
                }
            }
            if (!b() || z) {
                b(tVar);
            } else {
                c(tVar);
            }
        }
    }

    private void b(t tVar) {
        this.d.sendMessage(this.d.obtainMessage(1, tVar));
    }

    private void c(t tVar) {
        synchronized (this.f) {
            this.e.offer(tVar);
        }
        c();
    }

    /* access modifiers changed from: private */
    /* JADX WARNING: Code restructure failed: missing block: B:18:0x0029, code lost:
        r6.d.sendMessageDelayed(r6.d.obtainMessage(2, r6.g), (long) r0);
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:?, code lost:
        return;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void c() {
        /*
            r6 = this;
            r0 = 0
            java.lang.Object r2 = r6.f
            monitor-enter(r2)
            java.util.ArrayList<com.liulishuo.filedownloader.t> r1 = r6.g     // Catch:{ all -> 0x0018 }
            boolean r1 = r1.isEmpty()     // Catch:{ all -> 0x0018 }
            if (r1 != 0) goto L_0x000e
            monitor-exit(r2)     // Catch:{ all -> 0x0018 }
        L_0x000d:
            return
        L_0x000e:
            java.util.concurrent.LinkedBlockingQueue<com.liulishuo.filedownloader.t> r1 = r6.e     // Catch:{ all -> 0x0018 }
            boolean r1 = r1.isEmpty()     // Catch:{ all -> 0x0018 }
            if (r1 == 0) goto L_0x001b
            monitor-exit(r2)     // Catch:{ all -> 0x0018 }
            goto L_0x000d
        L_0x0018:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0018 }
            throw r0
        L_0x001b:
            boolean r1 = b()     // Catch:{ all -> 0x0018 }
            if (r1 != 0) goto L_0x0039
            java.util.concurrent.LinkedBlockingQueue<com.liulishuo.filedownloader.t> r1 = r6.e     // Catch:{ all -> 0x0018 }
            java.util.ArrayList<com.liulishuo.filedownloader.t> r3 = r6.g     // Catch:{ all -> 0x0018 }
            r1.drainTo(r3)     // Catch:{ all -> 0x0018 }
        L_0x0028:
            monitor-exit(r2)     // Catch:{ all -> 0x0018 }
            android.os.Handler r1 = r6.d
            android.os.Handler r2 = r6.d
            r3 = 2
            java.util.ArrayList<com.liulishuo.filedownloader.t> r4 = r6.g
            android.os.Message r2 = r2.obtainMessage(r3, r4)
            long r4 = (long) r0
            r1.sendMessageDelayed(r2, r4)
            goto L_0x000d
        L_0x0039:
            int r1 = a     // Catch:{ all -> 0x0018 }
            java.util.concurrent.LinkedBlockingQueue<com.liulishuo.filedownloader.t> r3 = r6.e     // Catch:{ all -> 0x0018 }
            int r3 = r3.size()     // Catch:{ all -> 0x0018 }
            int r4 = b     // Catch:{ all -> 0x0018 }
            int r3 = java.lang.Math.min(r3, r4)     // Catch:{ all -> 0x0018 }
        L_0x0047:
            if (r0 >= r3) goto L_0x0057
            java.util.ArrayList<com.liulishuo.filedownloader.t> r4 = r6.g     // Catch:{ all -> 0x0018 }
            java.util.concurrent.LinkedBlockingQueue<com.liulishuo.filedownloader.t> r5 = r6.e     // Catch:{ all -> 0x0018 }
            java.lang.Object r5 = r5.remove()     // Catch:{ all -> 0x0018 }
            r4.add(r5)     // Catch:{ all -> 0x0018 }
            int r0 = r0 + 1
            goto L_0x0047
        L_0x0057:
            r0 = r1
            goto L_0x0028
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.j.c():void");
    }

    public static boolean b() {
        return a > 0;
    }
}
