package com.xiaomi.push;

import android.content.Context;
import com.xiaomi.channel.commonutils.logger.AbstractC5876b;
import com.xiaomi.clientreport.manager.C5880a;
import com.xiaomi.push.C5978ak;

/* renamed from: com.xiaomi.push.bq */
/* loaded from: classes2.dex */
public class C6025bq extends C5978ak.AbstractRunnableC5979a {

    /* renamed from: a */
    private Context f21119a;

    public C6025bq(Context context) {
        this.f21119a = context;
    }

    /* renamed from: a */
    private boolean m3607a() {
        return C5880a.m4132a(this.f21119a).m4135a().isPerfUploadSwitchOpen();
    }

    @Override // com.xiaomi.push.C5978ak.AbstractRunnableC5979a
    /* renamed from: a */
    public String mo1397a() {
        return "100887";
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (m3607a()) {
                C5880a.m4132a(this.f21119a).m4114c();
                AbstractC5876b.m4139c(this.f21119a.getPackageName() + " perf begin upload");
            }
        } catch (Exception e) {
            AbstractC5876b.m4138d("fail to send perf data. " + e);
        }
    }
}
