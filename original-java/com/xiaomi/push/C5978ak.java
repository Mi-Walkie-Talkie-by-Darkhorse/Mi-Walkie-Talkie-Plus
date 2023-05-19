package com.xiaomi.push;

import android.content.Context;
import android.content.SharedPreferences;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* renamed from: com.xiaomi.push.ak */
/* loaded from: classes2.dex */
public class C5978ak {

    /* renamed from: a */
    private static volatile C5978ak f21001a;

    /* renamed from: a */
    private SharedPreferences f21002a;

    /* renamed from: a */
    private ScheduledThreadPoolExecutor f21005a = new ScheduledThreadPoolExecutor(1);

    /* renamed from: a */
    private Map<String, ScheduledFuture> f21004a = new HashMap();

    /* renamed from: a */
    private Object f21003a = new Object();

    /* renamed from: com.xiaomi.push.ak$a */
    /* loaded from: classes2.dex */
    public static abstract class AbstractRunnableC5979a implements Runnable {
        /* renamed from: a */
        public abstract String mo1397a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: com.xiaomi.push.ak$b */
    /* loaded from: classes2.dex */
    public static class RunnableC5980b implements Runnable {

        /* renamed from: a */
        AbstractRunnableC5979a f21006a;

        public RunnableC5980b(AbstractRunnableC5979a abstractRunnableC5979a) {
            this.f21006a = abstractRunnableC5979a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: a */
        public void mo3770a() {
        }

        /* renamed from: b */
        void mo3769b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            mo3770a();
            this.f21006a.run();
            mo3769b();
        }
    }

    private C5978ak(Context context) {
        this.f21002a = context.getSharedPreferences("mipush_extra", 0);
    }

    /* renamed from: a */
    public static C5978ak m3784a(Context context) {
        if (f21001a == null) {
            synchronized (C5978ak.class) {
                if (f21001a == null) {
                    f21001a = new C5978ak(context);
                }
            }
        }
        return f21001a;
    }

    /* renamed from: a */
    private static String m3773a(String str) {
        return "last_job_time" + str;
    }

    /* renamed from: a */
    private ScheduledFuture m3783a(AbstractRunnableC5979a abstractRunnableC5979a) {
        ScheduledFuture scheduledFuture;
        synchronized (this.f21003a) {
            scheduledFuture = this.f21004a.get(abstractRunnableC5979a.mo1397a());
        }
        return scheduledFuture;
    }

    /* renamed from: a */
    public void m3775a(Runnable runnable) {
        m3774a(runnable, 0);
    }

    /* renamed from: a */
    public void m3774a(Runnable runnable, int i) {
        this.f21005a.schedule(runnable, i, TimeUnit.SECONDS);
    }

    /* renamed from: a */
    public boolean m3782a(AbstractRunnableC5979a abstractRunnableC5979a) {
        return m3771b(abstractRunnableC5979a, 0);
    }

    /* renamed from: a */
    public boolean m3781a(AbstractRunnableC5979a abstractRunnableC5979a, int i) {
        return m3780a(abstractRunnableC5979a, i, 0);
    }

    /* renamed from: a */
    public boolean m3780a(AbstractRunnableC5979a abstractRunnableC5979a, int i, int i2) {
        return m3779a(abstractRunnableC5979a, i, i2, false);
    }

    /* renamed from: a */
    public boolean m3779a(AbstractRunnableC5979a abstractRunnableC5979a, int i, int i2, boolean z) {
        if (abstractRunnableC5979a == null || m3783a(abstractRunnableC5979a) != null) {
            return false;
        }
        String m3773a = m3773a(abstractRunnableC5979a.mo1397a());
        C5981al c5981al = new C5981al(this, abstractRunnableC5979a, z, m3773a);
        if (!z) {
            long abs = Math.abs(System.currentTimeMillis() - this.f21002a.getLong(m3773a, 0L)) / 1000;
            if (abs < i - i2) {
                i2 = (int) (i - abs);
            }
        }
        try {
            ScheduledFuture<?> scheduleAtFixedRate = this.f21005a.scheduleAtFixedRate(c5981al, i2, i, TimeUnit.SECONDS);
            synchronized (this.f21003a) {
                this.f21004a.put(abstractRunnableC5979a.mo1397a(), scheduleAtFixedRate);
            }
            return true;
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
            return true;
        }
    }

    /* renamed from: a */
    public boolean m3772a(String str) {
        synchronized (this.f21003a) {
            ScheduledFuture scheduledFuture = this.f21004a.get(str);
            if (scheduledFuture == null) {
                return false;
            }
            this.f21004a.remove(str);
            return scheduledFuture.cancel(false);
        }
    }

    /* renamed from: b */
    public boolean m3771b(AbstractRunnableC5979a abstractRunnableC5979a, int i) {
        if (abstractRunnableC5979a == null || m3783a(abstractRunnableC5979a) != null) {
            return false;
        }
        ScheduledFuture<?> schedule = this.f21005a.schedule(new C5982am(this, abstractRunnableC5979a), i, TimeUnit.SECONDS);
        synchronized (this.f21003a) {
            this.f21004a.put(abstractRunnableC5979a.mo1397a(), schedule);
        }
        return true;
    }
}
