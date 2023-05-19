package com.xiaomi.mipush.sdk;

import android.content.Context;
import android.text.TextUtils;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6260ir;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6306l;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6248if;
import java.util.HashMap;

/* renamed from: com.xiaomi.mipush.sdk.s */
/* loaded from: classes2.dex */
public class C5957s {

    /* renamed from: a */
    private static volatile C5957s f20973a;

    /* renamed from: a */
    private final Context f20974a;

    private C5957s(Context context) {
        this.f20974a = context.getApplicationContext();
    }

    /* renamed from: a */
    private static C5957s m3835a(Context context) {
        if (f20973a == null) {
            synchronized (C5957s.class) {
                if (f20973a == null) {
                    f20973a = new C5957s(context);
                }
            }
        }
        return f20973a;
    }

    /* renamed from: a */
    public static void m3834a(Context context, C6260ir c6260ir) {
        m3835a(context).m3832a(c6260ir, 0, true);
    }

    /* renamed from: a */
    public static void m3833a(Context context, C6260ir c6260ir, boolean z) {
        m3835a(context).m3832a(c6260ir, 1, z);
    }

    /* renamed from: a */
    private void m3832a(C6260ir c6260ir, int i, boolean z) {
        if (C6306l.m1851a(this.f20974a) || !C6306l.m1853a() || c6260ir == null || c6260ir.f22464a != EnumC6237hv.SendMessage || c6260ir.m2233a() == null || !z) {
            return;
        }
        AbstractC5876b.m4147a("click to start activity result:" + String.valueOf(i));
        C6263iu c6263iu = new C6263iu(c6260ir.m2233a().m2402a(), false);
        c6263iu.m2176c(EnumC6248if.SDK_START_ACTIVITY.f22236a);
        c6263iu.m2180b(c6260ir.m2232a());
        c6263iu.m2173d(c6260ir.f22471b);
        HashMap hashMap = new HashMap();
        c6263iu.f22500a = hashMap;
        hashMap.put("result", String.valueOf(i));
        C5928ao.m3984a(this.f20974a).m3963a(c6263iu, EnumC6237hv.Notification, false, false, null, true, c6260ir.f22471b, c6260ir.f22467a, true, false);
    }

    /* renamed from: b */
    public static void m3831b(Context context, C6260ir c6260ir, boolean z) {
        m3835a(context).m3832a(c6260ir, 2, z);
    }

    /* renamed from: c */
    public static void m3830c(Context context, C6260ir c6260ir, boolean z) {
        m3835a(context).m3832a(c6260ir, 3, z);
    }

    /* renamed from: d */
    public static void m3829d(Context context, C6260ir c6260ir, boolean z) {
        m3835a(context).m3832a(c6260ir, 4, z);
    }

    /* renamed from: e */
    public static void m3828e(Context context, C6260ir c6260ir, boolean z) {
        C5957s m3835a;
        int i;
        C5938b m3923a = C5938b.m3923a(context);
        if (TextUtils.isEmpty(m3923a.m3910c()) || TextUtils.isEmpty(m3923a.m3907d())) {
            m3835a = m3835a(context);
            i = 6;
        } else {
            boolean m3902f = m3923a.m3902f();
            m3835a = m3835a(context);
            i = m3902f ? 7 : 5;
        }
        m3835a.m3832a(c6260ir, i, z);
    }
}
