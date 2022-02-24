package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.Cif;
import com.xiaomi.push.hv;
import com.xiaomi.push.ii;
import com.xiaomi.push.iu;
import com.xiaomi.push.service.ba;

/* loaded from: classes2.dex */
public class MiPushClient4VR {
    public static void uploadData(Context context, String str) {
        iu iuVar = new iu();
        iuVar.c(Cif.VRUpload.f527a);
        iuVar.b(b.m36a(context).m37a());
        iuVar.d(context.getPackageName());
        iuVar.a("data", str);
        iuVar.a(ba.a());
        ao.a(context).a((ao) iuVar, hv.Notification, (ii) null);
    }
}
