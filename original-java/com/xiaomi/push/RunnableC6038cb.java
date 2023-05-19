package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.push.C6045ci;
import java.lang.ref.WeakReference;

/* renamed from: com.xiaomi.push.cb */
/* loaded from: classes2.dex */
public class RunnableC6038cb implements Runnable {

    /* renamed from: a */
    private String f21147a;

    /* renamed from: a */
    private WeakReference<Context> f21148a;

    public RunnableC6038cb(String str, WeakReference<Context> weakReference) {
        this.f21147a = str;
        this.f21148a = weakReference;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        WeakReference<Context> weakReference = this.f21148a;
        if (weakReference == null || (context = weakReference.get()) == null) {
            return;
        }
        if (C6056co.m3494a(this.f21147a) <= C6037ca.f21145a) {
            AbstractC5876b.m4141b("=====> do not need clean db");
            return;
        }
        C6041ce m3524a = C6041ce.m3524a(this.f21147a);
        C6040cd m3525a = C6040cd.m3525a(this.f21147a);
        m3524a.m3506a(m3525a);
        m3525a.m3506a(C6039cc.m3526a(context, this.f21147a, XiaomiOAuthConstants.SCOPE_ACCESS_MI_ROUTER));
        C6045ci.m3519a(context).m3518a((C6045ci.AbstractRunnableC6046a) m3524a);
    }
}
