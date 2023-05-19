package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6111dx;
import com.xiaomi.push.C6117ec;
import com.xiaomi.push.C6235ht;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.InterfaceC6121eg;
import java.util.HashMap;

/* renamed from: com.xiaomi.push.service.bj */
/* loaded from: classes2.dex */
public class C6395bj implements InterfaceC6121eg {
    @Override // com.xiaomi.push.InterfaceC6121eg
    /* renamed from: a */
    public void mo1472a(Context context, HashMap<String, String> hashMap) {
        C6263iu c6263iu = new C6263iu();
        c6263iu.m2180b(C6117ec.m3120a(context).m3122a());
        c6263iu.m2173d(C6117ec.m3120a(context).m3111b());
        c6263iu.m2176c(EnumC6248if.AwakeAppResponse.f22236a);
        c6263iu.m2189a(C6377ba.m1518a());
        c6263iu.f22500a = hashMap;
        byte[] m1933a = C6278jf.m1933a(C6346af.m1690a(c6263iu.m2178c(), c6263iu.m2182b(), c6263iu, EnumC6237hv.Notification));
        if (!(context instanceof XMPushService)) {
            AbstractC5876b.m4147a("MoleInfo : context is not correct in pushLayer " + c6263iu.m2196a());
            return;
        }
        AbstractC5876b.m4147a("MoleInfo : send data directly in pushLayer " + c6263iu.m2196a());
        ((XMPushService) context).m1762a(context.getPackageName(), m1933a, true);
    }

    @Override // com.xiaomi.push.InterfaceC6121eg
    /* renamed from: b */
    public void mo1471b(Context context, HashMap<String, String> hashMap) {
        C6235ht m2571a = C6235ht.m2571a(context);
        if (m2571a != null) {
            m2571a.m2568a("category_awake_app", "wake_up_app", 1L, C6111dx.m3154a(hashMap));
        }
    }

    @Override // com.xiaomi.push.InterfaceC6121eg
    /* renamed from: c */
    public void mo1470c(Context context, HashMap<String, String> hashMap) {
        AbstractC5876b.m4147a("MoleInfo：\u3000" + C6111dx.m3152b(hashMap));
    }
}
