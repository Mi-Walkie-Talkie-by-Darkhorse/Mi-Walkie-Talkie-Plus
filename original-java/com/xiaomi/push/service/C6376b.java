package com.xiaomi.push.service;

import com.tencent.connect.common.Constants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C5978ak;
import com.xiaomi.push.C6263iu;
import com.xiaomi.push.C6278jf;
import com.xiaomi.push.EnumC6237hv;
import java.lang.ref.WeakReference;

/* renamed from: com.xiaomi.push.service.b */
/* loaded from: classes2.dex */
public class C6376b extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    private C6263iu f23013a;

    /* renamed from: a */
    private WeakReference<XMPushService> f23014a;

    /* renamed from: a */
    private boolean f23015a;

    public C6376b(C6263iu c6263iu, WeakReference<XMPushService> weakReference, boolean z) {
        this.f23015a = false;
        this.f23013a = c6263iu;
        this.f23014a = weakReference;
        this.f23015a = z;
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        return Constants.VIA_REPORT_TYPE_DATALINE;
    }

    @Override // java.lang.Runnable
    public void run() {
        XMPushService xMPushService;
        WeakReference<XMPushService> weakReference = this.f23014a;
        if (weakReference == null || this.f23013a == null || (xMPushService = weakReference.get()) == null) {
            return;
        }
        this.f23013a.m2189a(C6377ba.m1518a());
        this.f23013a.m2185a(false);
        AbstractC5876b.m4139c("MoleInfo aw_ping : send aw_Ping msg " + this.f23013a.m2196a());
        try {
            String m2178c = this.f23013a.m2178c();
            xMPushService.m1762a(m2178c, C6278jf.m1933a(C6346af.m1690a(m2178c, this.f23013a.m2182b(), this.f23013a, EnumC6237hv.Notification)), this.f23015a);
        } catch (Exception e) {
            AbstractC5876b.m4138d("MoleInfo aw_ping : send help app ping error" + e.toString());
        }
    }
}
