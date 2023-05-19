package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.autonavi.p090ae.gmap.maploader.ERROR_CODE;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6111dx;
import com.xiaomi.push.C6117ec;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.InterfaceC6121eg;
import com.xiaomi.push.service.C6377ba;
import java.util.HashMap;

/* renamed from: com.xiaomi.mipush.sdk.c */
/* loaded from: classes2.dex */
public class C5940c implements InterfaceC6121eg {
    @Override // com.xiaomi.push.InterfaceC6121eg
    /* renamed from: a */
    public void mo1472a(Context context, HashMap<String, String> hashMap) {
        C6263iu c6263iu = new C6263iu();
        c6263iu.m2180b(C6117ec.m3120a(context).m3122a());
        c6263iu.m2173d(C6117ec.m3120a(context).m3111b());
        c6263iu.m2176c(EnumC6248if.AwakeAppResponse.f22236a);
        c6263iu.m2189a(C6377ba.m1518a());
        c6263iu.f22500a = hashMap;
        C5928ao.m3984a(context).m3967a((C5928ao) c6263iu, EnumC6237hv.Notification, true, (C6251ii) null, true);
        AbstractC5876b.m4147a("MoleInfo：\u3000send data in app layer");
    }

    @Override // com.xiaomi.push.InterfaceC6121eg
    /* renamed from: b */
    public void mo1471b(Context context, HashMap<String, String> hashMap) {
        MiTinyDataClient.upload("category_awake_app", "wake_up_app", 1L, C6111dx.m3154a(hashMap));
        AbstractC5876b.m4147a("MoleInfo：\u3000send data in app layer");
    }

    @Override // com.xiaomi.push.InterfaceC6121eg
    /* renamed from: c */
    public void mo1470c(Context context, HashMap<String, String> hashMap) {
        AbstractC5876b.m4147a("MoleInfo：\u3000" + C6111dx.m3152b(hashMap));
        String str = hashMap.get("awake_info");
        if (String.valueOf((int) ERROR_CODE.CONN_INDOOR_ERROR).equals(hashMap.get("event_type"))) {
            C5953o.m3837a(context, str);
        }
    }
}
