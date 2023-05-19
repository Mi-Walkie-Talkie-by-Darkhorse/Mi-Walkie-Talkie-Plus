package com.xiaomi.push.service;

import android.content.Context;
import android.content.SharedPreferences;
import com.xiaomi.mipush.sdk.Constants;
import com.xiaomi.push.C5975ah;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6013bi;
import com.xiaomi.push.C6314s;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: com.xiaomi.push.service.bu */
/* loaded from: classes2.dex */
public final class C6407bu implements InterfaceC6358ao {

    /* renamed from: a */
    private static volatile C6407bu f23131a;

    /* renamed from: a */
    private long f23132a;

    /* renamed from: a */
    Context f23133a;

    /* renamed from: a */
    private SharedPreferences f23134a;

    /* renamed from: a */
    private volatile boolean f23136a = false;

    /* renamed from: a */
    private ConcurrentHashMap<String, AbstractRunnableC6408a> f23135a = new ConcurrentHashMap<>();

    /* renamed from: com.xiaomi.push.service.bu$a */
    /* loaded from: classes2.dex */
    public static abstract class AbstractRunnableC6408a implements Runnable {

        /* renamed from: a */
        long f23137a;

        /* renamed from: a */
        String f23138a;

        /* JADX INFO: Access modifiers changed from: package-private */
        public AbstractRunnableC6408a(String str, long j) {
            this.f23138a = str;
            this.f23137a = j;
        }

        /* renamed from: a */
        abstract void mo1420a(C6407bu c6407bu);

        @Override // java.lang.Runnable
        public void run() {
            if (C6407bu.f23131a != null) {
                Context context = C6407bu.f23131a.f23133a;
                if (C6013bi.m3660d(context)) {
                    long currentTimeMillis = System.currentTimeMillis();
                    SharedPreferences sharedPreferences = C6407bu.f23131a.f23134a;
                    if (currentTimeMillis - sharedPreferences.getLong(":ts-" + this.f23138a, 0L) > this.f23137a || C5975ah.m3790a(context)) {
                        SharedPreferences.Editor edit = C6407bu.f23131a.f23134a.edit();
                        C6314s.m1816a(edit.putLong(":ts-" + this.f23138a, System.currentTimeMillis()));
                        mo1420a(C6407bu.f23131a);
                    }
                }
            }
        }
    }

    private C6407bu(Context context) {
        this.f23133a = context.getApplicationContext();
        this.f23134a = context.getSharedPreferences("sync", 0);
    }

    /* renamed from: a */
    public static C6407bu m1427a(Context context) {
        if (f23131a == null) {
            synchronized (C6407bu.class) {
                if (f23131a == null) {
                    f23131a = new C6407bu(context);
                }
            }
        }
        return f23131a;
    }

    /* renamed from: a */
    public String m1422a(String str, String str2) {
        SharedPreferences sharedPreferences = this.f23134a;
        return sharedPreferences.getString(str + Constants.COLON_SEPARATOR + str2, "");
    }

    @Override // com.xiaomi.push.service.InterfaceC6358ao
    /* renamed from: a */
    public void mo1428a() {
        if (this.f23136a) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - this.f23132a < 3600000) {
            return;
        }
        this.f23132a = currentTimeMillis;
        this.f23136a = true;
        C5978ak.m3784a(this.f23133a).m3774a(new RunnableC6409bv(this), (int) (Math.random() * 10.0d));
    }

    /* renamed from: a */
    public void m1426a(AbstractRunnableC6408a abstractRunnableC6408a) {
        if (this.f23135a.putIfAbsent(abstractRunnableC6408a.f23138a, abstractRunnableC6408a) == null) {
            C5978ak.m3784a(this.f23133a).m3774a(abstractRunnableC6408a, ((int) (Math.random() * 30.0d)) + 10);
        }
    }

    /* renamed from: a */
    public void m1421a(String str, String str2, String str3) {
        SharedPreferences.Editor edit = f23131a.f23134a.edit();
        C6314s.m1816a(edit.putString(str + Constants.COLON_SEPARATOR + str2, str3));
    }
}
