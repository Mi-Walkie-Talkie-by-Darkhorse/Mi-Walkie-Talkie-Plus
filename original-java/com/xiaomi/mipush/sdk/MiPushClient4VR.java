package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.service.C6377ba;

/* loaded from: classes2.dex */
public class MiPushClient4VR {
    public static void uploadData(Context context, String str) {
        C6263iu c6263iu = new C6263iu();
        c6263iu.m2176c(EnumC6248if.VRUpload.f22236a);
        c6263iu.m2180b(C5938b.m3923a(context).m3928a());
        c6263iu.m2173d(context.getPackageName());
        c6263iu.m2188a("data", str);
        c6263iu.m2189a(C6377ba.m1518a());
        C5928ao.m3984a(context).m3970a((C5928ao) c6263iu, EnumC6237hv.Notification, (C6251ii) null);
    }
}
