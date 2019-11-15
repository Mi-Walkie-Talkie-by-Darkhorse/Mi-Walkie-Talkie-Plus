package com.autonavi.ae.gmap.maploader;

import com.autonavi.ae.gmap.GLMapEngine;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.ArrayList;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public class ConnectionManager extends SingalThread {
    private static final int MAX_THREAD_COUNT = 5;
    private ArrayList<BaseMapLoader> mConnPool = new ArrayList<>();
    GLMapEngine mGLMapEngine;
    private ExecutorService mThreadPool = Executors.newFixedThreadPool(5);
    private ArrayList<AsMapRequestor> mThreadPoolList = new ArrayList<>();
    public boolean threadFlag = true;

    public ConnectionManager(GLMapEngine gLMapEngine) {
        this.mGLMapEngine = gLMapEngine;
    }

    public void shutDown() {
        if (this.mConnPool != null) {
            try {
                this.mThreadPool.shutdownNow();
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
    }

    public void insertConntionTask(BaseMapLoader baseMapLoader) {
        synchronized (this.mConnPool) {
            try {
                this.mConnPool.add(baseMapLoader);
            } catch (Throwable th) {
                ThrowableExtension.printStackTrace(th);
            }
        }
        try {
            doAwake();
        } catch (Throwable th2) {
            ThrowableExtension.printStackTrace(th2);
        }
    }

    private void checkListPool() {
        ArrayList arrayList = new ArrayList();
        int size = this.mThreadPoolList.size();
        for (int i = 0; i < size; i++) {
            AsMapRequestor asMapRequestor = (AsMapRequestor) this.mThreadPoolList.get(i);
            BaseMapLoader baseMapLoader = asMapRequestor.mMapLoader;
            if (!baseMapLoader.isRequestValid() || baseMapLoader.hasFinished()) {
                arrayList.add(asMapRequestor);
                baseMapLoader.doCancel();
            }
        }
        this.mThreadPoolList.removeAll(arrayList);
    }

    public void run() {
        try {
            doAsyncRequest();
        } catch (Throwable th) {
            ThrowableExtension.printStackTrace(th);
        }
    }

    /* JADX WARNING: Code restructure failed: missing block: B:26:?, code lost:
        r4.mGLMapEngine.clearAllRequestTiles();
     */
    /* JADX WARNING: Code restructure failed: missing block: B:28:0x0054, code lost:
        r0 = false;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void doAsyncRequest() {
        /*
            r4 = this;
            r1 = 0
        L_0x0001:
            boolean r0 = r4.threadFlag
            if (r0 == 0) goto L_0x0063
            r4.checkListPool()
        L_0x0008:
            java.util.ArrayList<com.autonavi.ae.gmap.maploader.AsMapRequestor> r0 = r4.mThreadPoolList
            int r0 = r0.size()
            r2 = 5
            if (r0 <= r2) goto L_0x001c
            r0 = 1
        L_0x0012:
            if (r0 == 0) goto L_0x0059
            r2 = 30
            sleep(r2)     // Catch:{ Exception -> 0x001a }
            goto L_0x0001
        L_0x001a:
            r0 = move-exception
            goto L_0x0001
        L_0x001c:
            java.util.ArrayList<com.autonavi.ae.gmap.maploader.BaseMapLoader> r2 = r4.mConnPool
            monitor-enter(r2)
            java.util.ArrayList<com.autonavi.ae.gmap.maploader.BaseMapLoader> r0 = r4.mConnPool     // Catch:{ all -> 0x0056 }
            int r0 = r0.size()     // Catch:{ all -> 0x0056 }
            if (r0 <= 0) goto L_0x004e
            java.util.ArrayList<com.autonavi.ae.gmap.maploader.BaseMapLoader> r0 = r4.mConnPool     // Catch:{ all -> 0x0056 }
            r3 = 0
            java.lang.Object r0 = r0.remove(r3)     // Catch:{ all -> 0x0056 }
            com.autonavi.ae.gmap.maploader.BaseMapLoader r0 = (com.autonavi.ae.gmap.maploader.BaseMapLoader) r0     // Catch:{ all -> 0x0056 }
            monitor-exit(r2)     // Catch:{ all -> 0x0056 }
            if (r0 == 0) goto L_0x004a
            com.autonavi.ae.gmap.maploader.AsMapRequestor r2 = new com.autonavi.ae.gmap.maploader.AsMapRequestor
            r2.<init>(r0)
            java.util.ArrayList<com.autonavi.ae.gmap.maploader.AsMapRequestor> r3 = r4.mThreadPoolList
            r3.add(r2)
            java.util.concurrent.ExecutorService r3 = r4.mThreadPool
            boolean r3 = r3.isShutdown()
            if (r3 != 0) goto L_0x004a
            java.util.concurrent.ExecutorService r3 = r4.mThreadPool
            r3.execute(r2)
        L_0x004a:
            if (r0 != 0) goto L_0x0008
            r0 = r1
            goto L_0x0012
        L_0x004e:
            com.autonavi.ae.gmap.GLMapEngine r0 = r4.mGLMapEngine     // Catch:{ all -> 0x0056 }
            r0.clearAllRequestTiles()     // Catch:{ all -> 0x0056 }
            monitor-exit(r2)     // Catch:{ all -> 0x0056 }
            r0 = r1
            goto L_0x0012
        L_0x0056:
            r0 = move-exception
            monitor-exit(r2)     // Catch:{ all -> 0x0056 }
            throw r0
        L_0x0059:
            boolean r0 = r4.threadFlag     // Catch:{ Throwable -> 0x0061 }
            if (r0 == 0) goto L_0x0001
            r4.doWait()     // Catch:{ Throwable -> 0x0061 }
            goto L_0x0001
        L_0x0061:
            r0 = move-exception
            goto L_0x0001
        L_0x0063:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.autonavi.ae.gmap.maploader.ConnectionManager.doAsyncRequest():void");
    }
}
