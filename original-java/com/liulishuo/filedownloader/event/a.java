package com.liulishuo.filedownloader.event;

import com.liulishuo.filedownloader.e.b;
import com.liulishuo.filedownloader.e.d;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.concurrent.Executor;

/* compiled from: DownloadEventPoolImpl */
public class a {
    private final Executor a = b.a(10, "EventPool");
    private final HashMap<String, LinkedList<c>> b = new HashMap<>();

    public boolean a(String str, c cVar) {
        boolean add;
        if (d.a) {
            d.e(this, "setListener %s", str);
        }
        if (cVar == null) {
            throw new IllegalArgumentException("listener must not be null!");
        }
        LinkedList linkedList = (LinkedList) this.b.get(str);
        if (linkedList == null) {
            synchronized (str.intern()) {
                linkedList = (LinkedList) this.b.get(str);
                if (linkedList == null) {
                    HashMap<String, LinkedList<c>> hashMap = this.b;
                    linkedList = new LinkedList();
                    hashMap.put(str, linkedList);
                }
            }
        }
        synchronized (str.intern()) {
            add = linkedList.add(cVar);
        }
        return add;
    }

    /* JADX WARNING: Code restructure failed: missing block: B:27:?, code lost:
        return false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public boolean a(com.liulishuo.filedownloader.event.b r7) {
        /*
            r6 = this;
            r2 = 1
            r1 = 0
            boolean r0 = com.liulishuo.filedownloader.e.d.a
            if (r0 == 0) goto L_0x0013
            java.lang.String r0 = "publish %s"
            java.lang.Object[] r3 = new java.lang.Object[r2]
            java.lang.String r4 = r7.b()
            r3[r1] = r4
            com.liulishuo.filedownloader.e.d.e(r6, r0, r3)
        L_0x0013:
            if (r7 != 0) goto L_0x001d
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "event must not be null!"
            r0.<init>(r1)
            throw r0
        L_0x001d:
            java.lang.String r3 = r7.b()
            java.util.HashMap<java.lang.String, java.util.LinkedList<com.liulishuo.filedownloader.event.c>> r0 = r6.b
            java.lang.Object r0 = r0.get(r3)
            java.util.LinkedList r0 = (java.util.LinkedList) r0
            if (r0 != 0) goto L_0x004d
            java.lang.String r4 = r3.intern()
            monitor-enter(r4)
            java.util.HashMap<java.lang.String, java.util.LinkedList<com.liulishuo.filedownloader.event.c>> r0 = r6.b     // Catch:{ all -> 0x0052 }
            java.lang.Object r0 = r0.get(r3)     // Catch:{ all -> 0x0052 }
            java.util.LinkedList r0 = (java.util.LinkedList) r0     // Catch:{ all -> 0x0052 }
            if (r0 != 0) goto L_0x004c
            boolean r0 = com.liulishuo.filedownloader.e.d.a     // Catch:{ all -> 0x0052 }
            if (r0 == 0) goto L_0x0049
            java.lang.String r0 = "No listener for this event %s"
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch:{ all -> 0x0052 }
            r5 = 0
            r2[r5] = r3     // Catch:{ all -> 0x0052 }
            com.liulishuo.filedownloader.e.d.c(r6, r0, r2)     // Catch:{ all -> 0x0052 }
        L_0x0049:
            monitor-exit(r4)     // Catch:{ all -> 0x0052 }
            r0 = r1
        L_0x004b:
            return r0
        L_0x004c:
            monitor-exit(r4)     // Catch:{ all -> 0x0052 }
        L_0x004d:
            r6.a(r0, r7)
            r0 = r2
            goto L_0x004b
        L_0x0052:
            r0 = move-exception
            monitor-exit(r4)     // Catch:{ all -> 0x0052 }
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.liulishuo.filedownloader.event.a.a(com.liulishuo.filedownloader.event.b):boolean");
    }

    public void b(final b bVar) {
        if (d.a) {
            d.e(this, "asyncPublishInNewThread %s", bVar.b());
        }
        if (bVar == null) {
            throw new IllegalArgumentException("event must not be null!");
        }
        this.a.execute(new Runnable() {
            public void run() {
                a.this.a(bVar);
            }
        });
    }

    private void a(LinkedList<c> linkedList, b bVar) {
        Object[] array;
        for (Object obj : linkedList.toArray()) {
            if (obj != null && ((c) obj).a(bVar)) {
                break;
            }
        }
        if (bVar.a != null) {
            bVar.a.run();
        }
    }
}
