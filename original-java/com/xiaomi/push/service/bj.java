package com.xiaomi.push.service;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.b;
import com.xiaomi.push.Cif;
import com.xiaomi.push.dx;
import com.xiaomi.push.ec;
import com.xiaomi.push.eg;
import com.xiaomi.push.ht;
import com.xiaomi.push.hv;
import com.xiaomi.push.iu;
import com.xiaomi.push.jf;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class bj implements eg {
    @Override // com.xiaomi.push.eg
    public void a(Context context, HashMap<String, String> hashMap) {
        iu iuVar = new iu();
        iuVar.b(ec.a(context).m231a());
        iuVar.d(ec.a(context).b());
        iuVar.c(Cif.AwakeAppResponse.f527a);
        iuVar.a(ba.a());
        iuVar.f666a = hashMap;
        byte[] a2 = jf.a(af.a(iuVar.c(), iuVar.b(), iuVar, hv.Notification));
        if (context instanceof XMPushService) {
            b.m1a("MoleInfo : send data directly in pushLayer " + iuVar.m445a());
            ((XMPushService) context).a(context.getPackageName(), a2, true);
            return;
        }
        b.m1a("MoleInfo : context is not correct in pushLayer " + iuVar.m445a());
    }

    @Override // com.xiaomi.push.eg
    public void b(Context context, HashMap<String, String> hashMap) {
        ht a2 = ht.a(context);
        if (a2 != null) {
            a2.a("category_awake_app", "wake_up_app", 1L, dx.a(hashMap));
        }
    }

    @Override // com.xiaomi.push.eg
    public void c(Context context, HashMap<String, String> hashMap) {
        b.m1a("MoleInfo：\u3000" + dx.b(hashMap));
    }
}
