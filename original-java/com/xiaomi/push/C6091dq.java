package com.xiaomi.push;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.service.C6372ax;

/* renamed from: com.xiaomi.push.dq */
/* loaded from: classes2.dex */
public class C6091dq {

    /* renamed from: a */
    private static volatile C6091dq f21284a;

    /* renamed from: a */
    private Context f21285a;

    /* renamed from: a */
    private InterfaceC6092a f21286a;

    /* renamed from: com.xiaomi.push.dq$a */
    /* loaded from: classes2.dex */
    public interface InterfaceC6092a {
        /* renamed from: a */
        void m3354a();
    }

    private C6091dq(Context context) {
        this.f21285a = context;
    }

    /* renamed from: a */
    public static int m3359a(int i) {
        return Math.max(60, i);
    }

    /* renamed from: a */
    public static C6091dq m3358a(Context context) {
        if (f21284a == null) {
            synchronized (C6091dq.class) {
                if (f21284a == null) {
                    f21284a = new C6091dq(context);
                }
            }
        }
        return f21284a;
    }

    /* renamed from: a */
    private void m3356a(C6372ax c6372ax, C5978ak c5978ak, boolean z) {
        if (c6372ax.m1531a(EnumC6243ia.UploadSwitch.m2484a(), true)) {
            C6096du c6096du = new C6096du(this.f21285a);
            if (z) {
                c5978ak.m3781a((C5978ak.AbstractRunnableC5979a) c6096du, m3359a(c6372ax.m1534a(EnumC6243ia.UploadFrequency.m2484a(), 86400)));
            } else {
                c5978ak.m3782a((C5978ak.AbstractRunnableC5979a) c6096du);
            }
        }
    }

    /* renamed from: a */
    private boolean m3360a() {
        try {
            Context context = this.f21285a;
            if (!(context instanceof Application)) {
                context = context.getApplicationContext();
            }
            ((Application) context).registerActivityLifecycleCallbacks(new C6085dk(this.f21285a, String.valueOf(System.currentTimeMillis() / 1000)));
            return true;
        } catch (Exception e) {
            AbstractC5876b.m4143a(e);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: b */
    public void m3355b() {
        InterfaceC6092a interfaceC6092a;
        C5978ak m3784a = C5978ak.m3784a(this.f21285a);
        C6372ax m1530a = C6372ax.m1530a(this.f21285a);
        SharedPreferences sharedPreferences = this.f21285a.getSharedPreferences("mipush_extra", 0);
        long currentTimeMillis = System.currentTimeMillis();
        long j = sharedPreferences.getLong("first_try_ts", currentTimeMillis);
        if (j == currentTimeMillis) {
            sharedPreferences.edit().putLong("first_try_ts", currentTimeMillis).commit();
        }
        if (Math.abs(currentTimeMillis - j) < 172800000) {
            return;
        }
        m3356a(m1530a, m3784a, false);
        if (m1530a.m1531a(EnumC6243ia.StorageCollectionSwitch.m2484a(), true)) {
            int m3359a = m3359a(m1530a.m1534a(EnumC6243ia.StorageCollectionFrequency.m2484a(), 86400));
            m3784a.m3780a(new C6095dt(this.f21285a, m3359a), m3359a, 0);
        }
        if (C6306l.m1851a(this.f21285a) && (interfaceC6092a = this.f21286a) != null) {
            interfaceC6092a.m3354a();
        }
        if (m1530a.m1531a(EnumC6243ia.ActivityTSSwitch.m2484a(), false)) {
            m3360a();
        }
        m3356a(m1530a, m3784a, true);
    }

    /* renamed from: a */
    public void m3361a() {
        C5978ak.m3784a(this.f21285a).m3775a(new RunnableC6093dr(this));
    }
}
