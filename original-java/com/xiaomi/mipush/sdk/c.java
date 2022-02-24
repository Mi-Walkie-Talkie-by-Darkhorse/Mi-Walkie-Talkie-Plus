package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.autonavi.ae.gmap.maploader.ERROR_CODE;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.Cif;
import com.xiaomi.push.dx;
import com.xiaomi.push.ec;
import com.xiaomi.push.eg;
import com.xiaomi.push.hv;
import com.xiaomi.push.ii;
import com.xiaomi.push.iu;
import com.xiaomi.push.service.ba;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class c implements eg {
    @Override // com.xiaomi.push.eg
    public void a(Context context, HashMap<String, String> hashMap) {
        iu iuVar = new iu();
        iuVar.b(ec.a(context).m231a());
        iuVar.d(ec.a(context).b());
        iuVar.c(Cif.AwakeAppResponse.f527a);
        iuVar.a(ba.a());
        iuVar.f666a = hashMap;
        ao.a(context).a((ao) iuVar, hv.Notification, true, (ii) null, true);
        b.m1a("MoleInfo：\u3000send data in app layer");
    }

    @Override // com.xiaomi.push.eg
    public void b(Context context, HashMap<String, String> hashMap) {
        MiTinyDataClient.upload("category_awake_app", "wake_up_app", 1L, dx.a(hashMap));
        b.m1a("MoleInfo：\u3000send data in app layer");
    }

    @Override // com.xiaomi.push.eg
    public void c(Context context, HashMap<String, String> hashMap) {
        b.m1a("MoleInfo：\u3000" + dx.b(hashMap));
        String str = hashMap.get("awake_info");
        if (String.valueOf((int) ERROR_CODE.CONN_INDOOR_ERROR).equals(hashMap.get("event_type"))) {
            o.a(context, str);
        }
    }
}
