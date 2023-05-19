package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.push.service.C6372ax;

/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.xiaomi.push.ep */
/* loaded from: classes2.dex */
public class C6131ep {

    /* renamed from: a */
    public static int f21449a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static AbstractC6136eu m3072a(Context context) {
        int m1534a = C6372ax.m1530a(context).m1534a(EnumC6243ia.HeartbeatPolicyInt.m2484a(), 0);
        if (!C6306l.m1853a()) {
            m1534a = 1;
        }
        f21449a = m1534a;
        return m1534a != 0 ? m1534a != 1 ? m1534a != 2 ? new C6144fa(context) : new C6145fb(context) : new C6142ez(context) : new C6144fa(context);
    }
}
