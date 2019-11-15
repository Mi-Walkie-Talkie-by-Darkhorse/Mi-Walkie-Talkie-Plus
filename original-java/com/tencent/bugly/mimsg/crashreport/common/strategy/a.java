package com.tencent.bugly.mimsg.crashreport.common.strategy;

import android.content.Context;
import android.os.Parcelable;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.tencent.bugly.mimsg.crashreport.biz.b;
import com.tencent.bugly.mimsg.proguard.ap;
import com.tencent.bugly.mimsg.proguard.o;
import com.tencent.bugly.mimsg.proguard.p;
import com.tencent.bugly.mimsg.proguard.r;
import com.tencent.bugly.mimsg.proguard.w;
import com.tencent.bugly.mimsg.proguard.x;
import com.tencent.bugly.mimsg.proguard.z;
import java.util.List;
import java.util.Map;

/* compiled from: BUGLY */
public final class a {
    public static int a = 1000;
    private static a b = null;
    private static String h = null;
    private final List<com.tencent.bugly.mimsg.a> c;
    private final w d;
    private final StrategyBean e;
    /* access modifiers changed from: private */
    public StrategyBean f = null;
    /* access modifiers changed from: private */
    public Context g;

    static /* synthetic */ String e() {
        return null;
    }

    private a(Context context, List<com.tencent.bugly.mimsg.a> list) {
        this.g = context;
        this.e = new StrategyBean();
        this.c = list;
        this.d = w.a();
    }

    public static synchronized a a(Context context, List<com.tencent.bugly.mimsg.a> list) {
        a aVar;
        synchronized (a.class) {
            if (b == null) {
                b = new a(context, list);
            }
            aVar = b;
        }
        return aVar;
    }

    public final void a(long j) {
        this.d.a(new Thread() {
            public final void run() {
                try {
                    Map a2 = p.a().a(a.a, (o) null, true);
                    if (a2 != null) {
                        byte[] bArr = (byte[]) a2.get("key_imei");
                        byte[] bArr2 = (byte[]) a2.get("key_ip");
                        if (bArr != null) {
                            com.tencent.bugly.mimsg.crashreport.common.info.a.a(a.this.g).e(new String(bArr));
                        }
                        if (bArr2 != null) {
                            com.tencent.bugly.mimsg.crashreport.common.info.a.a(a.this.g).d(new String(bArr2));
                        }
                    }
                    a aVar = a.this;
                    a aVar2 = a.this;
                    aVar.f = a.d();
                    if (a.this.f != null && !z.a(a.e()) && z.c(a.e())) {
                        a.this.f.r = a.e();
                        a.this.f.s = a.e();
                    }
                } catch (Throwable th) {
                    if (!x.a(th)) {
                        ThrowableExtension.printStackTrace(th);
                    }
                }
                a.this.a(a.this.f, false);
            }
        }, j);
    }

    public static synchronized a a() {
        a aVar;
        synchronized (a.class) {
            aVar = b;
        }
        return aVar;
    }

    public final synchronized boolean b() {
        return this.f != null;
    }

    public final StrategyBean c() {
        if (this.f != null) {
            return this.f;
        }
        return this.e;
    }

    /* access modifiers changed from: protected */
    public final void a(StrategyBean strategyBean, boolean z) {
        x.c("[Strategy] Notify %s", b.class.getName());
        b.a(strategyBean, z);
        for (com.tencent.bugly.mimsg.a aVar : this.c) {
            try {
                x.c("[Strategy] Notify %s", aVar.getClass().getName());
                aVar.onServerStrategyChanged(strategyBean);
            } catch (Throwable th) {
                if (!x.a(th)) {
                    ThrowableExtension.printStackTrace(th);
                }
            }
        }
    }

    public final void a(ap apVar) {
        if (apVar != null) {
            if (this.f == null || apVar.h != this.f.p) {
                StrategyBean strategyBean = new StrategyBean();
                strategyBean.g = apVar.a;
                strategyBean.i = apVar.c;
                strategyBean.h = apVar.b;
                if (z.a((String) null) || !z.c((String) null)) {
                    if (z.c(apVar.d)) {
                        x.c("[Strategy] Upload url changes to %s", apVar.d);
                        strategyBean.r = apVar.d;
                    }
                    if (z.c(apVar.e)) {
                        x.c("[Strategy] Exception upload url changes to %s", apVar.e);
                        strategyBean.s = apVar.e;
                    }
                }
                if (apVar.f != null && !z.a(apVar.f.a)) {
                    strategyBean.u = apVar.f.a;
                }
                if (apVar.h != 0) {
                    strategyBean.p = apVar.h;
                }
                if (apVar.g != null && apVar.g.size() > 0) {
                    strategyBean.v = apVar.g;
                    String str = (String) apVar.g.get("B11");
                    if (str == null || !str.equals("1")) {
                        strategyBean.j = false;
                    } else {
                        strategyBean.j = true;
                    }
                    String str2 = (String) apVar.g.get("B3");
                    if (str2 != null) {
                        strategyBean.y = Long.valueOf(str2).longValue();
                    }
                    strategyBean.q = (long) apVar.i;
                    strategyBean.x = (long) apVar.i;
                    String str3 = (String) apVar.g.get("B27");
                    if (str3 != null && str3.length() > 0) {
                        try {
                            int parseInt = Integer.parseInt(str3);
                            if (parseInt > 0) {
                                strategyBean.w = parseInt;
                            }
                        } catch (Exception e2) {
                            if (!x.a(e2)) {
                                ThrowableExtension.printStackTrace(e2);
                            }
                        }
                    }
                    String str4 = (String) apVar.g.get("B25");
                    if (str4 == null || !str4.equals("1")) {
                        strategyBean.l = false;
                    } else {
                        strategyBean.l = true;
                    }
                }
                x.a("[Strategy] enableCrashReport:%b, enableQuery:%b, enableUserInfo:%b, enableAnr:%b, enableBlock:%b, enableSession:%b, enableSessionTimer:%b, sessionOverTime:%d, enableCocos:%b, strategyLastUpdateTime:%d", Boolean.valueOf(strategyBean.g), Boolean.valueOf(strategyBean.i), Boolean.valueOf(strategyBean.h), Boolean.valueOf(strategyBean.j), Boolean.valueOf(strategyBean.k), Boolean.valueOf(strategyBean.n), Boolean.valueOf(strategyBean.o), Long.valueOf(strategyBean.q), Boolean.valueOf(strategyBean.l), Long.valueOf(strategyBean.p));
                this.f = strategyBean;
                p.a().b(2);
                r rVar = new r();
                rVar.b = 2;
                rVar.a = strategyBean.e;
                rVar.e = strategyBean.f;
                rVar.g = z.a((Parcelable) strategyBean);
                p.a().a(rVar);
                a(strategyBean, true);
            }
        }
    }

    public static StrategyBean d() {
        List a2 = p.a().a(2);
        if (a2 != null && a2.size() > 0) {
            r rVar = (r) a2.get(0);
            if (rVar.g != null) {
                return (StrategyBean) z.a(rVar.g, StrategyBean.CREATOR);
            }
        }
        return null;
    }
}
