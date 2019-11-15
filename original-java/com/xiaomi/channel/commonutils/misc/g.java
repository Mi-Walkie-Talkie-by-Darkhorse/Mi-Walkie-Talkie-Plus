package com.xiaomi.channel.commonutils.misc;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.SparseArray;
import com.xiaomi.mipush.sdk.MiPushClient;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class g {
    private static volatile g a;
    private ScheduledThreadPoolExecutor b = new ScheduledThreadPoolExecutor(1);
    private SparseArray<ScheduledFuture> c = new SparseArray<>();
    private Object d = new Object();
    /* access modifiers changed from: private */
    public SharedPreferences e;

    public static abstract class a implements Runnable {
        public abstract int a();
    }

    private static class b implements Runnable {
        a c;

        public b(a aVar) {
            this.c = aVar;
        }

        /* access modifiers changed from: 0000 */
        public void a() {
        }

        /* access modifiers changed from: 0000 */
        public void b() {
        }

        public void run() {
            a();
            this.c.run();
            b();
        }
    }

    private g(Context context) {
        this.e = context.getSharedPreferences(MiPushClient.PREF_EXTRA, 0);
    }

    public static g a(Context context) {
        if (a == null) {
            synchronized (g.class) {
                if (a == null) {
                    a = new g(context);
                }
            }
        }
        return a;
    }

    private static String a(int i) {
        return "last_job_time" + i;
    }

    private ScheduledFuture a(a aVar) {
        ScheduledFuture scheduledFuture;
        synchronized (this.d) {
            scheduledFuture = (ScheduledFuture) this.c.get(aVar.a());
        }
        return scheduledFuture;
    }

    public void a(Runnable runnable) {
        a(runnable, 0);
    }

    public void a(Runnable runnable, int i) {
        this.b.schedule(runnable, (long) i, TimeUnit.SECONDS);
    }

    public boolean a(a aVar, int i) {
        return a(aVar, i, 0);
    }

    public boolean a(a aVar, int i, int i2) {
        if (aVar == null || a(aVar) != null) {
            return false;
        }
        String a2 = a(aVar.a());
        h hVar = new h(this, aVar, a2);
        long abs = Math.abs(System.currentTimeMillis() - this.e.getLong(a2, 0)) / 1000;
        if (abs < ((long) (i - i2))) {
            i2 = (int) (((long) i) - abs);
        }
        ScheduledFuture scheduleAtFixedRate = this.b.scheduleAtFixedRate(hVar, (long) i2, (long) i, TimeUnit.SECONDS);
        synchronized (this.d) {
            this.c.put(aVar.a(), scheduleAtFixedRate);
        }
        return true;
    }
}
