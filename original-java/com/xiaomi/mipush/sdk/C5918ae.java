package com.xiaomi.mipush.sdk;

import android.content.Context;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6251ii;
import com.xiaomi.push.C6256in;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.EnumC6237hv;
import com.xiaomi.push.EnumC6244ib;
import com.xiaomi.push.EnumC6248if;
import com.xiaomi.push.service.C6372ax;
import com.xiaomi.push.service.C6374ay;

/* renamed from: com.xiaomi.mipush.sdk.ae */
/* loaded from: classes2.dex */
public class C5918ae extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    private Context f20881a;

    public C5918ae(Context context) {
        this.f20881a = context;
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        return "2";
    }

    @Override // java.lang.Runnable
    public void run() {
        C6372ax m1530a = C6372ax.m1530a(this.f20881a);
        C6256in c6256in = new C6256in();
        c6256in.m2288a(C6374ay.m1522a(m1530a, EnumC6244ib.MISC_CONFIG));
        c6256in.m2283b(C6374ay.m1522a(m1530a, EnumC6244ib.PLUGIN_CONFIG));
        C6263iu c6263iu = new C6263iu("-1", false);
        c6263iu.m2176c(EnumC6248if.DailyCheckClientConfig.f22236a);
        c6263iu.m2183a(C6278jf.m1933a(c6256in));
        C5928ao.m3984a(this.f20881a).m3970a((C5928ao) c6263iu, EnumC6237hv.Notification, (C6251ii) null);
    }
}
