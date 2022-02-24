package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public class ak {

    /* renamed from: a  reason: collision with root package name */
    private static volatile ak f8737a;

    /* renamed from: a  reason: collision with other field name */
    private SharedPreferences f85a;

    /* renamed from: a  reason: collision with other field name */
    private ScheduledThreadPoolExecutor f88a = new ScheduledThreadPoolExecutor(1);

    /* renamed from: a  reason: collision with other field name */
    private Map<String, ScheduledFuture> f87a = new HashMap();

    /* renamed from: a  reason: collision with other field name */
    private Object f86a = new Object();

    /* loaded from: classes2.dex */
    public static abstract class a implements Runnable {
        /* renamed from: a */
        public abstract String mo168a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        a f8738a;

        public b(a aVar) {
            this.f8738a = aVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void a() {
        }

        void b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a();
            this.f8738a.run();
            b();
        }
    }

    private ak(Context context) {
        this.f85a = context.getSharedPreferences("mipush_extra", 0);
    }

    public static ak a(Context context) {
        if (f8737a == null) {
            synchronized (ak.class) {
                if (f8737a == null) {
                    f8737a = new ak(context);
                }
            }
        }
        return f8737a;
    }

    private static String a(String str) {
        return "last_job_time" + str;
    }

    private ScheduledFuture a(a aVar) {
        ScheduledFuture scheduledFuture;
        synchronized (this.f86a) {
            scheduledFuture = this.f87a.get(aVar.mo168a());
        }
        return scheduledFuture;
    }

    public void a(Runnable runnable) {
        a(runnable, 0);
    }

    public void a(Runnable runnable, int i) {
        this.f88a.schedule(runnable, i, TimeUnit.SECONDS);
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m68a(a aVar) {
        return b(aVar, 0);
    }

    public boolean a(a aVar, int i) {
        return a(aVar, i, 0);
    }

    public boolean a(a aVar, int i, int i2) {
        return a(aVar, i, i2, false);
    }

    public boolean a(a aVar, int i, int i2, boolean z) {
        if (aVar == null || a(aVar) != null) {
            return false;
        }
        String a2 = a(aVar.mo168a());
        al alVar = new al(this, aVar, z, a2);
        if (!z) {
            long abs = Math.abs(System.currentTimeMillis() - this.f85a.getLong(a2, 0L)) / 1000;
            if (abs < i - i2) {
                i2 = (int) (i - abs);
            }
        }
        try {
            ScheduledFuture<?> scheduleAtFixedRate = this.f88a.scheduleAtFixedRate(alVar, i2, i, TimeUnit.SECONDS);
            synchronized (this.f86a) {
                this.f87a.put(aVar.mo168a(), scheduleAtFixedRate);
            }
            return true;
        } catch (Exception e) {
            com.xiaomi.channel.commonutils.logger.b.a(e);
            return true;
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public boolean m69a(String str) {
        synchronized (this.f86a) {
            ScheduledFuture scheduledFuture = this.f87a.get(str);
            if (scheduledFuture == null) {
                return false;
            }
            this.f87a.remove(str);
            return scheduledFuture.cancel(false);
        }
    }

    public boolean b(a aVar, int i) {
        if (aVar == null || a(aVar) != null) {
            return false;
        }
        ScheduledFuture<?> schedule = this.f88a.schedule(new am(this, aVar), i, TimeUnit.SECONDS);
        synchronized (this.f86a) {
            this.f87a.put(aVar.mo168a(), schedule);
        }
        return true;
    }
}
