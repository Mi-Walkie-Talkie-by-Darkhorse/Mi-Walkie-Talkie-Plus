package com.liulishuo.filedownloader;

import com.liulishuo.filedownloader.a.b;
import com.liulishuo.filedownloader.e.d;
import com.liulishuo.filedownloader.event.DownloadServiceConnectChangedEvent.ConnectStatus;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* compiled from: LostServiceConnectedHandler */
public class z extends e implements v {
    private final ArrayList<b> a = new ArrayList<>();

    public void a() {
        w d = r.a().d();
        if (d.a) {
            d.c(this, "The downloader service is connected.", new Object[0]);
        }
        synchronized (this.a) {
            List<b> list = (List) this.a.clone();
            this.a.clear();
            ArrayList arrayList = new ArrayList(d.b());
            for (b bVar : list) {
                int B = bVar.B();
                if (d.a(B)) {
                    bVar.y().a().a();
                    if (!arrayList.contains(Integer.valueOf(B))) {
                        arrayList.add(Integer.valueOf(B));
                    }
                } else {
                    bVar.G();
                }
            }
            d.a((List<Integer>) arrayList);
        }
    }

    public void b() {
        if (c() == ConnectStatus.lost) {
            w d = r.a().d();
            if (d.a) {
                d.c(this, "lost the connection to the file download service, and current active task size is %d", Integer.valueOf(h.a().b()));
            }
            if (h.a().b() > 0) {
                synchronized (this.a) {
                    h.a().a((List<b>) this.a);
                    Iterator it = this.a.iterator();
                    while (it.hasNext()) {
                        ((b) it.next()).F();
                    }
                    d.a();
                }
                r.a().b();
            }
        } else if (h.a().b() > 0) {
            d.d(this, "file download service has be unbound but the size of active tasks are not empty %d ", Integer.valueOf(h.a().b()));
        }
    }

    public boolean a(b bVar) {
        return !this.a.isEmpty() && this.a.contains(bVar);
    }

    public void b(b bVar) {
        if (!this.a.isEmpty()) {
            synchronized (this.a) {
                this.a.remove(bVar);
            }
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:23:?, code lost:
        return true;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean c(com.liulishuo.filedownloader.a.b r7) {
        /*
            r6 = this;
            r0 = 1
            r1 = 0
            com.liulishuo.filedownloader.r r2 = com.liulishuo.filedownloader.r.a()
            boolean r2 = r2.c()
            if (r2 != 0) goto L_0x0052
            java.util.ArrayList<com.liulishuo.filedownloader.a$b> r2 = r6.a
            monitor-enter(r2)
            com.liulishuo.filedownloader.r r3 = com.liulishuo.filedownloader.r.a()     // Catch:{ all -> 0x0057 }
            boolean r3 = r3.c()     // Catch:{ all -> 0x0057 }
            if (r3 != 0) goto L_0x0051
            boolean r1 = com.liulishuo.filedownloader.e.d.a     // Catch:{ all -> 0x0057 }
            if (r1 == 0) goto L_0x0034
            java.lang.String r1 = "Waiting for connecting with the downloader service... %d"
            r3 = 1
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch:{ all -> 0x0057 }
            r4 = 0
            com.liulishuo.filedownloader.a r5 = r7.y()     // Catch:{ all -> 0x0057 }
            int r5 = r5.d()     // Catch:{ all -> 0x0057 }
            java.lang.Integer r5 = java.lang.Integer.valueOf(r5)     // Catch:{ all -> 0x0057 }
            r3[r4] = r5     // Catch:{ all -> 0x0057 }
            com.liulishuo.filedownloader.e.d.c(r6, r1, r3)     // Catch:{ all -> 0x0057 }
        L_0x0034:
            com.liulishuo.filedownloader.n r1 = com.liulishuo.filedownloader.n.a()     // Catch:{ all -> 0x0057 }
            android.content.Context r3 = com.liulishuo.filedownloader.e.c.a()     // Catch:{ all -> 0x0057 }
            r1.a(r3)     // Catch:{ all -> 0x0057 }
            java.util.ArrayList<com.liulishuo.filedownloader.a$b> r1 = r6.a     // Catch:{ all -> 0x0057 }
            boolean r1 = r1.contains(r7)     // Catch:{ all -> 0x0057 }
            if (r1 != 0) goto L_0x004f
            r7.F()     // Catch:{ all -> 0x0057 }
            java.util.ArrayList<com.liulishuo.filedownloader.a$b> r1 = r6.a     // Catch:{ all -> 0x0057 }
            r1.add(r7)     // Catch:{ all -> 0x0057 }
        L_0x004f:
            monitor-exit(r2)     // Catch:{ all -> 0x0057 }
        L_0x0050:
            return r0
        L_0x0051:
            monitor-exit(r2)     // Catch:{ all -> 0x0057 }
        L_0x0052:
            r6.b(r7)
            r0 = r1
            goto L_0x0050
        L_0x0057:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0057 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.z.c(com.liulishuo.filedownloader.a$b):boolean");
    }
}
