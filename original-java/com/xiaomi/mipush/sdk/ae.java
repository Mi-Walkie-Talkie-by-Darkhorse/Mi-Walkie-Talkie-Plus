package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.Cif;
import com.xiaomi.push.ak;
import com.xiaomi.push.hv;
import com.xiaomi.push.ib;
import com.xiaomi.push.ii;
import com.xiaomi.push.in;
import com.xiaomi.push.iu;
import com.xiaomi.push.jf;
import com.xiaomi.push.service.ax;
import com.xiaomi.push.service.ay;

/* loaded from: classes2.dex */
public class ae extends ak.a {

    /* renamed from: a  reason: collision with root package name */
    private Context f8680a;

    public ae(Context context) {
        this.f8680a = context;
    }

    @Override // com.xiaomi.push.ak.a
    /* renamed from: a */
    public String mo168a() {
        return "2";
    }

    @Override // java.lang.Runnable
    public void run() {
        ax a2 = ax.a(this.f8680a);
        in inVar = new in();
        inVar.a(ay.a(a2, ib.MISC_CONFIG));
        inVar.b(ay.a(a2, ib.PLUGIN_CONFIG));
        iu iuVar = new iu("-1", false);
        iuVar.c(Cif.DailyCheckClientConfig.f527a);
        iuVar.a(jf.a(inVar));
        ao.a(this.f8680a).a((ao) iuVar, hv.Notification, (ii) null);
    }
}
