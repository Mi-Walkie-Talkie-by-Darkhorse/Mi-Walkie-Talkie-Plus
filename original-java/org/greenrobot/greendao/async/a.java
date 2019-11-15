package org.greenrobot.greendao.async;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import org.greenrobot.greendao.DaoException;
import org.greenrobot.greendao.d;

/* compiled from: AsyncOperationExecutor */
class a implements Callback, Runnable {
    private static ExecutorService a = Executors.newCachedThreadPool();
    private final BlockingQueue<AsyncOperation> b = new LinkedBlockingQueue();
    private volatile boolean c;
    private volatile int d = 50;
    private volatile b e;
    private volatile b f;
    private volatile int g = 50;
    private int h;
    private int i;
    private Handler j;

    a() {
    }

    /* JADX WARNING: Code restructure failed: missing block: B:13:0x0022, code lost:
        r1 = r0;
     */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void run() {
        /*
            r6 = this;
            r5 = 0
        L_0x0001:
            java.util.concurrent.BlockingQueue<org.greenrobot.greendao.async.AsyncOperation> r0 = r6.b     // Catch:{ InterruptedException -> 0x0042 }
            r2 = 1
            java.util.concurrent.TimeUnit r1 = java.util.concurrent.TimeUnit.SECONDS     // Catch:{ InterruptedException -> 0x0042 }
            java.lang.Object r0 = r0.poll(r2, r1)     // Catch:{ InterruptedException -> 0x0042 }
            org.greenrobot.greendao.async.AsyncOperation r0 = (org.greenrobot.greendao.async.AsyncOperation) r0     // Catch:{ InterruptedException -> 0x0042 }
            if (r0 != 0) goto L_0x0076
            monitor-enter(r6)     // Catch:{ InterruptedException -> 0x0042 }
            java.util.concurrent.BlockingQueue<org.greenrobot.greendao.async.AsyncOperation> r0 = r6.b     // Catch:{ all -> 0x0064 }
            java.lang.Object r0 = r0.poll()     // Catch:{ all -> 0x0064 }
            org.greenrobot.greendao.async.AsyncOperation r0 = (org.greenrobot.greendao.async.AsyncOperation) r0     // Catch:{ all -> 0x0064 }
            if (r0 != 0) goto L_0x0021
            r0 = 0
            r6.c = r0     // Catch:{ all -> 0x0064 }
            monitor-exit(r6)     // Catch:{ all -> 0x0064 }
            r6.c = r5
        L_0x0020:
            return
        L_0x0021:
            monitor-exit(r6)     // Catch:{ all -> 0x0064 }
            r1 = r0
        L_0x0023:
            boolean r0 = r1.a()     // Catch:{ InterruptedException -> 0x0042 }
            if (r0 == 0) goto L_0x0072
            java.util.concurrent.BlockingQueue<org.greenrobot.greendao.async.AsyncOperation> r0 = r6.b     // Catch:{ InterruptedException -> 0x0042 }
            int r2 = r6.g     // Catch:{ InterruptedException -> 0x0042 }
            long r2 = (long) r2     // Catch:{ InterruptedException -> 0x0042 }
            java.util.concurrent.TimeUnit r4 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch:{ InterruptedException -> 0x0042 }
            java.lang.Object r0 = r0.poll(r2, r4)     // Catch:{ InterruptedException -> 0x0042 }
            org.greenrobot.greendao.async.AsyncOperation r0 = (org.greenrobot.greendao.async.AsyncOperation) r0     // Catch:{ InterruptedException -> 0x0042 }
            if (r0 == 0) goto L_0x0072
            boolean r2 = r1.a(r0)     // Catch:{ InterruptedException -> 0x0042 }
            if (r2 == 0) goto L_0x006b
            r6.a(r1, r0)     // Catch:{ InterruptedException -> 0x0042 }
            goto L_0x0001
        L_0x0042:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ all -> 0x0067 }
            r1.<init>()     // Catch:{ all -> 0x0067 }
            java.lang.Thread r2 = java.lang.Thread.currentThread()     // Catch:{ all -> 0x0067 }
            java.lang.String r2 = r2.getName()     // Catch:{ all -> 0x0067 }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0067 }
            java.lang.String r2 = " was interruppted"
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ all -> 0x0067 }
            java.lang.String r1 = r1.toString()     // Catch:{ all -> 0x0067 }
            org.greenrobot.greendao.d.b(r1, r0)     // Catch:{ all -> 0x0067 }
            r6.c = r5
            goto L_0x0020
        L_0x0064:
            r0 = move-exception
            monitor-exit(r6)     // Catch:{ all -> 0x0064 }
            throw r0     // Catch:{ InterruptedException -> 0x0042 }
        L_0x0067:
            r0 = move-exception
            r6.c = r5
            throw r0
        L_0x006b:
            r6.b(r1)     // Catch:{ InterruptedException -> 0x0042 }
            r6.b(r0)     // Catch:{ InterruptedException -> 0x0042 }
            goto L_0x0001
        L_0x0072:
            r6.b(r1)     // Catch:{ InterruptedException -> 0x0042 }
            goto L_0x0001
        L_0x0076:
            r1 = r0
            goto L_0x0023
        */
        throw new UnsupportedOperationException("Method not decompiled: org.greenrobot.greendao.async.a.run():void");
    }

    private void a(AsyncOperation asyncOperation, AsyncOperation asyncOperation2) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        arrayList.add(asyncOperation);
        arrayList.add(asyncOperation2);
        org.greenrobot.greendao.a.a b2 = asyncOperation.b();
        b2.a();
        int i2 = 0;
        while (true) {
            try {
                if (i2 >= arrayList.size()) {
                    z = false;
                    break;
                }
                AsyncOperation asyncOperation3 = (AsyncOperation) arrayList.get(i2);
                c(asyncOperation3);
                if (asyncOperation3.c()) {
                    z = false;
                    break;
                }
                if (i2 == arrayList.size() - 1) {
                    AsyncOperation asyncOperation4 = (AsyncOperation) this.b.peek();
                    if (i2 >= this.d || !asyncOperation3.a(asyncOperation4)) {
                        b2.c();
                    } else {
                        AsyncOperation asyncOperation5 = (AsyncOperation) this.b.remove();
                        if (asyncOperation5 != asyncOperation4) {
                            throw new DaoException("Internal error: peeked op did not match removed op");
                        }
                        arrayList.add(asyncOperation5);
                    }
                }
                i2++;
            } finally {
                try {
                    b2.b();
                } catch (RuntimeException e2) {
                    d.a("Async transaction could not be ended, success so far was: " + false, e2);
                }
            }
        }
        b2.c();
        z = true;
        try {
        } catch (RuntimeException e3) {
            d.a("Async transaction could not be ended, success so far was: " + z, e3);
            z = false;
        }
        if (z) {
            int size = arrayList.size();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                AsyncOperation asyncOperation6 = (AsyncOperation) it.next();
                asyncOperation6.i = size;
                a(asyncOperation6);
            }
            return;
        }
        d.b("Reverted merged transaction because one of the operations failed. Executing operations one by one instead...");
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            AsyncOperation asyncOperation7 = (AsyncOperation) it2.next();
            asyncOperation7.e();
            b(asyncOperation7);
        }
    }

    private void a(AsyncOperation asyncOperation) {
        asyncOperation.d();
        b bVar = this.e;
        if (bVar != null) {
            bVar.a(asyncOperation);
        }
        if (this.f != null) {
            if (this.j == null) {
                this.j = new Handler(Looper.getMainLooper(), this);
            }
            this.j.sendMessage(this.j.obtainMessage(1, asyncOperation));
        }
        synchronized (this) {
            this.i++;
            if (this.i == this.h) {
                notifyAll();
            }
        }
    }

    private void b(AsyncOperation asyncOperation) {
        c(asyncOperation);
        a(asyncOperation);
    }

    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void c(org.greenrobot.greendao.async.AsyncOperation r4) {
        /*
            r3 = this;
            long r0 = java.lang.System.currentTimeMillis()
            r4.e = r0
            int[] r0 = org.greenrobot.greendao.async.a.AnonymousClass1.a     // Catch:{ Throwable -> 0x002e }
            org.greenrobot.greendao.async.AsyncOperation$OperationType r1 = r4.a     // Catch:{ Throwable -> 0x002e }
            int r1 = r1.ordinal()     // Catch:{ Throwable -> 0x002e }
            r0 = r0[r1]     // Catch:{ Throwable -> 0x002e }
            switch(r0) {
                case 1: goto L_0x0038;
                case 2: goto L_0x0040;
                case 3: goto L_0x004a;
                case 4: goto L_0x0056;
                case 5: goto L_0x005e;
                case 6: goto L_0x0068;
                case 7: goto L_0x0074;
                case 8: goto L_0x007c;
                case 9: goto L_0x0086;
                case 10: goto L_0x0092;
                case 11: goto L_0x009a;
                case 12: goto L_0x00a4;
                case 13: goto L_0x00b0;
                case 14: goto L_0x00b5;
                case 15: goto L_0x00ba;
                case 16: goto L_0x00ca;
                case 17: goto L_0x00da;
                case 18: goto L_0x00e3;
                case 19: goto L_0x00ea;
                case 20: goto L_0x00f6;
                case 21: goto L_0x0100;
                case 22: goto L_0x010e;
                default: goto L_0x0013;
            }     // Catch:{ Throwable -> 0x002e }
        L_0x0013:
            org.greenrobot.greendao.DaoException r0 = new org.greenrobot.greendao.DaoException     // Catch:{ Throwable -> 0x002e }
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch:{ Throwable -> 0x002e }
            r1.<init>()     // Catch:{ Throwable -> 0x002e }
            java.lang.String r2 = "Unsupported operation: "
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ Throwable -> 0x002e }
            org.greenrobot.greendao.async.AsyncOperation$OperationType r2 = r4.a     // Catch:{ Throwable -> 0x002e }
            java.lang.StringBuilder r1 = r1.append(r2)     // Catch:{ Throwable -> 0x002e }
            java.lang.String r1 = r1.toString()     // Catch:{ Throwable -> 0x002e }
            r0.<init>(r1)     // Catch:{ Throwable -> 0x002e }
            throw r0     // Catch:{ Throwable -> 0x002e }
        L_0x002e:
            r0 = move-exception
            r4.g = r0
        L_0x0031:
            long r0 = java.lang.System.currentTimeMillis()
            r4.f = r0
            return
        L_0x0038:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r0 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r1 = r4.c     // Catch:{ Throwable -> 0x002e }
            r0.delete(r1)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x0040:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r1 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r0 = r4.c     // Catch:{ Throwable -> 0x002e }
            java.lang.Iterable r0 = (java.lang.Iterable) r0     // Catch:{ Throwable -> 0x002e }
            r1.deleteInTx(r0)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x004a:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r1 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r0 = r4.c     // Catch:{ Throwable -> 0x002e }
            java.lang.Object[] r0 = (java.lang.Object[]) r0     // Catch:{ Throwable -> 0x002e }
            java.lang.Object[] r0 = (java.lang.Object[]) r0     // Catch:{ Throwable -> 0x002e }
            r1.deleteInTx((T[]) r0)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x0056:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r0 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r1 = r4.c     // Catch:{ Throwable -> 0x002e }
            r0.insert(r1)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x005e:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r1 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r0 = r4.c     // Catch:{ Throwable -> 0x002e }
            java.lang.Iterable r0 = (java.lang.Iterable) r0     // Catch:{ Throwable -> 0x002e }
            r1.insertInTx(r0)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x0068:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r1 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r0 = r4.c     // Catch:{ Throwable -> 0x002e }
            java.lang.Object[] r0 = (java.lang.Object[]) r0     // Catch:{ Throwable -> 0x002e }
            java.lang.Object[] r0 = (java.lang.Object[]) r0     // Catch:{ Throwable -> 0x002e }
            r1.insertInTx((T[]) r0)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x0074:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r0 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r1 = r4.c     // Catch:{ Throwable -> 0x002e }
            r0.insertOrReplace(r1)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x007c:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r1 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r0 = r4.c     // Catch:{ Throwable -> 0x002e }
            java.lang.Iterable r0 = (java.lang.Iterable) r0     // Catch:{ Throwable -> 0x002e }
            r1.insertOrReplaceInTx(r0)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x0086:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r1 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r0 = r4.c     // Catch:{ Throwable -> 0x002e }
            java.lang.Object[] r0 = (java.lang.Object[]) r0     // Catch:{ Throwable -> 0x002e }
            java.lang.Object[] r0 = (java.lang.Object[]) r0     // Catch:{ Throwable -> 0x002e }
            r1.insertOrReplaceInTx((T[]) r0)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x0092:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r0 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r1 = r4.c     // Catch:{ Throwable -> 0x002e }
            r0.update(r1)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x009a:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r1 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r0 = r4.c     // Catch:{ Throwable -> 0x002e }
            java.lang.Iterable r0 = (java.lang.Iterable) r0     // Catch:{ Throwable -> 0x002e }
            r1.updateInTx(r0)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x00a4:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r1 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r0 = r4.c     // Catch:{ Throwable -> 0x002e }
            java.lang.Object[] r0 = (java.lang.Object[]) r0     // Catch:{ Throwable -> 0x002e }
            java.lang.Object[] r0 = (java.lang.Object[]) r0     // Catch:{ Throwable -> 0x002e }
            r1.updateInTx((T[]) r0)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x00b0:
            r3.d(r4)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x00b5:
            r3.e(r4)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x00ba:
            java.lang.Object r0 = r4.c     // Catch:{ Throwable -> 0x002e }
            org.greenrobot.greendao.c.f r0 = (org.greenrobot.greendao.c.f) r0     // Catch:{ Throwable -> 0x002e }
            org.greenrobot.greendao.c.f r0 = r0.b()     // Catch:{ Throwable -> 0x002e }
            java.util.List r0 = r0.c()     // Catch:{ Throwable -> 0x002e }
            r4.h = r0     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x00ca:
            java.lang.Object r0 = r4.c     // Catch:{ Throwable -> 0x002e }
            org.greenrobot.greendao.c.f r0 = (org.greenrobot.greendao.c.f) r0     // Catch:{ Throwable -> 0x002e }
            org.greenrobot.greendao.c.f r0 = r0.b()     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r0 = r0.d()     // Catch:{ Throwable -> 0x002e }
            r4.h = r0     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x00da:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r0 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r1 = r4.c     // Catch:{ Throwable -> 0x002e }
            r0.deleteByKey(r1)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x00e3:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r0 = r4.b     // Catch:{ Throwable -> 0x002e }
            r0.deleteAll()     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x00ea:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r0 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r1 = r4.c     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r0 = r0.load(r1)     // Catch:{ Throwable -> 0x002e }
            r4.h = r0     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x00f6:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r0 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.util.List r0 = r0.loadAll()     // Catch:{ Throwable -> 0x002e }
            r4.h = r0     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x0100:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r0 = r4.b     // Catch:{ Throwable -> 0x002e }
            long r0 = r0.count()     // Catch:{ Throwable -> 0x002e }
            java.lang.Long r0 = java.lang.Long.valueOf(r0)     // Catch:{ Throwable -> 0x002e }
            r4.h = r0     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        L_0x010e:
            org.greenrobot.greendao.a<java.lang.Object, java.lang.Object> r0 = r4.b     // Catch:{ Throwable -> 0x002e }
            java.lang.Object r1 = r4.c     // Catch:{ Throwable -> 0x002e }
            r0.refresh(r1)     // Catch:{ Throwable -> 0x002e }
            goto L_0x0031
        */
        throw new UnsupportedOperationException("Method not decompiled: org.greenrobot.greendao.async.a.c(org.greenrobot.greendao.async.AsyncOperation):void");
    }

    private void d(AsyncOperation asyncOperation) {
        org.greenrobot.greendao.a.a b2 = asyncOperation.b();
        b2.a();
        try {
            ((Runnable) asyncOperation.c).run();
            b2.c();
        } finally {
            b2.b();
        }
    }

    private void e(AsyncOperation asyncOperation) throws Exception {
        org.greenrobot.greendao.a.a b2 = asyncOperation.b();
        b2.a();
        try {
            asyncOperation.h = ((Callable) asyncOperation.c).call();
            b2.c();
        } finally {
            b2.b();
        }
    }

    public boolean handleMessage(Message message) {
        b bVar = this.f;
        if (bVar != null) {
            bVar.a((AsyncOperation) message.obj);
        }
        return false;
    }
}
